pred test1 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
no Employee
no Researcher
no Person
no owns
no Key
no authorized
no opened_by
}}

}
run test1 for 3
pred test2 {
some disj Room0: Room {some disj Employee0: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0: Person {some disj Key0, Key1, Key2: Key {
no secure_lab
Room = Room0
Employee = Employee0
Researcher = Researcher0
Person = Researcher0 + Employee0
owns = Researcher0->Key0 + Researcher0->Key1 + Researcher0->Key2
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->Room0
}}}}}

}
run test2 for 3
pred test3 {
some disj secure_lab0, secure_lab1: secure_lab {some disj secure_lab0, secure_lab1: Room {some disj Employee0, Employee1: Employee {some disj Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0 + secure_lab1
Room = secure_lab0 + secure_lab1
Employee = Employee0 + Employee1
no Researcher
Person = Employee0 + Employee1
owns = Employee0->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee1 + Key2->Employee0
opened_by = Key0->secure_lab0 + Key1->secure_lab0 + Key2->secure_lab0
}}}}}

}
run test3 for 3
pred test4 {
some disj Room0: Room {some disj Employee0: Employee {some disj Researcher0, Researcher1: Researcher {some disj Researcher0, Researcher1, Employee0: Person {some disj Key0, Key1, Key2: Key {
no secure_lab
Room = Room0
Employee = Employee0
Researcher = Researcher0 + Researcher1
Person = Researcher0 + Researcher1 + Employee0
owns = Researcher0->Key2 + Researcher1->Key1 + Employee0->Key0
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->Room0
}}}}}

}
run test4 for 3
pred test5 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0, Employee1: Person {some disj Key0, Key1: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Researcher0 + Employee0 + Employee1
owns = Researcher0->Key1 + Employee0->Key0
Key = Key0 + Key1
authorized = Key0->Employee1 + Key1->Employee0
opened_by = Key0->Room0 + Key1->secure_lab0
}}}}}}

}
run test5 for 3
pred test6 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0
Researcher = Researcher0
Person = Researcher0 + Employee0
owns = Researcher0->Key0 + Researcher0->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}}

}
run test6 for 3
pred test7 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0, Room1: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0 + Room1
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Researcher0 + Employee0 + Employee1
owns = Researcher0->Key1 + Researcher0->Key2 + Employee0->Key0 + Employee0->Key2 + Employee1->Key0 + Employee1->Key1 + Employee1->Key2
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room1 + Key1->Room0 + Key2->Room0
}}}}}}

}
run test7 for 3
pred test8 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0: Employee {some disj Researcher0, Researcher1: Researcher {some disj Researcher0, Employee0, Researcher1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0
Researcher = Researcher0 + Researcher1
Person = Researcher0 + Employee0 + Researcher1
owns = Employee0->Key0 + Employee0->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}}

}
run test8 for 3
pred test9 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1, Employee2: Employee {some disj Employee0, Employee1, Employee2: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1 + Employee2
no Researcher
Person = Employee0 + Employee1 + Employee2
owns = Employee0->Key0 + Employee1->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee2 + Key1->Employee1 + Key2->Employee1
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}

}
run test9 for 3
pred test10 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Researcher0: Researcher {some disj Researcher0: Person {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
no Employee
Researcher = Researcher0
Person = Researcher0
no owns
no Key
no authorized
no opened_by
}}}}

}
run test10 for 3
pred test11 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0: Employee {some disj Researcher0, Researcher1: Researcher {some disj Researcher0, Researcher1, Employee0: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0
Researcher = Researcher0 + Researcher1
Person = Researcher0 + Researcher1 + Employee0
owns = Researcher0->Key2 + Researcher1->Key0 + Researcher1->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}}

}
run test11 for 3
pred test12 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
no Researcher
Person = Employee0 + Employee1
owns = Employee0->Key1 + Employee1->Key0
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee1 + Key2->Employee1
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}

}
run test12 for 3
pred test13 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0: Employee {some disj Employee0: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0
no Researcher
Person = Employee0
owns = Employee0->Key0 + Employee0->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee0 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}

}
run test13 for 3
pred test14 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
no Researcher
Person = Employee0 + Employee1
owns = Employee0->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
}}}}}

}
run test14 for 3
pred test15 {
some disj secure_lab0: secure_lab {some disj secure_lab0: Room {
secure_lab = secure_lab0
Room = secure_lab0
no Employee
no Researcher
no Person
no owns
no Key
no authorized
no opened_by
}}

}
run test15 for 3
pred test16 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Researcher0: Researcher {some disj Researcher0: Person {some disj Key0: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
no Employee
Researcher = Researcher0
Person = Researcher0
no owns
Key = Key0
no authorized
opened_by = Key0->Room0
}}}}}

}
run test16 for 3
pred test17 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Researcher0 + Employee0 + Employee1
owns = Researcher0->Key1 + Employee0->Key0
Key = Key0 + Key1 + Key2
authorized = Key1->Employee1 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->Room0
}}}}}}

}
run test17 for 3
pred test18 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Employee0, Employee1: Person {some disj Key0: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
no Researcher
Person = Employee0 + Employee1
owns = Employee0->Key0 + Employee1->Key0
Key = Key0
authorized = Key0->Employee0 + Key0->Employee1
opened_by = Key0->Room0
}}}}}

}
run test18 for 3
pred test19 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0, Room1: Room {some disj Employee0: Employee {some disj Employee0: Person {some disj Key0: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0 + Room1
Employee = Employee0
no Researcher
Person = Employee0
no owns
Key = Key0
authorized = Key0->Employee0
opened_by = Key0->secure_lab0 + Key0->Room0 + Key0->Room1
}}}}}

}
run test19 for 3
pred test20 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1, Employee2: Employee {some disj Employee0, Employee1, Employee2: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1 + Employee2
no Researcher
Person = Employee0 + Employee1 + Employee2
owns = Employee0->Key0 + Employee0->Key2 + Employee1->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee2 + Key1->Employee1 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0
}}}}}

}
run test20 for 3
pred test21 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0: Employee {some disj Employee0: Person {some disj Key0: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0
no Researcher
Person = Employee0
no owns
Key = Key0
authorized = Key0->Employee0
opened_by = Key0->secure_lab0 + Key0->Room0
}}}}}

}
run test21 for 3
pred test22 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0, Room1: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0 + Room1
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Researcher0 + Employee0 + Employee1
owns = Researcher0->Key1 + Employee0->Key0 + Employee0->Key2 + Employee1->Key1 + Employee1->Key2
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee1 + Key2->Employee0
opened_by = Key0->Room1 + Key1->secure_lab0 + Key2->Room0
CanEnter[Employee1,secure_lab0]
}}}}}}

}
run test22 for 3
pred test23 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Researcher0: Researcher {some disj Researcher0: Person {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
no Employee
Researcher = Researcher0
Person = Researcher0
no owns
no Key
no authorized
no opened_by
CanEnter[Researcher0,Room0]
}}}}

}
run test23 for 3
pred test24 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Researcher0, Employee0, Employee1: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Researcher0 + Employee0 + Employee1
owns = Researcher0->Key1 + Employee0->Key0 + Employee0->Key2 + Employee1->Key1
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
CanEnter[Employee1,Room0]
}}}}}}

}
run test24 for 3
pred test25 {
some disj secure_lab0: secure_lab {some disj secure_lab0, Room0: Room {some disj Employee0, Employee1: Employee {some disj Researcher0: Researcher {some disj Employee0, Employee1, Researcher0: Person {some disj Key0, Key1, Key2: Key {
secure_lab = secure_lab0
Room = secure_lab0 + Room0
Employee = Employee0 + Employee1
Researcher = Researcher0
Person = Employee0 + Employee1 + Researcher0
owns = Employee0->Key1 + Employee1->Key0 + Employee1->Key2
Key = Key0 + Key1 + Key2
authorized = Key0->Employee1 + Key1->Employee0 + Key2->Employee0
opened_by = Key0->Room0 + Key1->Room0 + Key2->secure_lab0
CanEnter[Researcher0,Room0]
}}}}}}

}
run test25 for 3
