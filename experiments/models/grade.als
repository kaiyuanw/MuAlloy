/*   Dan Dougherty, 12/16

Alloy gradebook spec, with some names changed:
Each relation is now denoted by (i) using an appropriate legal English verb-phrase, then
(ii)  eliding "is" is for concision. 
This facilitates matching English translation to spec.

Also: rephrased assertion as an implication.
*/

abstract sig Person {}
sig Student extends Person {}
sig Professor extends Person {}
sig Class {
	assistant_for: set Student,   // as in : "is TA for"
	instructor_of: one Professor
}
sig Assignment {
	associated_with: one Class,
	assigned_to: some Student
}

pred PolicyAllowsGrading(s: Person, a: Assignment) {
	s in a.associated_with.assistant_for or s in a.associated_with.instructor_of
}
assert NoOneCanGradeTheirOwnAssignment {
	all s : Person | all a: Assignment | PolicyAllowsGrading[s, a] implies not s in a.assigned_to 
}

check NoOneCanGradeTheirOwnAssignment

/*

The specification
-----------------

We consider 3 classes:

- Persons
- Classes
- Assignments

The class of Persons is partitioned into 2 non-overlapping subclasses:

- Students
- Professors

We make the following assumptions:

1. For each Class there is a single Professor who is the instructor_of it.

2. For each Class there is a set of Students who are the assistants_for it.

3. For each Assignment there is a single Class associated_with it

4. For each Assignment there is a set of Students assigned_to it.

5. A Person can_grade an Assignment only if either the
    person is an assistant_for the  Class associated_with the Assignment
    or the Person is the Professor who is the instructor_of that
    Class.

The assertion
--------------
 
Here is the assertion that we thought would be true:

* There cannot exist a Person who is allowed to grade an Assignment
  asigned_to them.


--------------------------------------------------------------

Notes/Qs
----------

Why was the PolicyAllowsGrading specified as a pred rather than a
fact?   If a fact then NoOneCanGradeTheirOwnAssignment 
is easier to state.   

*/
