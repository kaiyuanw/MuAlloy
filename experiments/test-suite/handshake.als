pred test27 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person0 + Jocelyn0->Person1 + Person0->Jocelyn0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test27 for 5 expect 0
pred test80 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test80 for 5 expect 0
pred test55 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test55 for 5 expect 1
pred test14 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test14 for 5 expect 1
pred test34 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Jocelyn0
}}}
}
run test34 for 5 expect 0
pred test69 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test69 for 5 expect 1
pred test72 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
}}}
}
run test72 for 5 expect 1
pred test91 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test91 for 5 expect 0
pred test8 {
some disj Hilary0: Hilary {some disj Hilary0, Person0, Person1, Person2: Person {
no Jocelyn
Hilary = Hilary0
Person = Hilary0 + Person0 + Person1 + Person2
spouse = Hilary0->Person0 + Person0->Hilary0 + Person1->Person2 + Person2->Person1
shaken = Hilary0->Person1 + Hilary0->Person2 + Person0->Person2 + Person1->Hilary0 + Person2->Hilary0 + Person2->Person0
}}
}
run test8 for 5 expect 0
pred test62 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
shaken = Jocelyn0->Hilary0 + Jocelyn0->Person1 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Jocelyn0 + Person1->Person0
}}}
}
run test62 for 5 expect 1
pred test85 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test85 for 5 expect 1
pred test46 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test46 for 5 expect 1
pred test47 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
shaken = Person0->Person1 + Person1->Person0
}}}
}
run test47 for 5 expect 1
pred test81 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test81 for 5 expect 0
pred test77 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test77 for 5 expect 1
pred test23 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test23 for 5 expect 0
pred test35 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test35 for 5 expect 1
pred test82 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test82 for 5 expect 1
pred test50 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test50 for 5 expect 1
pred test66 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test66 for 5 expect 0
pred test1 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test1 for 5 expect 1
pred test67 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test67 for 5 expect 1
pred test88 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test88 for 5 expect 1
pred test32 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test32 for 5 expect 1
pred test58 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
shaken = Jocelyn0->Person1 + Person1->Jocelyn0
}}}
}
run test58 for 5 expect 1
pred test17 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test17 for 5 expect 0
pred test83 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test83 for 5 expect 0
pred test63 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Hilary0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Jocelyn0
}}}
}
run test63 for 5 expect 0
pred test42 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test42 for 5 expect 1
pred test57 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test57 for 5 expect 1
pred test44 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Jocelyn0
}}}
}
run test44 for 5 expect 0
pred test64 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person0 + Jocelyn0->Person1 + Hilary0->Person1 + Person0->Hilary0 + Person1->Jocelyn0
}}}
}
run test64 for 5 expect 0
pred test21 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test21 for 5 expect 1
pred test30 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test30 for 5 expect 1
pred test37 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Jocelyn0
}}}
}
run test37 for 5 expect 0
pred test10 {
some disj Jocelyn0: Jocelyn {some disj Hilary0, Hilary1: Hilary {some disj Jocelyn0, Person0, Hilary0, Hilary1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0 + Hilary1
Person = Jocelyn0 + Person0 + Hilary0 + Hilary1
spouse = Jocelyn0->Hilary0 + Person0->Hilary1 + Hilary0->Jocelyn0 + Hilary1->Person0
shaken = Jocelyn0->Person0 + Person0->Jocelyn0 + Person0->Hilary0 + Hilary0->Person0
}}}
}
run test10 for 5 expect 0
pred test43 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test43 for 5 expect 1
pred test26 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test26 for 5 expect 1
pred test78 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test78 for 5 expect 1
pred test92 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test92 for 5 expect 0
pred test22 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test22 for 5 expect 1
pred test73 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
}}}
}
run test73 for 5 expect 1
pred test7 {
some disj Jocelyn0, Jocelyn1: Jocelyn {some disj Hilary0: Hilary {some disj Hilary0, Person0, Jocelyn0, Jocelyn1: Person {
Jocelyn = Jocelyn0 + Jocelyn1
Hilary = Hilary0
Person = Hilary0 + Person0 + Jocelyn0 + Jocelyn1
spouse = Hilary0->Jocelyn0 + Person0->Jocelyn1 + Jocelyn0->Hilary0 + Jocelyn1->Person0
shaken = Hilary0->Person0 + Person0->Hilary0 + Person0->Jocelyn0 + Jocelyn0->Person0
}}}
}
run test7 for 5 expect 0
pred test3 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
shaken = Jocelyn0->Hilary0 + Jocelyn0->Person1 + Hilary0->Jocelyn0 + Person1->Jocelyn0
}}}
}
run test3 for 5 expect 1
pred test28 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test28 for 5 expect 1
pred test61 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person0->Person1 + Person1->Jocelyn0 + Person1->Person0
}}}
}
run test61 for 5 expect 1
pred test71 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test71 for 5 expect 1
pred test13 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test13 for 5 expect 1
pred test24 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test24 for 5 expect 0
pred test84 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0
spouse = Jocelyn0->Jocelyn0 + Hilary0->Hilary0 + Person0->Person0
shaken = Jocelyn0->Person0 + Hilary0->Person0 + Person0->Jocelyn0 + Person0->Hilary0
}}}
}
run test84 for 5 expect 0
pred test12 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
shaken = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Hilary0->Person1 + Person1->Hilary0
Puzzle[]
}}}
}
run test12 for 5 expect 0
pred test86 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test86 for 5 expect 1
pred test18 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test18 for 5 expect 1
pred test51 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Hilary0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Jocelyn0
}}}
}
run test51 for 5 expect 0
pred test6 {
some disj Hilary0: Hilary {some disj Hilary0, Person0, Person1, Person2: Person {
no Jocelyn
Hilary = Hilary0
Person = Hilary0 + Person0 + Person1 + Person2
spouse = Hilary0->Person1 + Person0->Person2 + Person1->Hilary0 + Person2->Person0
shaken = Hilary0->Person2 + Person2->Hilary0
}}
}
run test6 for 5 expect 0
pred test19 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test19 for 5 expect 0
pred test15 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test15 for 5 expect 1
pred test5 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test5 for 5 expect 1
pred test76 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test76 for 5 expect 1
pred test33 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test33 for 5 expect 1
pred test49 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test49 for 5 expect 1
pred test38 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Jocelyn0
}}}
}
run test38 for 5 expect 0
pred test25 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person1 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test25 for 5 expect 1
pred test70 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test70 for 5 expect 1
pred test4 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test4 for 5 expect 1
pred test87 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test87 for 5 expect 1
pred test36 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Jocelyn0
}}}
}
run test36 for 5 expect 0
pred test68 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test68 for 5 expect 1
pred test45 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
}}}
}
run test45 for 5 expect 0
pred test2 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test2 for 5 expect 1
pred test75 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test75 for 5 expect 1
pred test29 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person0 + Jocelyn0->Person1 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Jocelyn0 + Person1->Hilary0
Puzzle[]
}}}
}
run test29 for 5 expect 0
pred test53 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test53 for 5 expect 1
pred test65 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Jocelyn0 + Person1->Hilary0
}}}
}
run test65 for 5 expect 0
pred test31 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
Puzzle[]
}}}
}
run test31 for 5 expect 1
pred test74 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test74 for 5 expect 1
pred test9 {
some disj Jocelyn0: Jocelyn {some disj Jocelyn0, Person0, Person1, Person2: Person {
Jocelyn = Jocelyn0
no Hilary
Person = Jocelyn0 + Person0 + Person1 + Person2
spouse = Jocelyn0->Person1 + Person0->Person2 + Person1->Jocelyn0 + Person2->Person0
shaken = Jocelyn0->Person2 + Person2->Jocelyn0
}}
}
run test9 for 5 expect 0
pred test39 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
shaken = Hilary0->Hilary0
}}}
}
run test39 for 5 expect 0
pred test41 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test41 for 5 expect 1
pred test48 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test48 for 5 expect 1
pred test52 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Hilary0->Person0 + Hilary0->Person1
}}}
}
run test52 for 5 expect 0
pred test56 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Hilary0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Jocelyn0
}}}
}
run test56 for 5 expect 0
pred test54 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test54 for 5 expect 1
pred test79 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test79 for 5 expect 1
pred test59 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person0 + Jocelyn0->Person1 + Hilary0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person0->Hilary0 + Person1->Jocelyn0 + Person1->Hilary0
}}}
}
run test59 for 5 expect 1
pred test90 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test90 for 5 expect 1
pred test20 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test20 for 5 expect 0
pred test60 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Person0 + Hilary0->Person1 + Person0->Jocelyn0 + Person1->Hilary0
shaken = Jocelyn0->Hilary0 + Person0->Hilary0 + Person1->Jocelyn0 + Person1->Person0
}}}
}
run test60 for 5 expect 0
pred test40 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test40 for 5 expect 1
pred test11 {
some disj Jocelyn0: Jocelyn {some disj Jocelyn0, Person0, Person1, Person2: Person {
Jocelyn = Jocelyn0
no Hilary
Person = Jocelyn0 + Person0 + Person1 + Person2
spouse = Jocelyn0->Person0 + Person0->Jocelyn0 + Person1->Person2 + Person2->Person1
shaken = Jocelyn0->Person1 + Jocelyn0->Person2 + Person0->Person2 + Person1->Jocelyn0 + Person2->Jocelyn0 + Person2->Person0
}}
}
run test11 for 5 expect 0
pred test16 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0, Person0, Person1: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0 + Person0 + Person1
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0 + Person0->Person1 + Person1->Person0
shaken = Jocelyn0->Person1 + Hilary0->Person0 + Person0->Hilary0 + Person1->Jocelyn0
Puzzle[]
}}}
}
run test16 for 5 expect 0
pred test89 {
some disj Jocelyn0: Jocelyn {some disj Hilary0: Hilary {some disj Jocelyn0, Hilary0: Person {
Jocelyn = Jocelyn0
Hilary = Hilary0
Person = Jocelyn0 + Hilary0
spouse = Jocelyn0->Hilary0 + Hilary0->Jocelyn0
no shaken
}}}
}
run test89 for 5 expect 1
