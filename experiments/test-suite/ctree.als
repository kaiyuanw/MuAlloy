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
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test2 for 3
pred test3 {
some disj Blue0: Blue {some disj Blue0: Color {
no Red
Blue = Blue0
Color = Blue0
no Node
no neighbors
no color
}}
}
run test3 for 3
pred test4 {
some disj Red0, Red1: Red {some disj Blue0: Blue {some disj Blue0, Red0, Red1: Color {
Red = Red0 + Red1
Blue = Blue0
Color = Blue0 + Red0 + Red1
no Node
no neighbors
no color
}}}
}
run test4 for 3
pred test5 {
some disj Blue0: Blue {some disj Blue0: Color {
no Red
Blue = Blue0
Color = Blue0
no Node
no neighbors
no color
}}
}
run test5 for 3
pred test6 {
some disj Red0: Red {some disj Red0: Color {
Red = Red0
no Blue
Color = Red0
no Node
no neighbors
no color
}}
}
run test6 for 3
pred test7 {
some disj Red0: Red {some disj Blue0, Blue1: Blue {some disj Red0, Blue0, Blue1: Color {
Red = Red0
Blue = Blue0 + Blue1
Color = Red0 + Blue0 + Blue1
no Node
no neighbors
no color
}}}
}
run test7 for 3
pred test8 {
some disj Red0: Red {some disj Red0: Color {
Red = Red0
no Blue
Color = Red0
no Node
no neighbors
no color
}}
}
run test8 for 3
pred test9 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test9 for 3
pred test10 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test10 for 3
pred test11 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test11 for 3
pred test12 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Blue0
}}}}
}
run test12 for 3
pred test13 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test13 for 3
pred test14 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Red0
}}}}
}
run test14 for 3
pred test15 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Red0 + Node0->Blue0
}}}}
}
run test15 for 3
pred test16 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
no color
}}}}
}
run test16 for 3
pred test17 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Red0 + Node0->Blue0
}}}}
}
run test17 for 3
pred test18 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
neighbors = Node0->Node0
color = Node0->Red0
}}}}
}
run test18 for 3
pred test19 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test19 for 3
pred test20 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test20 for 3
pred test21 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test21 for 3
pred test22 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test22 for 3
pred test23 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test23 for 3
pred test24 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test24 for 3
pred test25 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test25 for 3
pred test26 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test26 for 3
pred test27 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test27 for 3
pred test28 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test28 for 3
pred test29 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test29 for 3
pred test30 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
neighbors = Node0->Node0
color = Node0->Blue0
}}}}
}
run test30 for 3
pred test31 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test31 for 3
pred test32 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test32 for 3
pred test33 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test33 for 3
pred test34 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test34 for 3
pred test35 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test35 for 3
pred test36 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test36 for 3
pred test37 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test37 for 3
pred test38 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test38 for 3
pred test39 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test39 for 3
pred test40 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test40 for 3
pred test41 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test41 for 3
pred test42 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test42 for 3
pred test43 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test43 for 3
pred test44 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test44 for 3
pred test45 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test45 for 3
pred test46 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test46 for 3
pred test47 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test47 for 3
pred test48 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test48 for 3
pred test49 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
neighbors = Node0->Node1 + Node1->Node0
color = Node0->Blue0 + Node1->Blue0
}}}}
}
run test49 for 3
pred test50 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test50 for 3
pred test51 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test51 for 3
pred test52 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1
no neighbors
color = Node0->Blue0 + Node1->Red0
}}}}
}
run test52 for 3
pred test53 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test53 for 3
pred test54 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test54 for 3
pred test55 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test55 for 3
pred test56 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test56 for 3
pred test57 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
no Node
no neighbors
no color
}}}
}
run test57 for 3
pred test58 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test58 for 3
pred test59 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0
no neighbors
color = Node0->Blue0
}}}}
}
run test59 for 3
pred test60 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test60 for 3
pred test61 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test61 for 3
pred test62 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test62 for 3
pred test63 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test63 for 3
pred test64 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test64 for 3
pred test65 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test65 for 3
pred test66 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test66 for 3
pred test67 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test67 for 3
pred test68 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node1->Node0 + Node1->Node2 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test68 for 3
pred test69 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test69 for 3
pred test70 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test70 for 3
pred test71 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test71 for 3
pred test72 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node2 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Blue0
}}}}
}
run test72 for 3
pred test73 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test73 for 3
pred test74 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test74 for 3
pred test75 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test75 for 3
pred test76 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node1->Node0 + Node1->Node2 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test76 for 3
pred test77 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node1->Node0 + Node1->Node2 + Node2->Node1
color = Node0->Blue0 + Node1->Blue0 + Node2->Red0
}}}}
}
run test77 for 3
pred test78 {
some disj Red0: Red {some disj Blue0: Blue {some disj Red0, Blue0: Color {some disj Node0, Node1, Node2: Node {
Red = Red0
Blue = Blue0
Color = Red0 + Blue0
Node = Node0 + Node1 + Node2
neighbors = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node2->Node0
color = Node0->Blue0 + Node1->Red0 + Node2->Red0
}}}}
}
run test78 for 3
