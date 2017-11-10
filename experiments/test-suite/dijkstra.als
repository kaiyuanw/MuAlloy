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
run test3 for 3
pred test4 {
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
run test4 for 3
pred test5 {
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
}}}
}
run test6 for 3
pred test7 {
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
run test7 for 3
pred test8 {
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
run test8 for 3
pred test9 {
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
Initial[State2]
}}}
}
run test10 for 3
pred test11 {
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
run test11 for 3
pred test12 {
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
run test12 for 3
pred test13 {
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
run test13 for 3
pred test14 {
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
run test14 for 3
pred test15 {
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
run test15 for 3
pred test16 {
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
run test16 for 3
pred test17 {
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
run test17 for 3
pred test18 {
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
run test18 for 3
pred test19 {
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
run test19 for 3
pred test20 {
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
run test20 for 3
pred test21 {
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
run test21 for 3
pred test22 {
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
run test22 for 3
pred test23 {
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
run test23 for 3
pred test24 {
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
run test24 for 3
pred test25 {
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
run test25 for 3
pred test26 {
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
run test26 for 3
pred test27 {
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
run test27 for 3
pred test28 {
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
run test28 for 3
pred test29 {
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
run test29 for 3
pred test30 {
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
run test30 for 3
pred test31 {
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
run test31 for 3
pred test32 {
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
run test32 for 3
pred test33 {
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
run test33 for 3
pred test34 {
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
run test34 for 3
pred test35 {
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
run test35 for 3
pred test36 {
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
run test36 for 3
pred test37 {
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
run test37 for 3
pred test38 {
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
run test38 for 3
pred test39 {
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
run test39 for 3
pred test40 {
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
run test40 for 3
pred test41 {
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
run test41 for 3
pred test42 {
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
run test42 for 3
pred test43 {
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
run test43 for 3
pred test44 {
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
run test44 for 3
pred test45 {
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
run test45 for 3
pred test46 {
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
run test46 for 3
pred test47 {
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
run test47 for 3
pred test48 {
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
run test48 for 3
pred test49 {
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
run test49 for 3
pred test50 {
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
run test50 for 3
pred test51 {
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
run test51 for 3
pred test52 {
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
run test52 for 3
pred test53 {
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
run test53 for 3
pred test54 {
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
run test54 for 3
pred test55 {
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
run test55 for 3
pred test56 {
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
run test56 for 3
pred test57 {
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
run test57 for 3
pred test58 {
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
run test58 for 3
pred test59 {
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
run test59 for 3
pred test60 {
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
run test60 for 3
pred test61 {
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
run test61 for 3
pred test62 {
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
run test62 for 3
pred test63 {
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
run test63 for 3
pred test64 {
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
run test64 for 3
pred test65 {
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
run test65 for 3
pred test66 {
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
run test66 for 3
pred test67 {
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
run test67 for 3
pred test68 {
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
run test68 for 3
pred test69 {
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
run test69 for 3
pred test70 {
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
run test70 for 3
pred test71 {
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
run test71 for 3
pred test72 {
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
run test72 for 3
pred test73 {
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
run test73 for 3
pred test74 {
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
run test74 for 3
pred test75 {
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
run test75 for 3
pred test76 {
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
run test76 for 3
pred test77 {
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
run test77 for 3
pred test78 {
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
run test78 for 3
pred test79 {
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
run test79 for 3
pred test80 {
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
run test80 for 3
pred test81 {
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
run test81 for 3
pred test82 {
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
run test82 for 3
pred test83 {
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
run test83 for 3
pred test84 {
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
run test84 for 3
pred test85 {
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
run test85 for 3
pred test86 {
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
run test86 for 3
pred test87 {
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
run test87 for 3
pred test88 {
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
run test88 for 3
pred test89 {
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
run test89 for 3
pred test90 {
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
run test90 for 3
pred test91 {
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
run test91 for 3
pred test92 {
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
run test92 for 3
pred test93 {
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
run test93 for 3
pred test94 {
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
run test94 for 3
pred test95 {
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
run test95 for 3
pred test96 {
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
run test96 for 3
pred test97 {
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
run test97 for 3
pred test98 {
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
run test98 for 3
pred test99 {
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
run test99 for 3
pred test100 {
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
run test100 for 3
pred test101 {
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
run test101 for 3
pred test102 {
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
run test102 for 3
pred test103 {
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
run test103 for 3
pred test104 {
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
run test104 for 3
pred test105 {
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
run test105 for 3
pred test106 {
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
run test106 for 3
pred test107 {
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
run test107 for 3
pred test108 {
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
run test108 for 3
pred test109 {
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
run test109 for 3
pred test110 {
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
run test110 for 3
pred test111 {
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
run test111 for 3
pred test112 {
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
run test112 for 3
pred test113 {
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
run test113 for 3
pred test114 {
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
run test114 for 3
pred test115 {
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
run test115 for 3
pred test116 {
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
run test116 for 3
pred test117 {
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
run test117 for 3
pred test118 {
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
run test118 for 3
pred test119 {
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
run test119 for 3
pred test120 {
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
run test120 for 3
pred test121 {
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
run test121 for 3
pred test122 {
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
run test122 for 3
pred test123 {
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
run test123 for 3
pred test124 {
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
run test124 for 3
pred test125 {
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
run test125 for 3
pred test126 {
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
run test126 for 3
pred test127 {
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
run test127 for 3
pred test128 {
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
run test128 for 3
pred test129 {
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
run test129 for 3
pred test130 {
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
run test130 for 3
pred test131 {
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
run test131 for 3
pred test132 {
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
run test132 for 3
pred test133 {
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
run test133 for 3
pred test134 {
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
run test134 for 3
pred test135 {
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
run test135 for 3
pred test136 {
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
run test136 for 3
pred test137 {
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
run test137 for 3
pred test138 {
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
run test138 for 3
pred test139 {
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
run test139 for 3
pred test140 {
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
run test140 for 3
pred test141 {
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
run test141 for 3
pred test142 {
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
run test142 for 3
pred test143 {
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
run test143 for 3
pred test144 {
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
run test144 for 3
pred test145 {
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
run test145 for 3
