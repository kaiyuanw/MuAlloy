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

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test3 for 4
pred test4 {
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
run test4 for 4
pred test5 {
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
run test5 for 4
pred test6 {
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
run test6 for 4
pred test7 {
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
run test7 for 4
pred test8 {
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
run test8 for 4
pred test9 {
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
run test9 for 4
pred test10 {
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
run test10 for 4
pred test11 {
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
run test11 for 4
pred test12 {
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
run test12 for 4
pred test13 {
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
}}
}
run test14 for 4
pred test15 {
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
run test15 for 4
pred test16 {
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
run test16 for 4
pred test17 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test17 for 4
pred test18 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test18 for 4
pred test19 {
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
run test19 for 4
pred test20 {
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
run test20 for 4
pred test21 {
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
run test21 for 4
pred test22 {
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
run test22 for 4
pred test23 {
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
run test23 for 4
pred test24 {
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
run test24 for 4
pred test25 {
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
run test25 for 4
pred test26 {
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
run test26 for 4
pred test27 {
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
run test27 for 4
pred test28 {
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
run test28 for 4
pred test29 {
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
run test29 for 4
pred test30 {
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
run test30 for 4
pred test31 {
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
run test31 for 4
pred test32 {
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
run test32 for 4
pred test33 {
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
run test33 for 4
pred test34 {
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
run test34 for 4
pred test35 {
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
run test35 for 4
pred test36 {
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
run test36 for 4
pred test37 {
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
run test37 for 4
pred test38 {
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
run test38 for 4
pred test39 {
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
run test39 for 4
pred test40 {
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
run test40 for 4
pred test41 {
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
run test41 for 4
pred test42 {
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
run test42 for 4
pred test43 {
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
run test43 for 4
pred test44 {
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
run test44 for 4
pred test45 {
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
run test45 for 4
pred test46 {
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
run test46 for 4
pred test47 {
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
run test47 for 4
pred test48 {
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
run test48 for 4
pred test49 {
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
run test49 for 4
pred test50 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test50 for 4
pred test51 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test51 for 4
pred test52 {
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
run test52 for 4
pred test53 {
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
run test53 for 4
pred test54 {
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
run test54 for 4
pred test55 {
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
run test55 for 4
pred test56 {
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
run test56 for 4
pred test57 {
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
run test57 for 4
pred test58 {
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
run test58 for 4
pred test59 {
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
run test59 for 4
pred test60 {
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
run test60 for 4
pred test61 {
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
run test61 for 4
pred test62 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test62 for 4
pred test63 {
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
run test63 for 4
pred test64 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test64 for 4
pred test65 {
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
run test65 for 4
pred test66 {
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
run test66 for 4
pred test67 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test67 for 4
pred test68 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test68 for 4
pred test69 {
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
run test69 for 4
pred test70 {
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
run test70 for 4
pred test71 {
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
run test71 for 4
pred test72 {
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
run test72 for 4
pred test73 {
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
run test73 for 4
pred test74 {
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
run test74 for 4
pred test75 {
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
run test75 for 4
pred test76 {
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
run test76 for 4
pred test77 {
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
run test77 for 4
pred test78 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test78 for 4
pred test79 {

no Man
no wife
no Woman
no husband
no Person
no father
no mother

}
run test79 for 4
pred test80 {
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
run test80 for 4
pred test81 {
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
run test81 for 4
pred test82 {
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
run test82 for 4
pred test83 {
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
run test83 for 4
pred test84 {
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
run test84 for 4
pred test85 {
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
run test85 for 4
pred test86 {
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
run test86 for 4
pred test87 {
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
run test87 for 4
