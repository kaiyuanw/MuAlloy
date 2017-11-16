pred test1 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}

}
run test1 for 3
pred test2 {
some disj Blue0: Blue {some disj Blue0: Color {
no Red
Blue = Blue0
Color = Blue0
no Node
no neighbors
no color
}}

}
run test2 for 3
pred test3 {
some disj Red0, Red1: Red {some disj Blue0: Blue {some disj Blue0, Red0, Red1: Color {
Red = Red0 + Red1
Blue = Blue0
Color = Blue0 + Red0 + Red1
no Node
no neighbors
no color
}}}

}
run test3 for 3
pred test4 {
some disj Red0: Red {some disj Red0: Color {
Red = Red0
no Blue
Color = Red0
no Node
no neighbors
no color
}}

}
run test4 for 3
pred test5 {
some disj Red0: Red {some disj Blue0, Blue1: Blue {some disj Red0, Blue0, Blue1: Color {
Red = Red0
Blue = Blue0 + Blue1
Color = Red0 + Blue0 + Blue1
no Node
no neighbors
no color
}}}

}
run test5 for 3
pred test6 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}

}
run test6 for 3
pred test7 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Blue0
}}}}

}
run test7 for 3
pred test8 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}

}
run test8 for 3
pred test9 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Red0
}}}}

}
run test9 for 3
pred test10 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Red0 + Node0->Blue0
}}}}

}
run test10 for 3
pred test11 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
no color
}}}}

}
run test11 for 3
pred test12 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
neighbors = Node0->Node0
color = Node0->Red0
}}}}

}
run test12 for 3
pred test13 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}

}
run test13 for 3
pred test14 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
neighbors = Node0->Node0
color = Node0->Blue0
}}}}

}
run test14 for 3
pred test15 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}

}
run test15 for 3
pred test16 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Blue0
}}}}

}
run test16 for 3
pred test17 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}

}
run test17 for 3
pred test18 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}

}
run test18 for 3
pred test19 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}

}
run test19 for 3
pred test20 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node1->Node0 + Node1->Node2 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}

}
run test20 for 3
pred test21 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}

}
run test21 for 3
pred test22 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Blue0
}}}}

}
run test22 for 3
