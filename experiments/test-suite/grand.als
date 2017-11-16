pred test1 {
some disj Woman0, Woman1, Woman2: Woman {some disj Woman0, Woman1, Woman2: Person {
no Man
no wife
Woman = Woman0 + Woman1 + Woman2
no husband
Person = Woman0 + Woman1 + Woman2
no father
mother = Woman0->Woman2 + Woman1->Woman0
}}

}
run test1 for 4
pred test2 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother


}
run test2 for 4
pred test3 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
no wife
Woman = Woman0
no husband
Person = Woman0 + Man0 + Man1 + Man2
father = Man2->Man0 + Man2->Man1
mother = Man1->Woman0
}}}

}
run test3 for 4
pred test4 {
some disj Woman0: Woman {some disj Woman0: Person {
no Man
no wife
Woman = Woman0
no husband
Person = Woman0
no father
no mother
}}

}
run test4 for 4
pred test5 {
some disj Man0, Man1: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0, Man1: Person {
Man = Man0 + Man1
no wife
Woman = Woman0 + Woman1
no husband
Person = Woman0 + Woman1 + Man0 + Man1
no father
mother = Man1->Woman0 + Man1->Woman1
}}}

}
run test5 for 4
pred test6 {
some disj Man0, Man1: Man {some disj Man0, Man1: Person {
Man = Man0 + Man1
no wife
no Woman
no husband
Person = Man0 + Man1
father = Man1->Man0
no mother
}}

}
run test6 for 4
pred test7 {
some disj Man0: Man {some disj Woman0, Woman1, Woman2: Woman {some disj Woman0, Woman1, Woman2, Man0: Person {
Man = Man0
wife = Man0->Woman0 + Man0->Woman1 + Man0->Woman2
Woman = Woman0 + Woman1 + Woman2
husband = Woman0->Man0 + Woman1->Man0 + Woman2->Man0
Person = Woman0 + Woman1 + Woman2 + Man0
no father
mother = Woman0->Woman2 + Woman1->Woman2
}}}

}
run test7 for 4
pred test8 {
some disj Man0: Man {some disj Man0: Person {
Man = Man0
no wife
no Woman
no husband
Person = Man0
no father
no mother
}}

}
run test8 for 4
pred test9 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Man0, Man1, Man2, Woman0: Person {
Man = Man0 + Man1 + Man2
wife = Man0->Woman0 + Man1->Woman0 + Man2->Woman0
Woman = Woman0
husband = Woman0->Man0 + Woman0->Man1 + Woman0->Man2
Person = Man0 + Man1 + Man2 + Woman0
father = Man1->Man2 + Man2->Man0
no mother
}}}

}
run test9 for 4
pred test10 {
some disj Man0: Man {some disj Man0: Person {
Man = Man0
no wife
no Woman
no husband
Person = Man0
no father
no mother
ownGrandpa[Man0]
}}

}
run test10 for 4
pred test11 {
some disj Man0, Man1, Man2, Man3: Man {some disj Man0, Man1, Man2, Man3: Person {
Man = Man0 + Man1 + Man2 + Man3
no wife
no Woman
no husband
Person = Man0 + Man1 + Man2 + Man3
father = Man0->Man2 + Man1->Man0 + Man3->Man1
no mother
grandpas[Man3] = Man0
}}

}
run test11 for 4
pred test12 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
wife = Man1->Woman0
Woman = Woman0
husband = Woman0->Man1
Person = Woman0 + Man0 + Man1 + Man2
father = Man2->Man0
mother = Man0->Woman0
grandpas[Man2] = Man1
}}}

}
run test12 for 4
pred test13 {
some disj Man0, Man1, Man2, Man3: Man {some disj Man0, Man1, Man2, Man3: Person {
Man = Man0 + Man1 + Man2 + Man3
no wife
no Woman
no husband
Person = Man0 + Man1 + Man2 + Man3
father = Man0->Man2 + Man1->Man2 + Man2->Man3
no mother
grandpas[Man3] = none
}}

}
run test13 for 4
pred test14 {
some disj Man0: Man {some disj Man0: Person {
Man = Man0
no wife
no Woman
no husband
Person = Man0
no father
no mother
grandpas[Man0] = none
}}

}
run test14 for 4
pred test15 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
no wife
Woman = Woman0
no husband
Person = Woman0 + Man0 + Man1 + Man2
father = Woman0->Man1 + Man2->Man0
mother = Man0->Woman0
grandpas[Man2] = none
}}}

}
run test15 for 4
pred test16 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
wife = Man1->Woman0
Woman = Woman0
husband = Woman0->Man1
Person = Woman0 + Man0 + Man1 + Man2
father = Woman0->Man0 + Man2->Man1
no mother
grandpas[Man2] = Man0
}}}

}
run test16 for 4
pred test17 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
no wife
Woman = Woman0
no husband
Person = Woman0 + Man0 + Man1 + Man2
father = Woman0->Man1 + Man1->Man0
mother = Man2->Woman0
grandpas[Man2] = Man1
}}}

}
run test17 for 4
pred test18 {
some disj Man0, Man1: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Man0, Man1, Woman1: Person {
Man = Man0 + Man1
wife = Man1->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man1
Person = Woman0 + Man0 + Man1 + Woman1
father = Woman0->Man0
mother = Woman1->Woman0
grandpas[Woman1] = Man0
}}}

}
run test18 for 4
pred test19 {
some disj Man0, Man1, Man2, Man3: Man {some disj Man0, Man1, Man2, Man3: Person {
Man = Man0 + Man1 + Man2 + Man3
no wife
no Woman
no husband
Person = Man0 + Man1 + Man2 + Man3
father = Man1->Man3 + Man2->Man0 + Man3->Man2
no mother
grandpas[Man3] = Man0
}}

}
run test19 for 4
pred test20 {
some disj Man0, Man1: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0, Man1: Person {
Man = Man0 + Man1
no wife
Woman = Woman0 + Woman1
no husband
Person = Woman0 + Woman1 + Man0 + Man1
father = Woman1->Man0
mother = Woman0->Woman1 + Man1->Woman0
grandpas[Man1] = none
}}}

}
run test20 for 4
pred test21 {
some disj Man0, Man1: Man {some disj Man0, Man1: Person {
Man = Man0 + Man1
no wife
no Woman
no husband
Person = Man0 + Man1
father = Man0->Man1
no mother
grandpas[Man1] = none
}}

}
run test21 for 4
pred test22 {
some disj Man0, Man1: Man {some disj Man0, Man1: Person {
Man = Man0 + Man1
no wife
no Woman
no husband
Person = Man0 + Man1
father = Man1->Man0
no mother
grandpas[Man1] = none
}}

}
run test22 for 4
pred test23 {
some disj Man0, Man1, Man2, Man3: Man {some disj Man0, Man1, Man2, Man3: Person {
Man = Man0 + Man1 + Man2 + Man3
no wife
no Woman
no husband
Person = Man0 + Man1 + Man2 + Man3
father = Man1->Man2 + Man2->Man0 + Man3->Man1
no mother
grandpas[Man3] = Man2
}}

}
run test23 for 4
pred test24 {
some disj Woman0: Woman {some disj Woman0: Person {
no Man
no wife
Woman = Woman0
no husband
Person = Woman0
no father
mother = Woman0->Woman0
}}

}
run test24 for 4
pred test25 {
some disj Woman0, Woman1, Woman2, Woman3: Woman {some disj Woman0, Woman1, Woman2, Woman3: Person {
no Man
no wife
Woman = Woman0 + Woman1 + Woman2 + Woman3
no husband
Person = Woman0 + Woman1 + Woman2 + Woman3
no father
mother = Woman0->Woman3 + Woman1->Woman2 + Woman2->Woman0 + Woman3->Woman1
}}

}
run test25 for 4
pred test26 {
some disj Man0: Man {some disj Woman0, Woman1, Woman2: Woman {some disj Woman0, Woman1, Woman2, Man0: Person {
Man = Man0
no wife
Woman = Woman0 + Woman1 + Woman2
no husband
Person = Woman0 + Woman1 + Woman2 + Man0
father = Woman1->Man0 + Woman2->Man0
mother = Woman0->Woman2 + Woman2->Woman1 + Man0->Woman0
}}}

}
run test26 for 4
pred test27 {
some disj Man0, Man1: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1: Person {
Man = Man0 + Man1
no wife
Woman = Woman0
husband = Woman0->Man1
Person = Woman0 + Man0 + Man1
father = Man1->Man0
mother = Man0->Woman0
}}}

}
run test27 for 4
pred test28 {
some disj Man0: Man {some disj Woman0: Woman {some disj Woman0, Man0: Person {
Man = Man0
wife = Man0->Woman0
Woman = Woman0
husband = Woman0->Man0
Person = Woman0 + Man0
father = Woman0->Man0
no mother
}}}

}
run test28 for 4
pred test29 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
father = Woman0->Man0
mother = Woman0->Woman1 + Man0->Woman1
}}}

}
run test29 for 4
pred test30 {
some disj Woman0, Woman1: Woman {some disj Woman0, Woman1: Person {
no Man
no wife
Woman = Woman0 + Woman1
no husband
Person = Woman0 + Woman1
no father
mother = Woman1->Woman0
}}

}
run test30 for 4
pred test31 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
no father
mother = Woman1->Woman0
}}}

}
run test31 for 4
pred test32 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
no father
mother = Woman1->Woman0 + Man0->Woman1
}}}

}
run test32 for 4
pred test33 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
no father
mother = Woman0->Woman1 + Man0->Woman0
}}}

}
run test33 for 4
pred test34 {
some disj Man0: Man {some disj Woman0, Woman1, Woman2: Woman {some disj Woman0, Woman1, Woman2, Man0: Person {
Man = Man0
wife = Man0->Woman2
Woman = Woman0 + Woman1 + Woman2
husband = Woman2->Man0
Person = Woman0 + Woman1 + Woman2 + Man0
father = Woman1->Man0
mother = Woman0->Woman2 + Man0->Woman0
}}}

}
run test34 for 4
pred test35 {
some disj Man0, Man1: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0, Man1: Person {
Man = Man0 + Man1
wife = Man0->Woman1 + Man1->Woman0
Woman = Woman0 + Woman1
husband = Woman0->Man1 + Woman1->Man0
Person = Woman0 + Woman1 + Man0 + Man1
father = Man1->Man0
mother = Man0->Woman0
}}}

}
run test35 for 4
pred test36 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
father = Woman0->Man0 + Woman1->Man0
mother = Woman0->Woman1
}}}

}
run test36 for 4
pred test37 {
some disj Man0: Man {some disj Woman0: Woman {some disj Woman0, Man0: Person {
Man = Man0
no wife
Woman = Woman0
no husband
Person = Woman0 + Man0
father = Woman0->Man0
no mother
}}}

}
run test37 for 4
pred test38 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
father = Woman1->Man0
mother = Woman1->Woman0
}}}

}
run test38 for 4
pred test39 {
some disj Man0: Man {some disj Woman0, Woman1: Woman {some disj Woman0, Woman1, Man0: Person {
Man = Man0
wife = Man0->Woman1
Woman = Woman0 + Woman1
husband = Woman1->Man0
Person = Woman0 + Woman1 + Man0
father = Woman0->Man0
mother = Woman1->Woman0
}}}

}
run test39 for 4
pred test40 {
some disj Man0, Man1, Man2: Man {some disj Woman0: Woman {some disj Woman0, Man0, Man1, Man2: Person {
Man = Man0 + Man1 + Man2
wife = Man2->Woman0
Woman = Woman0
husband = Woman0->Man2
Person = Woman0 + Man0 + Man1 + Man2
father = Woman0->Man1 + Man1->Man2
no mother
}}}

}
run test40 for 4
