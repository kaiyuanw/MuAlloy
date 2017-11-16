/*
Further simplification of Dan's work
access is granted to all assigned groups. 
problem: employee can grant a key to themselves, not just researchers
fix: restrict keys to researchers
*/

//rooms
sig Room {}
one sig secure_lab extends Room {}

//people
abstract sig Person {
  owns : set Key
}
sig Employee extends Person {}
sig Researcher extends Person {}

// access
sig Key {
  authorized: one Employee,
  opened_by: one Room
}

pred CanEnter(p: Person, r:Room) {
	r in p.owns.opened_by
}

// assertion
assert no_thief_in_seclab {
  all p : Person | CanEnter[p, secure_lab] implies p in Researcher
}
check no_thief_in_seclab

/*

The specification
-----------------

We consider 3 classes:
- Persons
- Keys
- Rooms

There is one room in particular: the secure_lab.

The class of Persons is partitioned into 2 non-overlapping subclasses:
- Employees
- Researchers

We make the following assumptions:

1. Each person owns a set of Keys. 

2. For each Key there is one Employee who authorized it being given out.

3. For each Key there is one Room opened_by it.

4. A Person can_enter a Room only if the Room is opened_by a Key the Person owns.

The assertion
--------------
 
Here is the assertion that we thought would be true:

* Each person that can_enter the secure_lab is a Researcher.


--------------------------------------------------------------
*/
