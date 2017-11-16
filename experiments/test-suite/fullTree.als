pred test1 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
right = Node0->Node1 + Node1->Node1
}

}
run test1 for 3
pred test2 {

no Node
no left
no right


}
run test2 for 3
pred test3 {
some disj Node0: Node {
Node = Node0
no left
no right
}

}
run test3 for 3
pred test4 {
some disj Node0: Node {
Node = Node0
left = Node0->Node0
no right
}

}
run test4 for 3
pred test5 {
some disj Node0: Node {
Node = Node0
no left
no right
Acyclic[]
}

}
run test5 for 3
pred test6 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
Acyclic[]
}

}
run test6 for 3
pred test7 {

no Node
no left
no right
Acyclic[]


}
run test7 for 3
pred test8 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
Acyclic[]
}

}
run test8 for 3
pred test9 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
no right
Acyclic[]
}

}
run test9 for 3
pred test10 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node0
Acyclic[]
}

}
run test10 for 3
pred test11 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node2->Node0
Acyclic[]
}

}
run test11 for 3
pred test12 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
no left
right = Node0->Node2 + Node1->Node2
Acyclic[]
}

}
run test12 for 3
pred test13 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node0->Node2
Acyclic[]
}

}
run test13 for 3
pred test14 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node1->Node0
Acyclic[]
}

}
run test14 for 3
pred test15 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node0->Node2 + Node1->Node0
no right
Acyclic[]
}

}
run test15 for 3
pred test16 {
some disj Node0, Node1, Node2: Node {
Node = Node0 + Node1 + Node2
left = Node2->Node1
right = Node1->Node0
Acyclic[]
}

}
run test16 for 3
pred test17 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node1->Node0
Acyclic[]
}

}
run test17 for 3
pred test18 {
some disj Node0: Node {
Node = Node0
no left
no right
makeFull[]
}

}
run test18 for 3
pred test19 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0
right = Node0->Node1
makeFull[]
}

}
run test19 for 3
pred test20 {

no Node
no left
no right
makeFull[]


}
run test20 for 3
pred test21 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
FullTree[]
}

}
run test21 for 3
pred test22 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node1->Node0 + Node1->Node1
right = Node0->Node0 + Node0->Node1
}

}
run test22 for 3
pred test23 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
no right
}

}
run test23 for 3
pred test24 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node1
right = Node0->Node0
}

}
run test24 for 3
pred test25 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
left = Node0->Node1 + Node1->Node0
right = Node0->Node0 + Node1->Node1
}

}
run test25 for 3
pred test26 {
some disj Node0: Node {
Node = Node0
no left
right = Node0->Node0
}

}
run test26 for 3
pred test27 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node0->Node1 + Node1->Node1
}

}
run test27 for 3
pred test28 {
some disj Node0, Node1: Node {
Node = Node0 + Node1
no left
right = Node0->Node1 + Node1->Node0
}

}
run test28 for 3
