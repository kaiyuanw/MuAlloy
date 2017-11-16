pred test1 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal1 + Clause0->Literal2 + Clause0->Literal3 + Clause1->Literal0 + Clause1->Literal3
}}}}}}
}
run test1 for 5
pred test2 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal1 + Clause0->Literal2 + Clause0->Literal3 + Clause1->Literal0 + Clause1->Literal3
}}}}}}
}
run test2 for 5
pred test3 {
some disj False0: False {some disj False0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
no True
False = False0
Boolean = False0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}
}
run test3 for 5
pred test4 {
some disj True0, True1, True2: True {some disj False0: False {some disj False0, True0, True1, True2: Boolean {some disj Literal0, Literal1: Literal {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0 + True1 + True2
False = False0
Boolean = False0 + True0 + True1 + True2
Literal = Literal0 + Literal1
neg = Literal0->Literal1 + Literal1->Literal0
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}}}
}
run test4 for 5
pred test5 {
some disj False0: False {some disj False0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
no True
False = False0
Boolean = False0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}
}
run test5 for 5
pred test6 {
some disj True0: True {some disj True0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
no False
Boolean = True0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}
}
run test6 for 5
pred test7 {
some disj True0: True {some disj False0, False1, False2: False {some disj True0, False0, False1, False2: Boolean {some disj Literal0, Literal1: Literal {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
False = False0 + False1 + False2
Boolean = True0 + False0 + False1 + False2
Literal = Literal0 + Literal1
neg = Literal0->Literal1 + Literal1->Literal0
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}}}
}
run test7 for 5
pred test8 {
some disj True0: True {some disj True0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
no False
Boolean = True0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}
}
run test8 for 5
pred test9 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal3 + Clause1->Literal1 + Clause1->Literal2
}}}}}}
}
run test9 for 5
pred test10 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal3 + Clause1->Literal1 + Clause1->Literal2
}}}}}}
}
run test10 for 5
pred test11 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
False = False0
Boolean = True0 + False0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}}
}
run test11 for 5
pred test12 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0: Literal {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}}}
}
run test12 for 5
pred test13 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1, Clause2, Clause3: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal2->Literal0
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1 + Clause2 + Clause3
lits = Clause0->Literal3 + Clause1->Literal2 + Clause2->Literal1 + Clause2->Literal3 + Clause3->Literal0 + Clause3->Literal2
}}}}}}
}
run test13 for 5
pred test14 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3, Literal4: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1, Clause2, Clause3: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3 + Literal4
neg = Literal0->Literal2 + Literal0->Literal3 + Literal1->Literal3 + Literal2->Literal0 + Literal2->Literal4 + Literal3->Literal0 + Literal3->Literal1 + Literal4->Literal2
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1 + Clause2 + Clause3
lits = Clause0->Literal1 + Clause0->Literal2 + Clause0->Literal3 + Clause0->Literal4 + Clause1->Literal1 + Clause1->Literal2 + Clause1->Literal3 + Clause1->Literal4 + Clause2->Literal1 + Clause2->Literal2 + Clause2->Literal3 + Clause2->Literal4 + Clause3->Literal0 + Clause3->Literal4
}}}}}}
}
run test14 for 5
pred test15 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal1 + Clause0->Literal2 + Clause0->Literal3 + Clause1->Literal0 + Clause1->Literal3
}}}}}}
}
run test15 for 5
pred test16 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1, Literal2, Literal3: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0, Clause1: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1 + Literal2 + Literal3
neg = Literal0->Literal2 + Literal1->Literal3 + Literal2->Literal0 + Literal3->Literal1
Conflict = Conflict0
Clause = Conflict0 + Clause0 + Clause1
lits = Clause0->Literal1 + Clause0->Literal2 + Clause0->Literal3 + Clause1->Literal0 + Clause1->Literal3
}}}}}}
}
run test16 for 5
pred test17 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1
neg = Literal0->Literal1 + Literal1->Literal0
Conflict = Conflict0
Clause = Conflict0 + Clause0
lits = Clause0->Literal0 + Clause0->Literal1
}}}}}}
}
run test17 for 5
pred test18 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Conflict0: Conflict {some disj Conflict0: Clause {
True = True0
False = False0
Boolean = True0 + False0
no Literal
no neg
Conflict = Conflict0
Clause = Conflict0
no lits
}}}}}
}
run test18 for 5
pred test19 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Literal0, Literal1: Literal {some disj Conflict0: Conflict {some disj Conflict0, Clause0: Clause {
True = True0
False = False0
Boolean = True0 + False0
Literal = Literal0 + Literal1
neg = Literal0->Literal1 + Literal1->Literal0
Conflict = Conflict0
Clause = Conflict0 + Clause0
lits = Clause0->Literal1
}}}}}}
}
run test19 for 5
pred test20 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {
True = True0
False = False0
Boolean = True0 + False0
no Literal
no neg
no Conflict
no Clause
no lits
}}}
}
run test20 for 5
pred test21 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {some disj Conflict0, Conflict1: Conflict {some disj Conflict0, Conflict1, Clause0, Clause1, Clause2: Clause {
True = True0
False = False0
Boolean = True0 + False0
no Literal
no neg
Conflict = Conflict0 + Conflict1
Clause = Conflict0 + Conflict1 + Clause0 + Clause1 + Clause2
no lits
}}}}}
}
run test21 for 5
pred test22 {
some disj True0: True {some disj False0: False {some disj True0, False0: Boolean {
True = True0
False = False0
Boolean = True0 + False0
no Literal
no neg
no Conflict
no Clause
no lits
}}}
}
run test22 for 5
