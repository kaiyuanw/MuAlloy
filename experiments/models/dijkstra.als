module dijkstra

open util/ordering [State] as so
open util/ordering [Mutex] as mo

sig Process {}
sig Mutex {}

sig State { holds, waits: Process -> Mutex }

pred Initial [s: State]  { no s.holds + s.waits }

pred IsFree [s: State, m: Mutex] {
   no m.~(s.holds)
}

pred IsStalled [s: State, p: Process] { some p.(s.waits) }

pred GrabMutex [s: State, p: Process, m: Mutex, s': State] {
   !s.IsStalled[p]
   m !in p.(s.holds)
   all m': p.(s.holds) | mo/lt[m',m]
   s.IsFree[m] => {
      p.(s'.holds) = p.(s.holds) + m
      no p.(s'.waits)
   } else {
    p.(s'.holds) = p.(s.holds)
    p.(s'.waits) = m
  }
  all otherProc: Process - p | {
     otherProc.(s'.holds) = otherProc.(s.holds)
     otherProc.(s'.waits) = otherProc.(s.waits)
  }
}

pred ReleaseMutex [s: State, p: Process, m: Mutex, s': State] {
   !s.IsStalled[p]
   m in p.(s.holds)
   p.(s'.holds) = p.(s.holds) - m
   no p.(s'.waits)
   no m.~(s.waits) => {
      no m.~(s'.holds)
      no m.~(s'.waits)
   } else {
      some lucky: m.~(s.waits) | {
        m.~(s'.waits) = m.~(s.waits) - lucky
        m.~(s'.holds) = lucky
      }
   }
  all mu: Mutex - m {
    mu.~(s'.waits) = mu.~(s.waits)
    mu.~(s'.holds)= mu.~(s.holds)
  }
}

pred GrabOrRelease  {
    Initial[so/first] &&
    (
    all pre: State - so/last  | let post = so/next [pre] |
       (post.holds = pre.holds && post.waits = pre.waits)
        ||
       (some p: Process, m: Mutex | pre.GrabMutex [p, m, post])
        ||
       (some p: Process, m: Mutex | pre.ReleaseMutex [p, m, post])
    )
}

pred Deadlock  {
         some Process
         some s: State | all p: Process | some p.(s.waits)
}

assert DijkstraPreventsDeadlocks {
   GrabOrRelease => ! Deadlock
}

pred ShowDijkstra  {
    GrabOrRelease && Deadlock
    some waits
}

run Deadlock for 3 expect 1
run ShowDijkstra for 5 State, 2 Process, 2 Mutex expect 1
check DijkstraPreventsDeadlocks for 5 State, 5 Process, 4 Mutex expect 0
