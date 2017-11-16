/* Specification */
// types (only relations, sigs/universe, preds assumed fix)
abstract sig Listing { }
sig Address extends Listing { }
sig Name extends Listing { }
sig Book {
	entry: set Name, // T1
	listed: entry ->set Listing // T2
}
fun lookup [b: Book, n: Name] : set Listing {n.^(b.listed)}
// constraints
// T. type constraints (multiplicity & range restriction)
// T1
// set
// T2
fact {all b:Book | all n:b.entry | lone b.listed[n] }
// F. fact constraints
// F1
fact { all b:Book | all n,l:Name | l in lookup[b,n] implies l in b.entry }
// F2
fact { all b:Book | all n:b.entry | not n in lookup[b,n] }


/* Refinement Task */ 
// A. assertion (universal statement over constraints; in this case, C1)
assert lookupEndsInAddr {
	all b:Book | all n:b.entry | some (lookup[b,n]&Address)
}
check lookupEndsInAddr for 4
// P. problem (subset of the universal statement over constraints)
// some b:Book | some n:b.entry_in | no (lookup[b,n]&Addr)
// F. fix (spec + fix + assert = UNSAT)
//fact {all b:Book | all n:b.entry_in | some b.target_of[n]}
