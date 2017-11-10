pred test74 {
some disj Node0: Node {
Node = Node0
left = Node0->Node0
no right
}
}
run test74 for 3 expect 1
pred test66 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
FullTree[]
}
}
run test66 for 3 expect 0
pred test40 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node0->Node2 + Node1->Node0
no right
Acyclic[]
}
}
run test40 for 3 expect 1
pred test61 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test61 for 3 expect 0
pred test21 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test21 for 3 expect 0
pred test47 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test47 for 3 expect 1
pred test22 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test22 for 3 expect 1
pred test28 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test28 for 3 expect 1
pred test1 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
right = Node0->Node1 + Node1->Node1
}
}
run test1 for 3 expect 1
pred test69 {

no Node
no left
no right

}
run test69 for 3 expect 1
pred test63 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test63 for 3 expect 0
pred test59 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test59 for 3 expect 0
pred test57 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test57 for 3 expect 1
pred test17 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test17 for 3 expect 1
pred test80 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
}
}
run test80 for 3 expect 1
pred test16 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test16 for 3 expect 1
pred test55 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test55 for 3 expect 1
pred test26 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test26 for 3 expect 1
pred test75 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
no right
}
}
run test75 for 3 expect 1
pred test8 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test8 for 3 expect 1
pred test37 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node0
Acyclic[]
}
}
run test37 for 3 expect 1
pred test71 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0 + Node1->Node1
right = Node0->Node0 + Node0->Node1
}
}
run test71 for 3 expect 0
pred test38 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node0->Node2
Acyclic[]
}
}
run test38 for 3 expect 1
pred test83 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node0->Node1 + Node1->Node0
}
}
run test83 for 3 expect 1
pred test5 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test5 for 3 expect 1
pred test82 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node0->Node1 + Node1->Node0
}
}
run test82 for 3 expect 1
pred test10 {

no Node
no left
no right
Acyclic[]

}
run test10 for 3 expect 1
pred test39 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node1->Node0
Acyclic[]
}
}
run test39 for 3 expect 1
pred test31 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node0
Acyclic[]
}
}
run test31 for 3 expect 1
pred test77 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node0
right = Node0->Node0 + Node1->Node1
}
}
run test77 for 3 expect 1
pred test14 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
Acyclic[]
}
}
run test14 for 3 expect 0
pred test78 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test78 for 3 expect 1
pred test45 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test45 for 3 expect 1
pred test50 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node1->Node0
Acyclic[]
}
}
run test50 for 3 expect 0
pred test30 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test30 for 3 expect 1
pred test19 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
Acyclic[]
}
}
run test19 for 3 expect 0
pred test73 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test73 for 3 expect 1
pred test68 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0 + Node1->Node1
right = Node0->Node0 + Node0->Node1
}
}
run test68 for 3 expect 0
pred test25 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
Acyclic[]
}
}
run test25 for 3 expect 0
pred test34 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node2
Acyclic[]
}
}
run test34 for 3 expect 0
pred test24 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test24 for 3 expect 1
pred test12 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test12 for 3 expect 0
pred test58 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test58 for 3 expect 1
pred test6 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test6 for 3 expect 1
pred test56 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test56 for 3 expect 0
pred test18 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test18 for 3 expect 1
pred test36 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test36 for 3 expect 1
pred test62 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test62 for 3 expect 1
pred test41 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node1->Node0
Acyclic[]
}
}
run test41 for 3 expect 1
pred test4 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test4 for 3 expect 1
pred test15 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test15 for 3 expect 0
pred test54 {

no Node
no left
no right
makeFull[]

}
run test54 for 3 expect 1
pred test35 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node2->Node0
Acyclic[]
}
}
run test35 for 3 expect 1
pred test7 {
some disj Node0: Node {
Node = Node0
left = Node0->Node0
no right
}
}
run test7 for 3 expect 1
pred test9 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test9 for 3 expect 0
pred test42 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test42 for 3 expect 1
pred test76 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
right = Node0->Node0
}
}
run test76 for 3 expect 1
pred test48 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test48 for 3 expect 1
pred test53 {

no Node
no left
no right
makeFull[]

}
run test53 for 3 expect 1
pred test3 {

no Node
no left
no right

}
run test3 for 3 expect 1
pred test64 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test64 for 3 expect 1
pred test27 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test27 for 3 expect 1
pred test81 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node0->Node1 + Node1->Node1
}
}
run test81 for 3 expect 1
pred test52 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test52 for 3 expect 0
pred test29 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}
}
run test29 for 3 expect 1
pred test49 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node1->Node0
Acyclic[]
}
}
run test49 for 3 expect 0
pred test32 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node2->Node0
Acyclic[]
}
}
run test32 for 3 expect 1
pred test23 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
Acyclic[]
}
}
run test23 for 3 expect 0
pred test33 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node2
Acyclic[]
}
}
run test33 for 3 expect 0
pred test60 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test60 for 3 expect 1
pred test13 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test13 for 3 expect 0
pred test79 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test79 for 3 expect 1
pred test51 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}
}
run test51 for 3 expect 1
pred test67 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test67 for 3 expect 1
pred test46 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}
}
run test46 for 3 expect 1
pred test2 {

no Node
no left
no right

}
run test2 for 3 expect 1
pred test72 {
some disj Node0: Node {
Node = Node0
no left
no right
}
}
run test72 for 3 expect 1
pred test65 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}
}
run test65 for 3 expect 0
pred test43 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node0
Acyclic[]
}
}
run test43 for 3 expect 1
pred test20 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}
}
run test20 for 3 expect 0
pred test11 {

no Node
no left
no right
Acyclic[]

}
run test11 for 3 expect 1
pred test70 {

no Node
no left
no right

}
run test70 for 3 expect 1
pred test44 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node1->Node0
Acyclic[]
}
}
run test44 for 3 expect 0
