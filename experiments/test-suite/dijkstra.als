open util/ordering [State] as so
open util/ordering [Mutex] as mo
pred test1 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
}}}

}
run test1 for 3
pred test2 {
some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
no Process
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
no holds
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
}}

}
run test2 for 3
pred test3 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
}}}

}
run test3 for 3
pred test4 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process1->Mutex0 + State0->Process1->Mutex2 + State1->Process1->Mutex2 + State2->Process1->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Initial[State1]
}}}

}
run test4 for 3
pred test5 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State2->Process0->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Initial[State1]
}}}

}
run test5 for 3
pred test6 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Initial[State2]
}}}

}
run test6 for 3
pred test7 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Initial[State0]
}}}

}
run test7 for 3
pred test8 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Initial[State2]
}}}

}
run test8 for 3
pred test9 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
IsFree[State2,Mutex2]
}}}

}
run test9 for 3
pred test10 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
IsStalled[State0,Process0]
}}}

}
run test10 for 3
pred test11 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
IsStalled[State2,Process0]
}}}

}
run test11 for 3
pred test12 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process0,Mutex2,State2]
}}}

}
run test12 for 3
pred test13 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex1,State1]
}}}

}
run test13 for 3
pred test14 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex2,State1]
}}}

}
run test14 for 3
pred test15 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process1->Mutex2 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex2,State1]
}}}

}
run test15 for 3
pred test16 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex2 + State2->Process1->Mutex0
waits = State0->Process0->Mutex1 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex1,State1]
}}}

}
run test16 for 3
pred test17 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process2->Mutex0 + State0->Process2->Mutex1 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process2->Mutex0 + State1->Process2->Mutex1 + State2->Process1->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process2->Mutex2 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process2,Mutex2,State0]
}}}

}
run test17 for 3
pred test18 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State1->Process0->Mutex1
waits = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process0,Mutex1,State0]
}}}

}
run test18 for 3
pred test19 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex0,State1]
}}}

}
run test19 for 3
pred test20 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex0,State0]
}}}

}
run test20 for 3
pred test21 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex0,State1]
}}}

}
run test21 for 3
pred test22 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex0
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process1,Mutex0,State2]
}}}

}
run test22 for 3
pred test23 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex0,State2]
}}}

}
run test23 for 3
pred test24 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process1->Mutex1 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex1,State1]
}}}

}
run test24 for 3
pred test25 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex2,State2]
}}}

}
run test25 for 3
pred test26 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex0,State0]
}}}

}
run test26 for 3
pred test27 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex2 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process1,Mutex2,State0]
}}}

}
run test27 for 3
pred test28 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State1->Process0->Mutex2 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process1,Mutex2,State2]
}}}

}
run test28 for 3
pred test29 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process0,Mutex2,State1]
}}}

}
run test29 for 3
pred test30 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
waits = State0->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process0,Mutex2,State1]
}}}

}
run test30 for 3
pred test31 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State2,Process1,Mutex2,State1]
}}}

}
run test31 for 3
pred test32 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex2,State2]
}}}

}
run test32 for 3
pred test33 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process1,Mutex2,State2]
}}}

}
run test33 for 3
pred test34 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex0
waits = State0->Process0->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex0,State2]
}}}

}
run test34 for 3
pred test35 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process1->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State1,Process1,Mutex2,State0]
}}}

}
run test35 for 3
pred test36 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2 + State2->Process1->Mutex1
waits = State0->Process0->Mutex0 + State1->Process1->Mutex0 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabMutex[State0,Process1,Mutex1,State2]
}}}

}
run test36 for 3
pred test37 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex0,State2]
}}}

}
run test37 for 3
pred test38 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State0,Process0,Mutex1,State2]
}}}

}
run test38 for 3
pred test39 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex1,State1]
}}}

}
run test39 for 3
pred test40 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test40 for 3
pred test41 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test41 for 3
pred test42 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex1,State1]
}}}

}
run test42 for 3
pred test43 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test43 for 3
pred test44 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex1 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State2->Process1->Mutex0
waits = State0->Process1->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State1,Process1,Mutex1,State2]
}}}

}
run test44 for 3
pred test45 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test45 for 3
pred test46 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test46 for 3
pred test47 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process1->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex1,State1]
}}}

}
run test47 for 3
pred test48 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex1 + State2->Process0->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State0,Process1,Mutex1,State2]
}}}

}
run test48 for 3
pred test49 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex0 + State0->Process2->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex2 + State2->Process0->Mutex1 + State2->Process1->Mutex0 + State2->Process1->Mutex2 + State2->Process2->Mutex1
waits = State0->Process1->Mutex0 + State0->Process2->Mutex1 + State0->Process2->Mutex2 + State1->Process1->Mutex0 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process2,Mutex1,State1]
}}}

}
run test49 for 3
pred test50 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process2->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex2 + State2->Process0->Mutex1 + State2->Process1->Mutex0 + State2->Process1->Mutex2 + State2->Process2->Mutex1
waits = State0->Process1->Mutex0 + State0->Process2->Mutex1 + State0->Process2->Mutex2 + State1->Process1->Mutex0 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process2,Mutex1,State1]
}}}

}
run test50 for 3
pred test51 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State1->Process1->Mutex1 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State0,Process1,Mutex0,State2]
}}}

}
run test51 for 3
pred test52 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex0 + State1->Process1->Mutex0 + State1->Process2->Mutex0 + State2->Process0->Mutex0
waits = State0->Process2->Mutex2 + State1->Process0->Mutex0 + State1->Process1->Mutex0 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State1,Process2,Mutex0,State2]
}}}

}
run test52 for 3
pred test53 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex1 + State1->Process1->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State1->Process1->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State0]
}}}

}
run test53 for 3
pred test54 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State2->Process0->Mutex0 + State2->Process1->Mutex0
waits = State0->Process1->Mutex0 + State2->Process0->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex0,State1]
}}}

}
run test54 for 3
pred test55 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State1->Process0->Mutex2 + State2->Process1->Mutex2
waits = State0->Process1->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test55 for 3
pred test56 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex0 + State0->Process2->Mutex1 + State1->Process0->Mutex0 + State2->Process1->Mutex0 + State2->Process2->Mutex0
waits = State0->Process0->Mutex0 + State0->Process2->Mutex1 + State0->Process2->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process2,Mutex0,State1]
}}}

}
run test56 for 3
pred test57 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process1->Mutex2 + State0->Process2->Mutex0 + State0->Process2->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State2->Process0->Mutex2 + State2->Process1->Mutex0 + State2->Process2->Mutex0
waits = State0->Process2->Mutex0 + State0->Process2->Mutex2 + State2->Process0->Mutex0 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process2,Mutex0,State1]
}}}

}
run test57 for 3
pred test58 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex2 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2
waits = State1->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State1,Process1,Mutex2,State0]
}}}

}
run test58 for 3
pred test59 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process1->Mutex1 + State2->Process0->Mutex1
waits = State0->Process1->Mutex2 + State1->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State1,Process1,Mutex1,State2]
}}}

}
run test59 for 3
pred test60 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test60 for 3
pred test61 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State0,Process1,Mutex1,State2]
}}}

}
run test61 for 3
pred test62 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex2 + State2->Process1->Mutex1 + State2->Process2->Mutex2
waits = State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process2->Mutex0 + State1->Process2->Mutex1 + State1->Process2->Mutex2 + State2->Process0->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process2,Mutex2,State0]
}}}

}
run test62 for 3
pred test63 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex1 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State0]
}}}

}
run test63 for 3
pred test64 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test64 for 3
pred test65 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State2->Process1->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State2,Process1,Mutex2,State1]
}}}

}
run test65 for 3
pred test66 {
some disj Process0, Process1, Process2: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1 + Process2
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process2->Mutex1 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2 + State2->Process2->Mutex0 + State2->Process2->Mutex1
waits = State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex1 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex1 + State2->Process1->Mutex0
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ReleaseMutex[State1,Process2,Mutex1,State0]
}}}

}
run test66 for 3
pred test67 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test67 for 3
pred test68 {
some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
no Process
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
no holds
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}

}
run test68 for 3
pred test69 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test69 for 3
pred test70 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex2
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test70 for 3
pred test71 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test71 for 3
pred test72 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
no holds
waits = State1->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test72 for 3
pred test73 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State2->Process0->Mutex0
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test73 for 3
pred test74 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State1->Process0->Mutex2 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test74 for 3
pred test75 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex2
no waits
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test75 for 3
pred test76 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0
waits = State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
GrabOrRelease[]
}}}

}
run test76 for 3
pred test77 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test77 for 3
pred test78 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test78 for 3
pred test79 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test79 for 3
pred test80 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State0->Process1->Mutex1 + State0->Process1->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State1->Process1->Mutex1 + State1->Process1->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex2 + State2->Process1->Mutex0 + State2->Process1->Mutex1
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test80 for 3
pred test81 {
some disj Process0, Process1: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0 + Process1
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex1 + State0->Process0->Mutex2 + State0->Process1->Mutex0 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex2 + State0->Process1->Mutex1 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State1->Process1->Mutex0 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process1->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test81 for 3
pred test82 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
Deadlock[]
}}}

}
run test82 for 3
pred test83 {
some disj Process0: Process {some disj Mutex0, Mutex1, Mutex2: Mutex {some disj State0, State1, State2: State {
Process = Process0
Mutex = Mutex0 + Mutex1 + Mutex2
State = State0 + State1 + State2
holds = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1 + State2->Process0->Mutex2
waits = State0->Process0->Mutex0 + State0->Process0->Mutex1 + State0->Process0->Mutex2 + State1->Process0->Mutex0 + State1->Process0->Mutex1 + State1->Process0->Mutex2 + State2->Process0->Mutex0 + State2->Process0->Mutex1
so/first = State0
so/next = State0->State1 + State1->State2
mo/first = Mutex0
mo/next = Mutex0->Mutex1 + Mutex1->Mutex2
ShowDijkstra[]
}}}

}
run test83 for 3
