pred test1 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0 + Assignment1
associated_with = Assignment0->Class2 + Assignment1->Class2
assigned_to = Assignment0->Student0 + Assignment1->Student0
}}}}}

}
run test1 for 3
pred test2 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class2 + Assignment1->Class1 + Assignment2->Class1
assigned_to = Assignment0->Student0 + Assignment1->Student0 + Assignment2->Student0
}}}}}

}
run test2 for 3
pred test3 {

no Student
no Professor
no Person
no Class
no assistant_for
no instructor_of
no Assignment
no associated_with
no assigned_to


}
run test3 for 3
pred test4 {
some disj Student0, Student1: Student {some disj Student0, Student1: Person {
Student = Student0 + Student1
no Professor
Person = Student0 + Student1
no Class
no assistant_for
no instructor_of
no Assignment
no associated_with
no assigned_to
}}

}
run test4 for 3
pred test5 {
some disj Professor0, Professor1: Professor {some disj Professor0, Professor1: Person {
no Student
Professor = Professor0 + Professor1
Person = Professor0 + Professor1
no Class
no assistant_for
no instructor_of
no Assignment
no associated_with
no assigned_to
}}

}
run test5 for 3
pred test6 {
some disj Professor0, Professor1, Professor2: Professor {some disj Professor0, Professor1, Professor2: Person {
no Student
Professor = Professor0 + Professor1 + Professor2
Person = Professor0 + Professor1 + Professor2
no Class
no assistant_for
no instructor_of
no Assignment
no associated_with
no assigned_to
}}

}
run test6 for 3
pred test7 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
no assistant_for
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class2
assigned_to = Assignment0->Student0
}}}}}

}
run test7 for 3
pred test8 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class2 + Assignment1->Class2 + Assignment2->Class1
assigned_to = Assignment0->Student0 + Assignment1->Student0 + Assignment2->Student0
}}}}}

}
run test8 for 3
pred test9 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
no Class
no assistant_for
no instructor_of
no Assignment
no associated_with
no assigned_to
}}}

}
run test9 for 3
pred test10 {
some disj Student0, Student1: Student {some disj Professor0: Professor {some disj Student0, Student1, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0 + Student1
Professor = Professor0
Person = Student0 + Student1 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class0->Student1 + Class1->Student1 + Class2->Student0 + Class2->Student1
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class2 + Assignment1->Class2 + Assignment2->Class1
assigned_to = Assignment0->Student1 + Assignment1->Student1 + Assignment2->Student0 + Assignment2->Student1
}}}}}

}
run test10 for 3
pred test11 {
some disj Student0, Student1: Student {some disj Professor0: Professor {some disj Student0, Student1, Professor0: Person {some disj Class0: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0 + Student1
Professor = Professor0
Person = Student0 + Student1 + Professor0
Class = Class0
assistant_for = Class0->Student0 + Class0->Student1
instructor_of = Class0->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class0 + Assignment1->Class0 + Assignment2->Class0
assigned_to = Assignment0->Student1 + Assignment1->Student1 + Assignment2->Student1
}}}}}

}
run test11 for 3
pred test12 {
some disj Professor0: Professor {some disj Professor0: Person {some disj Class0: Class {
no Student
Professor = Professor0
Person = Professor0
Class = Class0
no assistant_for
instructor_of = Class0->Professor0
no Assignment
no associated_with
no assigned_to
}}}

}
run test12 for 3
pred test13 {
some disj Student0, Student1: Student {some disj Professor0: Professor {some disj Student0, Student1, Professor0: Person {some disj Class0: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0 + Student1
Professor = Professor0
Person = Student0 + Student1 + Professor0
Class = Class0
assistant_for = Class0->Student0
no instructor_of
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class0 + Assignment1->Class0 + Assignment2->Class0
assigned_to = Assignment0->Student1 + Assignment1->Student1 + Assignment2->Student1
}}}}}

}
run test13 for 3
pred test14 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0
no Assignment
no associated_with
no assigned_to
}}}}

}
run test14 for 3
pred test15 {
some disj Professor0, Professor1: Professor {some disj Professor0, Professor1: Person {some disj Class0, Class1, Class2: Class {
no Student
Professor = Professor0 + Professor1
Person = Professor0 + Professor1
Class = Class0 + Class1 + Class2
no assistant_for
instructor_of = Class0->Professor1 + Class1->Professor0 + Class2->Professor0 + Class2->Professor1
no Assignment
no associated_with
no assigned_to
}}}

}
run test15 for 3
pred test16 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
no Assignment
no associated_with
no assigned_to
}}}}

}
run test16 for 3
pred test17 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class1 + Assignment0->Class2 + Assignment1->Class0 + Assignment1->Class2 + Assignment2->Class0 + Assignment2->Class2
assigned_to = Assignment0->Student0 + Assignment1->Student0 + Assignment2->Student0
}}}}}

}
run test17 for 3
pred test18 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0
no associated_with
assigned_to = Assignment0->Student0
}}}}}

}
run test18 for 3
pred test19 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class0 + Assignment0->Class1 + Assignment0->Class2
assigned_to = Assignment0->Student0
}}}}}

}
run test19 for 3
pred test20 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class2
no assigned_to
}}}}}

}
run test20 for 3
pred test21 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0
no assistant_for
instructor_of = Class0->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class0
no assigned_to
}}}}}

}
run test21 for 3
pred test22 {
some disj Student0, Student1: Student {some disj Professor0: Professor {some disj Student0, Student1, Professor0: Person {some disj Class0: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0 + Student1
Professor = Professor0
Person = Student0 + Student1 + Professor0
Class = Class0
no assistant_for
instructor_of = Class0->Professor0
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class0 + Assignment1->Class0 + Assignment2->Class0
assigned_to = Assignment0->Student0 + Assignment0->Student1 + Assignment1->Student0 + Assignment1->Student1 + Assignment2->Student0 + Assignment2->Student1
}}}}}

}
run test22 for 3
pred test23 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0 + Class1 + Class2
assistant_for = Class0->Student0 + Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor0 + Class1->Professor0 + Class2->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class2
assigned_to = Assignment0->Student0
PolicyAllowsGrading[Professor0,Assignment0]
}}}}}

}
run test23 for 3
pred test24 {
some disj Student0, Student1: Student {some disj Professor0: Professor {some disj Student0, Professor0, Student1: Person {some disj Class0: Class {some disj Assignment0: Assignment {
Student = Student0 + Student1
Professor = Professor0
Person = Student0 + Professor0 + Student1
Class = Class0
assistant_for = Class0->Student0 + Class0->Student1
instructor_of = Class0->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class0
assigned_to = Assignment0->Student0 + Assignment0->Student1
PolicyAllowsGrading[Student1,Assignment0]
}}}}}

}
run test24 for 3
pred test25 {
some disj Student0: Student {some disj Professor0, Professor1: Professor {some disj Student0, Professor0, Professor1: Person {some disj Class0: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0 + Professor1
Person = Student0 + Professor0 + Professor1
Class = Class0
assistant_for = Class0->Student0
instructor_of = Class0->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class0
assigned_to = Assignment0->Student0
PolicyAllowsGrading[Professor1,Assignment0]
}}}}}

}
run test25 for 3
pred test26 {
some disj Student0: Student {some disj Professor0: Professor {some disj Professor0, Student0: Person {some disj Class0, Class1: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Professor0 + Student0
Class = Class0 + Class1
assistant_for = Class0->Student0
instructor_of = Class0->Professor0 + Class1->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class1
assigned_to = Assignment0->Student0
PolicyAllowsGrading[Student0,Assignment0]
}}}}}

}
run test26 for 3
pred test27 {
some disj Student0: Student {some disj Professor0, Professor1: Professor {some disj Professor0, Professor1, Student0: Person {some disj Class0, Class1, Class2: Class {some disj Assignment0, Assignment1, Assignment2: Assignment {
Student = Student0
Professor = Professor0 + Professor1
Person = Professor0 + Professor1 + Student0
Class = Class0 + Class1 + Class2
assistant_for = Class1->Student0 + Class2->Student0
instructor_of = Class0->Professor1 + Class1->Professor0 + Class2->Professor1
Assignment = Assignment0 + Assignment1 + Assignment2
associated_with = Assignment0->Class2 + Assignment1->Class1 + Assignment2->Class0
assigned_to = Assignment0->Student0 + Assignment1->Student0 + Assignment2->Student0
PolicyAllowsGrading[Student0,Assignment2]
}}}}}

}
run test27 for 3
pred test28 {
some disj Student0: Student {some disj Professor0: Professor {some disj Student0, Professor0: Person {some disj Class0: Class {some disj Assignment0: Assignment {
Student = Student0
Professor = Professor0
Person = Student0 + Professor0
Class = Class0
assistant_for = Class0->Student0
instructor_of = Class0->Professor0
Assignment = Assignment0
associated_with = Assignment0->Class0
assigned_to = Assignment0->Student0
PolicyAllowsGrading[Professor0,Assignment0]
}}}}}

}
run test28 for 3
