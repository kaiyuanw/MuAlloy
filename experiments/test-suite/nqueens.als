pred test18 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->1 + Queen1->0
col = Queen0->0 + Queen1->1
nothreat[Queen1,Queen0]
}
}
run test18 for 4 expect 0
pred test33 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test33 for 4 expect 1
pred test31 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-8
col = Queen0->0
}
}
run test31 for 4 expect 0
pred test5 {
some disj Queen0: Queen {
Queen = Queen0
no row
col = Queen0->0
}
}
run test5 for 4 expect 0
pred test23 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->0
col = Queen0->1 + Queen1->1
valid[]
}
}
run test23 for 4 expect 0
pred test14 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->1
col = Queen0->1 + Queen1->1
nothreat[Queen1,Queen0]
}
}
run test14 for 4 expect 0
pred test44 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->-8
}
}
run test44 for 4 expect 0
pred test3 {

no Queen
no row
no col

}
run test3 for 4 expect 1
pred test8 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
no col
}
}
run test8 for 4 expect 0
pred test38 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->5 + Queen1->6
col = Queen0->1 + Queen1->0
}
}
run test38 for 4 expect 0
pred test10 {
some disj Queen0, Queen1, Queen2, Queen3: Queen {
Queen = Queen0 + Queen1 + Queen2 + Queen3
row = Queen0->0 + Queen1->0 + Queen2->2 + Queen3->1
col = Queen0->0 + Queen1->0 + Queen2->1 + Queen3->2
nothreat[Queen3,Queen2]
}
}
run test10 for 4 expect 0
pred test49 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->1
}
}
run test49 for 4 expect 0
pred test6 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-8 + Queen0->-7 + Queen0->-6 + Queen0->-5 + Queen0->-4 + Queen0->-3 + Queen0->-2 + Queen0->-1 + Queen0->0 + Queen0->1 + Queen0->2 + Queen0->3 + Queen0->4 + Queen0->5 + Queen0->6
col = Queen0->0
}
}
run test6 for 4 expect 0
pred test20 {
some disj Queen0, Queen1, Queen2, Queen3: Queen {
Queen = Queen0 + Queen1 + Queen2 + Queen3
row = Queen0->1 + Queen1->3 + Queen2->0 + Queen3->2
col = Queen0->3 + Queen1->2 + Queen2->1 + Queen3->0
valid[]
}
}
run test20 for 4 expect 1
pred test26 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->6 + Queen1->5
col = Queen0->7 + Queen1->6
}
}
run test26 for 4 expect 0
pred test4 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-5 + Queen0->-4 + Queen0->6
col = Queen0->0
}
}
run test4 for 4 expect 0
pred test21 {

no Queen
no row
no col
valid[]

}
run test21 for 4 expect 1
pred test22 {

no Queen
no row
no col
valid[]

}
run test22 for 4 expect 1
pred test15 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->0 + Queen1->2 + Queen2->1
col = Queen0->1 + Queen1->1 + Queen2->0
nothreat[Queen2,Queen1]
}
}
run test15 for 4 expect 0
pred test51 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test51 for 4 expect 1
pred test29 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->2 + Queen1->5 + Queen2->6
col = Queen0->0 + Queen1->-7 + Queen2->-8
}
}
run test29 for 4 expect 0
pred test13 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->1
col = Queen0->0 + Queen1->0
nothreat[Queen1,Queen0]
}
}
run test13 for 4 expect 0
pred test24 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
valid[]
}
}
run test24 for 4 expect 1
pred test47 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->-8
}
}
run test47 for 4 expect 0
pred test27 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->6 + Queen1->5
col = Queen0->7 + Queen1->6
}
}
run test27 for 4 expect 0
pred test40 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->7
col = Queen0->0
}
}
run test40 for 4 expect 0
pred test32 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-8
col = Queen0->0
}
}
run test32 for 4 expect 0
pred test52 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test52 for 4 expect 1
pred test19 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
valid[]
}
}
run test19 for 4 expect 1
pred test28 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->2 + Queen1->5 + Queen2->6
col = Queen0->2 + Queen1->-4 + Queen2->-5
}
}
run test28 for 4 expect 0
pred test53 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test53 for 4 expect 1
pred test30 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->5 + Queen1->6
col = Queen0->7 + Queen1->3
}
}
run test30 for 4 expect 0
pred test50 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->4
}
}
run test50 for 4 expect 0
pred test9 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->-6 + Queen0->-4
}
}
run test9 for 4 expect 0
pred test48 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test48 for 4 expect 1
pred test7 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->-8 + Queen0->-7 + Queen0->-6 + Queen0->-5 + Queen0->-4 + Queen0->-3 + Queen0->-2 + Queen0->-1 + Queen0->0 + Queen0->1 + Queen0->2 + Queen0->3
}
}
run test7 for 4 expect 0
pred test12 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->0 + Queen1->0 + Queen2->0
col = Queen0->0 + Queen1->1 + Queen2->2
nothreat[Queen2,Queen1]
}
}
run test12 for 4 expect 0
pred test36 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-8
col = Queen0->0
}
}
run test36 for 4 expect 0
pred test45 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test45 for 4 expect 1
pred test11 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->0 + Queen1->0 + Queen2->0
col = Queen0->0 + Queen1->1 + Queen2->2
nothreat[Queen2,Queen1]
}
}
run test11 for 4 expect 0
pred test43 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test43 for 4 expect 1
pred test16 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->1
col = Queen0->0 + Queen1->1
nothreat[Queen1,Queen0]
}
}
run test16 for 4 expect 0
pred test35 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->-8
col = Queen0->0
}
}
run test35 for 4 expect 0
pred test34 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test34 for 4 expect 1
pred test2 {

no Queen
no row
no col

}
run test2 for 4 expect 1
pred test54 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->1
}
}
run test54 for 4 expect 0
pred test39 {
some disj Queen0, Queen1, Queen2: Queen {
Queen = Queen0 + Queen1 + Queen2
row = Queen0->6 + Queen1->5 + Queen2->6
col = Queen0->2 + Queen1->2 + Queen2->0
}
}
run test39 for 4 expect 0
pred test37 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->1
col = Queen0->0
}
}
run test37 for 4 expect 0
pred test46 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
}
}
run test46 for 4 expect 1
pred test42 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->1
col = Queen0->0
}
}
run test42 for 4 expect 0
pred test17 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->1
col = Queen0->1 + Queen1->0
nothreat[Queen1,Queen0]
}
}
run test17 for 4 expect 0
pred test41 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->7
col = Queen0->0
}
}
run test41 for 4 expect 0
pred test25 {
some disj Queen0: Queen {
Queen = Queen0
row = Queen0->0
col = Queen0->0
valid[]
}
}
run test25 for 4 expect 1
pred test1 {
some disj Queen0, Queen1: Queen {
Queen = Queen0 + Queen1
row = Queen0->0 + Queen1->0
col = Queen0->0 + Queen1->0
}
}
run test1 for 4 expect 1
