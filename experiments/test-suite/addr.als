pred test1 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0
listed = Book0->Name1->Address0 + Book0->Name2->Name1 + Book1->Name0->Address0
}}}}
}
run test1 for 4
pred test2 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0
listed = Book0->Name1->Address0 + Book0->Name2->Name1 + Book1->Name0->Address0
}}}}
}
run test2 for 4
pred test3 {
some disj Book0: Book {
no Address
no Name
no Listing
Book = Book0
no entry
no listed
}
}
run test3 for 4
pred test4 {
some disj Address0, Address1: Address {some disj Name0: Name {some disj Name0, Address0, Address1: Listing {
Address = Address0 + Address1
Name = Name0
Listing = Name0 + Address0 + Address1
no Book
no entry
no listed
}}}
}
run test4 for 4
pred test5 {
some disj Name0: Name {some disj Name0: Listing {
no Address
Name = Name0
Listing = Name0
no Book
no entry
no listed
}}
}
run test5 for 4
pred test6 {
some disj Name0, Name1: Name {some disj Name0, Name1: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1
Listing = Name0 + Name1
Book = Book0 + Book1
entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1
listed = Book0->Name1->Name0 + Book1->Name0->Name1
}}}
}
run test6 for 4
pred test7 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0
}}}}
}
run test7 for 4
pred test8 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0
}}}}
}
run test8 for 4
pred test9 {

no Address
no Name
no Listing
no Book
no entry
no listed

}
run test9 for 4
pred test10 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0, Book1, Book2, Book3: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0 + Book1 + Book2 + Book3
entry = Book0->Name2 + Book0->Name3 + Book1->Name1 + Book2->Name0 + Book2->Name1 + Book2->Name3 + Book3->Name0 + Book3->Name1 + Book3->Name3
listed = Book0->Name3->Name2 + Book2->Name1->Name0 + Book2->Name3->Name1 + Book3->Name0->Name1 + Book3->Name1->Name3
}}}
}
run test10 for 4
pred test11 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0
listed = Book0->Name1->Address0 + Book0->Name2->Name1 + Book1->Name0->Address0
}}}}
}
run test11 for 4
pred test12 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {
Address = Address0
Name = Name0
Listing = Name0 + Address0
no Book
no entry
no listed
}}}
}
run test12 for 4
pred test13 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name2
listed = Book0->Name1->Name2 + Book0->Name2->Address0
}}}}
}
run test13 for 4
pred test14 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0
Listing = Name0 + Address0
Book = Book0 + Book1
entry = Book0->Name0
listed = Book0->Name0->Address0
}}}}
}
run test14 for 4
pred test15 {
some disj Address0: Address {some disj Address0: Listing {some disj Book0: Book {
Address = Address0
no Name
Listing = Address0
Book = Book0
no entry
no listed
}}}
}
run test15 for 4
pred test16 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Address0, Name1: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Address0 + Name1
Book = Book0 + Book1
entry = Book0->Name1 + Book1->Name0
listed = Book0->Name1->Address0
lookup[Book1,Name1] = none
}}}}
}
run test16 for 4
pred test17 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Address0, Name2: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Address0 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Address0 + Book0->Name1->Name0 + Book0->Name2->Name1
lookup[Book0,Name2] = Name0 + Name1 + Address0
}}}}
}
run test17 for 4
pred test18 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0, Book1, Book2: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0 + Book1 + Book2
entry = Book0->Name1 + Book0->Name2 + Book0->Name3 + Book1->Name0 + Book2->Name0
listed = Book0->Name1->Name3 + Book0->Name2->Name1
}}}
}
run test18 for 4
pred test19 {
some disj Address0, Address1, Address2: Address {some disj Name0: Name {some disj Name0, Address0, Address1, Address2: Listing {some disj Book0: Book {
Address = Address0 + Address1 + Address2
Name = Name0
Listing = Name0 + Address0 + Address1 + Address2
Book = Book0
entry = Book0->Name0
listed = Book0->Name0->Address0 + Book0->Name0->Address1 + Book0->Name0->Address2
}}}}
}
run test19 for 4
pred test20 {

no Address
no Name
no Listing
no Book
no entry
no listed

}
run test20 for 4
pred test21 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {
Address = Address0
Name = Name0
Listing = Name0 + Address0
no Book
no entry
no listed
}}}
}
run test21 for 4
pred test22 {
some disj Address0, Address1: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0, Address1: Listing {some disj Book0, Book1, Book2, Book3: Book {
Address = Address0 + Address1
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0 + Address1
Book = Book0 + Book1 + Book2 + Book3
entry = Book0->Name1 + Book1->Name1 + Book2->Name0 + Book3->Name0 + Book3->Name1
listed = Book0->Name1->Address0 + Book0->Name1->Address1 + Book1->Name1->Address0 + Book1->Name1->Address1 + Book2->Name0->Address0 + Book2->Name0->Address1 + Book3->Name0->Address0 + Book3->Name0->Address1 + Book3->Name1->Name0 + Book3->Name1->Address0 + Book3->Name1->Address1
}}}}
}
run test22 for 4
pred test23 {
some disj Address0, Address1: Address {some disj Name0: Name {some disj Name0, Address0, Address1: Listing {some disj Book0: Book {
Address = Address0 + Address1
Name = Name0
Listing = Name0 + Address0 + Address1
Book = Book0
entry = Book0->Name0
listed = Book0->Name0->Address0 + Book0->Name0->Address1
}}}}
}
run test23 for 4
pred test24 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {some disj Book0, Book1, Book2, Book3: Book {
Address = Address0
Name = Name0
Listing = Name0 + Address0
Book = Book0 + Book1 + Book2 + Book3
no entry
no listed
}}}}
}
run test24 for 4
pred test25 {
some disj Address0, Address1: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0, Address1: Listing {some disj Book0, Book1, Book2, Book3: Book {
Address = Address0 + Address1
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0 + Address1
Book = Book0 + Book1 + Book2 + Book3
entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1 + Book2->Name0 + Book2->Name1 + Book3->Name0 + Book3->Name1
listed = Book0->Name1->Name0 + Book0->Name1->Address0 + Book0->Name1->Address1 + Book1->Name1->Name0 + Book1->Name1->Address0 + Book1->Name1->Address1 + Book2->Name1->Name0 + Book2->Name1->Address0 + Book2->Name1->Address1 + Book3->Name1->Name0 + Book3->Name1->Address0 + Book3->Name1->Address1
}}}}
}
run test25 for 4
pred test26 {
some disj Address0, Address1: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0, Address1: Listing {some disj Book0: Book {
Address = Address0 + Address1
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0 + Address1
Book = Book0
entry = Book0->Name0 + Book0->Name1
no listed
}}}}
}
run test26 for 4
pred test27 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0, Book1, Book2, Book3: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0 + Book1 + Book2 + Book3
entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1 + Book2->Name0 + Book2->Name1 + Book3->Name0 + Book3->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0 + Book0->Name1->Address0 + Book1->Name0->Address0 + Book1->Name1->Name0 + Book1->Name1->Address0 + Book2->Name0->Address0 + Book2->Name1->Name0 + Book2->Name1->Address0 + Book3->Name0->Name1 + Book3->Name0->Address0 + Book3->Name1->Address0
}}}}
}
run test27 for 4
pred test28 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name1
listed = Book0->Name1->Address0
}}}}
}
run test28 for 4
pred test29 {
some disj Book0: Book {
no Address
no Name
no Listing
Book = Book0
no entry
no listed
}
}
run test29 for 4
pred test30 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name1
listed = Book0->Name1->Name0
}}}}
}
run test30 for 4
pred test31 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {
Address = Address0
Name = Name0
Listing = Name0 + Address0
no Book
no entry
no listed
}}}
}
run test31 for 4
pred test32 {

no Address
no Name
no Listing
no Book
no entry
no listed

}
run test32 for 4
pred test33 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0, Book1, Book2: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0 + Book1 + Book2
no entry
no listed
}}}
}
run test33 for 4
pred test34 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0 + Book1
entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0 + Book1->Name0->Name1 + Book1->Name1->Address0
}}}}
}
run test34 for 4
pred test35 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0 + Book1
entry = Book0->Name0 + Book0->Name1 + Book1->Name0 + Book1->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0 + Book1->Name0->Name1 + Book1->Name1->Address0
}}}}
}
run test35 for 4
pred test36 {
some disj Name0, Name1: Name {some disj Name0, Name1: Listing {some disj Book0, Book1, Book2: Book {
no Address
Name = Name0 + Name1
Listing = Name0 + Name1
Book = Book0 + Book1 + Book2
entry = Book0->Name1 + Book1->Name1 + Book2->Name0
listed = Book0->Name1->Name0 + Book1->Name1->Name0 + Book2->Name0->Name1
}}}
}
run test36 for 4
pred test37 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0
}}}}
}
run test37 for 4
pred test38 {
some disj Address0: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Address0 + Book0->Name1->Name0
}}}}
}
run test38 for 4
pred test39 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0
Listing = Name0 + Address0
Book = Book0
no entry
no listed
}}}}
}
run test39 for 4
pred test40 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name1 + Book1->Name2
listed = Book0->Name1->Address0 + Book0->Name2->Name1 + Book1->Name1->Address0 + Book1->Name2->Name1
}}}}
}
run test40 for 4
pred test41 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0
listed = Book0->Name1->Address0 + Book0->Name2->Name1
}}}}
}
run test41 for 4
pred test42 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2 + Book0->Name3
listed = Book0->Name1->Name0 + Book0->Name2->Name0 + Book0->Name3->Name0
}}}
}
run test42 for 4
pred test43 {
some disj Name0, Name1: Name {some disj Name0, Name1: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1
Listing = Name0 + Name1
Book = Book0 + Book1
entry = Book0->Name1 + Book1->Name0
listed = Book0->Name1->Name0 + Book1->Name0->Name1
}}}
}
run test43 for 4
pred test44 {
some disj Address0, Address1: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0, Address1: Listing {some disj Book0: Book {
Address = Address0 + Address1
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0 + Address1
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Address1 + Book0->Name1->Name0
}}}}
}
run test44 for 4
pred test45 {
some disj Address0: Address {some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2, Address0: Listing {some disj Book0, Book1: Book {
Address = Address0
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2 + Address0
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name2
listed = Book0->Name1->Address0 + Book0->Name2->Name1 + Book1->Name0->Address0 + Book1->Name2->Address0
}}}}
}
run test45 for 4
pred test46 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Name2 + Book0->Name1->Name0 + Book0->Name2->Name2
}}}
}
run test46 for 4
pred test47 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0 + Book1
entry = Book0->Name0 + Book0->Name1 + Book0->Name2 + Book0->Name3 + Book1->Name0 + Book1->Name1 + Book1->Name2 + Book1->Name3
listed = Book0->Name0->Name3 + Book0->Name1->Name1 + Book0->Name2->Name2 + Book0->Name3->Name2 + Book1->Name0->Name2 + Book1->Name1->Name3 + Book1->Name2->Name2 + Book1->Name3->Name1
}}}
}
run test47 for 4
pred test48 {
some disj Name0, Name1, Name2, Name3: Name {some disj Name0, Name1, Name2, Name3: Listing {some disj Book0, Book1, Book2, Book3: Book {
no Address
Name = Name0 + Name1 + Name2 + Name3
Listing = Name0 + Name1 + Name2 + Name3
Book = Book0 + Book1 + Book2 + Book3
entry = Book0->Name3 + Book1->Name2 + Book2->Name2 + Book2->Name3 + Book3->Name0 + Book3->Name1 + Book3->Name2 + Book3->Name3
listed = Book1->Name2->Name2 + Book2->Name2->Name2 + Book2->Name3->Name2 + Book3->Name0->Name3 + Book3->Name1->Name0 + Book3->Name2->Name2 + Book3->Name3->Name1
}}}
}
run test48 for 4
pred test49 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0 + Book1
entry = Book1->Name0 + Book1->Name1 + Book1->Name2
listed = Book1->Name0->Name2 + Book1->Name1->Name0 + Book1->Name2->Name2
}}}
}
run test49 for 4
pred test50 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Name2 + Book0->Name1->Name1 + Book0->Name2->Name0
}}}
}
run test50 for 4
pred test51 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name1 + Book1->Name2
listed = Book0->Name2->Name2 + Book1->Name0->Name0 + Book1->Name1->Name1 + Book1->Name2->Name0
}}}
}
run test51 for 4
pred test52 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0, Book1: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0 + Book1
entry = Book0->Name1 + Book0->Name2 + Book1->Name0 + Book1->Name1 + Book1->Name2
listed = Book0->Name2->Name2 + Book1->Name0->Name0 + Book1->Name1->Name1 + Book1->Name2->Name0
}}}
}
run test52 for 4
pred test53 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Name2 + Book0->Name1->Name0 + Book0->Name2->Name2
}}}
}
run test53 for 4
pred test54 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Name2 + Book0->Name1->Name1 + Book0->Name2->Name0
}}}
}
run test54 for 4
pred test55 {
some disj Address0, Address1: Address {some disj Name0, Name1: Name {some disj Name0, Name1, Address0, Address1: Listing {some disj Book0: Book {
Address = Address0 + Address1
Name = Name0 + Name1
Listing = Name0 + Name1 + Address0 + Address1
Book = Book0
entry = Book0->Name0 + Book0->Name1
listed = Book0->Name0->Name1 + Book0->Name1->Name0
}}}}
}
run test55 for 4
pred test56 {
some disj Address0: Address {some disj Name0: Name {some disj Name0, Address0: Listing {some disj Book0: Book {
Address = Address0
Name = Name0
Listing = Name0 + Address0
Book = Book0
entry = Book0->Name0
listed = Book0->Name0->Name0
}}}}
}
run test56 for 4
pred test57 {
some disj Name0, Name1, Name2: Name {some disj Name0, Name1, Name2: Listing {some disj Book0: Book {
no Address
Name = Name0 + Name1 + Name2
Listing = Name0 + Name1 + Name2
Book = Book0
entry = Book0->Name0 + Book0->Name1 + Book0->Name2
listed = Book0->Name0->Name2 + Book0->Name1->Name1 + Book0->Name2->Name0
}}}
}
run test57 for 4
pred test58 {
some disj Address0, Address1, Address2: Address {some disj Name0: Name {some disj Name0, Address0, Address1, Address2: Listing {some disj Book0, Book1, Book2: Book {
Address = Address0 + Address1 + Address2
Name = Name0
Listing = Name0 + Address0 + Address1 + Address2
Book = Book0 + Book1 + Book2
entry = Book0->Name0 + Book1->Name0 + Book2->Name0
no listed
}}}}
}
run test58 for 4
