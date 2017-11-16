pred test1 {
some disj List0, List1: List {some disj Node0: Node {
List = List0 + List1
header = List1->Node0
Node = Node0
link = Node0->Node0
}}

}
run test1 for 3
pred test2 {

no List
no header
no Node
no link


}
run test2 for 3
pred test3 {
some disj Node0, Node1, Node2: Node {
no List
no header
Node = Node0 + Node1 + Node2
link = Node0->Node2 + Node1->Node0 + Node2->Node2
}

}
run test3 for 3
pred test4 {
some disj List0: List {some disj Node0, Node1, Node2: Node {
List = List0
header = List0->Node0 + List0->Node1 + List0->Node2
Node = Node0 + Node1 + Node2
link = Node0->Node2 + Node1->Node1 + Node2->Node0
}}

}
run test4 for 3
pred test5 {
some disj List0: List {some disj Node0: Node {
List = List0
no header
Node = Node0
no link
}}

}
run test5 for 3
pred test6 {
some disj List0, List1: List {some disj Node0, Node1: Node {
List = List0 + List1
header = List0->Node1 + List1->Node0
Node = Node0 + Node1
link = Node0->Node1
}}

}
run test6 for 3
pred test7 {
some disj Node0, Node1, Node2: Node {
no List
no header
Node = Node0 + Node1 + Node2
link = Node1->Node0 + Node1->Node2 + Node2->Node1 + Node2->Node2
}

}
run test7 for 3
pred test8 {
some disj List0, List1: List {some disj Node0, Node1: Node {
List = List0 + List1
header = List0->Node1 + List1->Node0
Node = Node0 + Node1
no link
}}

}
run test8 for 3
pred test9 {
some disj List0, List1: List {some disj Node0, Node1: Node {
List = List0 + List1
header = List0->Node1 + List1->Node0
Node = Node0 + Node1
link = Node0->Node0 + Node0->Node1 + Node1->Node0 + Node1->Node1
}}

}
run test9 for 3
pred test10 {
some disj List0: List {some disj Node0: Node {
List = List0
no header
Node = Node0
link = Node0->Node0
Acyclic[List0]
}}

}
run test10 for 3
pred test11 {
some disj List0: List {some disj Node0: Node {
List = List0
header = List0->Node0
Node = Node0
link = Node0->Node0
Acyclic[List0]
}}

}
run test11 for 3
pred test12 {
some disj List0, List1: List {some disj Node0, Node1: Node {
List = List0 + List1
header = List0->Node1 + List1->Node0
Node = Node0 + Node1
link = Node0->Node1
Acyclic[List1]
}}

}
run test12 for 3
pred test13 {
some disj List0, List1, List2: List {some disj Node0, Node1, Node2: Node {
List = List0 + List1 + List2
header = List0->Node2 + List1->Node1 + List2->Node0
Node = Node0 + Node1 + Node2
no link
Acyclic[List2]
}}

}
run test13 for 3
pred test14 {
some disj List0, List1, List2: List {some disj Node0, Node1: Node {
List = List0 + List1 + List2
header = List0->Node1 + List1->Node0 + List2->Node1
Node = Node0 + Node1
link = Node1->Node0
Acyclic[List2]
}}

}
run test14 for 3
pred test15 {
some disj List0, List1, List2: List {some disj Node0, Node1, Node2: Node {
List = List0 + List1 + List2
header = List0->Node2 + List1->Node1 + List2->Node2
Node = Node0 + Node1 + Node2
link = Node0->Node1 + Node2->Node0
Acyclic[List2]
}}

}
run test15 for 3
pred test16 {
some disj List0: List {some disj Node0, Node1: Node {
List = List0
header = List0->Node1
Node = Node0 + Node1
link = Node0->Node0 + Node1->Node0
Acyclic[List0]
}}

}
run test16 for 3
pred test17 {
some disj List0: List {some disj Node0: Node {
List = List0
header = List0->Node0
Node = Node0
no link
Acyclic[List0]
}}

}
run test17 for 3
