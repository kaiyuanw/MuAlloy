# MuAlloy: A Mutation Testing Framework for Alloy

`MuAlloy` is a command line tool built on top of
[Alloy4.2](https://github.com/AlloyTools/org.alloytools.alloy).  The
tool provides basic features to mutate an Alloy model at its AST level
and generate non-equivalent mutant models.  For each non-equivalent
mutant model, `MuAlloy` is able to generate an Alloy instance that
kills it.  All mutant killing instances can be encoded as `AUnit`
tests and saved on the disk.  `MuAlloy` can also run mutation testing
on any model given some tests.

# Requirements:

* Operating Systems
  - Linux (64 bit)
  - Mac OS (64 bit)

* Dependencies
  - Java 8: Must be installed and accessible from `PATH`.
  - Bash 4.4: Must be installed and accessible from `PATH`.
  - Gradle 4.3.1: Must be installed and accessible from `PATH`.
  - Alloy 4.2: Must be in the classpath.  `MuAlloy` comes with Alloy4.2
    under `libs/alloy4.2.jar`.
  - Commons CLI 1.4: Must be in the classpath.  `MuAlloy` comes with
    Commons CLI under `libs/commons-cli-1.4.jar`.

# Installation:

## Clone MuAlloy repo

To run `MuAlloy`, use `git` to clone the repository.

```Shell
git clone git@github.com:kaiyuanw/MuAlloy.git
```

## Build MuAlloy

To build `MuAlloy`, Java 8 and Gradle 4.3.1 must be installed.  Then,
you can run `./mualloy.sh --build` in Bash 4.4 to build `MuAlloy`.

# Quick Start:

## Generate Mutants

To generate mutants, run
```Shell
./mualloy.sh --generate-mutants -o <arg> -m <arg> [-s <arg>] [-t <arg>]
```
or use the full argument name
```Shell
./mualloy.sh --generate-mutants --model-path <arg> --mutant-dir <arg> [--scope <arg>] [--test-path <arg>]
```
 * `-o,--model-path`: This argument is required.  Pass the model you
   want to mutate as the argument.
 * `-m,--mutant-dir`: This argument is required.  Pass the directory
   to which you want to save mutants as the argument.  If the
   directory does not exist, a new directory will be created.
 * `-s,--scope`: This argument is optional.  Pass the Alloy scope for
   equivalence checking, which is mainly used to prune equivalent
   mutants.  For each non-equivalent mutant, the scope will also be
   used to generate a run command for the corresponding `AUnit` test
   that kills the mutant.  If the argument is not specified, a default
   value of 3 is used.
 * `-t,--test-path`: This argument is optional.  Pass the path to
   which you want to save mutant killing test suite as the argument.
   If the argument is not specified, no mutant killing test suite will
   be generated.  Note that the generated test suite only contains
   unique test predicates and the corresponding run commands.

The command also reports the number of equivalent mutants,
non-equivalent mutants and unique tests.

## Mutation Testing

To run mutation testing, run
```Shell
./mualloy.sh --run-mutation-testing -o <arg> -m <arg> -t <arg>
```
or use the full argument name
```Shell
./mualloy.sh --run-mutation-testing --model-path <arg> --mutant-dir <arg> --test-path <arg>
```
 * `-o,--model-path`: This argument is required.  Pass the original
   model as the argument.  `MuAlloy` collects test satisfiability
   result for the original model and then compare it with the test
   result for a mutant model.  If the results are different, then the
   mutant is killed.  Otherwise, it is not.
 * `-m,--mutant-dir`: This argument is required.  Pass the directory
   to which mutants are saved as the argument.  `MuAlloy` collects
   test result for each of the mutant model and check if it can be
   killed by the test suite or not.
 * `-t,--test-path`: This argument is required.  Pass the test suite
   you want to run as the argument.  `MuAlloy` runs the test suite
   against the original model and mutant models to compute the
   mutation score for the test sutie.  Note that the test suite should
   only contain the test predicates and the corresponding run
   commands.

The command also reports whether each mutant is killed by the test
suite or not.  After the test suite is run against all mutants, the
command reports the mutation score.

## Included Examples

`MuAlloy` provides 13 example models and the commands to generate
mutants and collect mutation score for each model.  The
`experiments/models` directory contains all example models and some of
them come from the standard Alloy distribution:

 * `addr`: Models an address book.
 * `bempl`: Models a toy lab security policy.
 * `binaryTree`: Models an arbitrary binary tree.
 * `ctree`: Models a two colored undirected tree.
 * `dijkstra`: Models how mutexes are grabbed and released by
   processes, and how Dijkstra's mutex ordering criterion can prevent
   deadlocks.
 * `farmer`: Models the [farmer crossing river problem](https://en.wikipedia.org/wiki/Fox,_goose_and_bag_of_beans_puzzle).
 * `fullTree`: Models a full binary tree.
 * `grade`: Models a grade book.
 * `grand`: Models an "I'm my own grandpa" puzzle.
 * `handshake`: Models Halmos handshake problem.
 * `nqueens`: Models [N queens problem](https://en.wikipedia.org/wiki/Eight_queens_puzzle).
 * `other`: Models another toy lab security policy.
 * `singlyLinkedList`: Models an acyclic singly linked list.

To generate mutants for a given example model, run
```Shell
./mualloy.sh --generate-mutants-example ${model}
```
where `${model}` can be one of `[addr, bempl, binaryTree, ctree,
dijkstra, farmer, fullTree, grade, grand, handshake, nqueens, other,
singlyLinkedList]`.  By default, `MuAlloy` reads the model from
`experiments/models/${model}.als` and generates mutants under
`experiments/gen/${model}` directory.  `MuAlloy` saves the mutant
killing test suite at `experiments/gen/tests/${model}.als`.  The scope
used varies for different models.  For more details, take a look at
`models.sh`.

To generate mutants for all 13 example models, run
```Shell
./mualloy.sh --generate-mutants-example-all
```

To run mutation testing for a given example model and a test suite,
run
```Shell
./mualloy.sh --run-mutation-testing-example "${model}"
```
where `${model}` can be one of `[addr, bempl, binaryTree, ctree,
dijkstra, farmer, fullTree, grade, grand, handshake, nqueens, other,
singlyLinkedList]`.  By default, `MuAlloy` reads the model and mutants
from `experiments/models/${model}.als` and `experiments/gen/${model}`
directory, respectively.  **This means you should first generate
mutants for example models and then run mutation testing**.  `MuAlloy`
reads the test suite at `experiments/test-suite/${model}.als`.  Note
that the test suites under `experiments/test-suite` are actually
generated using `MuAlloy` so all mutants should be killed.

To run mutation testing for all 13 example models, run
```Shell
./mualloy.sh --run-mutation-testing-example-all
```

# Mutation Operators

`MuAlloy` supports the following mutation operators.

| Operator |                              Description                               |
|----------|------------------------------------------------------------------------|
|   MOR    | Multiplicity Operator Replacement.  E.g. `some sig` => `lone sig`      |
|   QOR    | Quantifier Operator Replacement.  E.g. `all n: Node` => `some n: Node` |
|   UOR    | Unary Operator Replacement.  E.g. `some Node` => `no Node`             |
|   BOR    | Binary Operator Replacement.  E.g. `a + b` => `a - b`                  |
|   LOR    | Formula List Operator Replacement.  E.g. `a && b` => `a \|\| b`          |
|   UOI    | Unary Operator Insertion.  E.g. `a.b` => `a.*b`                        |
|   UOD    | Unary Operator Deletion.  E.g. `a.^b` => `a.b`                         |
|   BOE    | Binary Operator Exchange.  E.g. `a - b` => `b - a`                     |
|   IEOE   | Imply-Else Operator Exchange.  E.g. `a => b else c` => `a => c else b` |

# Background

## Alloy Model

We show an [acyclic singly linked
list](experiments/models/singlyLinkedList.als) Alloy model below:
```Alloy
module SinglyLinkedList
sig List {
  header: lone Node
}
sig Node {
  link: lone Node
}
pred Acyclic (l: List) {
  no l.header or some n: l.header.*link | no n.link 
}
run Acyclic
```

The model declares a set of `List` and `Node` atoms.  Each `List` atom
has zero or one `header` of type `Node`.  Each `Node` atom has zero or
one following `Node` along `link`.  `header` and `link` are partial
functions.  The predicate `Acyclic` restricts its parameter `l` to be
acyclic.  The body of the `Acyclic` predicate states that `l` is
acyclic if (1) it does not have an `header` or (2) there exists some
`Node` reachable from `l`'s `header` following zero or more `link`,
such that the `Node` does not have a subsequent node along the `link`.

## Alloy Instance

Below is an satisfiable Alloy instance for the above list model if we
run the `Acyclic` predicate:

![List Instance](../documentation/documentation/images/ListInstance.png)

The instance states that there are two `List` atoms (`List0` and
`List1`) and two `Node` atoms (`Node0` and `Node1`).  `List0`'s header
is `Node1` and `List1`'s header is `Node0`.  `Node1`'s next node is
`Node0`.  Assuming `List0` is implicitly passed as the argument of
`Acyclic` predicate, we can see that `List0` is indeed acyclic as
there is no loop in the list.

## AUnit Test

An `AUnit` test is a pair of a model valuation and a run command.  For
example, the above Alloy instance can be written as an `AUnit` test as
below:
```Alloy
pred test {
  some disj List0, List1: List {
    some disj Node0, Node1: Node {
      List = List0 + List1
      header = List0->Node1 + List1->Node0
      Node = Node0 + Node1
      link = Node1->Node0
      Acyclic[List0]
    }
  }
}
run test
```
The test declares 2 disjoint `List` atoms (`List0` and `List1`) and 2
disjoint `Node` atoms (`Node0` and `Node1`).  It restricts the entire
`List` set to be {`List0`, `List1`} and `Node` set to be {`Node0`,
`Node1`}.  The predicate also states that the `header` maps `List0` to
`Node1` and `List1` to `Node0`, and the `link` maps `Node1` to
`Node0`.  If you run the `test` predicate, you will obtain the
isomorphic Alloy instance shown [above](#alloy-instance).

## Killing Mutant

One of the mutant `MuAlloy` generates from the list example model
using [QOR](#mutation-operators) is shown below:
```Alloy
module SinglyLinkedList
sig List {
  header: lone Node
}
sig Node {
  link: lone Node
}
pred Acyclic (l: List) {
  no l.header or all n: l.header.*link | no n.link 
}
run Acyclic
```
`MuAlloy` mutates `some n: ...` to `all n: ...`, which restricts every
`Node` in `l` without a subsequent `Node` along the `link`.  This
overconstrains `l` so it can be empty or only have one `Node`.  The
above `AUnit` test will be unsatisfiable for `List0` as `Node1` has a
subsequent node `Node0`.  Since the `test` is satisfiable for the
original model but is unsatisfiable for the mutant, it kills the
mutant.  Similarly, if an `AUnit` test is unsatisfiable for the
original model but is satisfiable for the mutant, it also kills the
mutant.

# Limitation

`MuAlloy` currently does not support mutating AST nodes declared
inside signature facts because the equivalence checking is not
supported for now.  The workaround is to move signature fact to a
stand-alone fact declaration.  We may support mutating signature facts
in a future release.

# Publications
* "Towards a Test Automation Framework for Alloy."
    Allison Sullivan, Razieh Nokhbeh Zaeem, Sarfraz Khurshid, and Darko Marinov
* "MuAlloy : An automated mutation system for Alloy."
    Kaiyuan Wang, Master Thesis 2015
* "Automated Test Generation and Mutation Testing for Alloy."
    Allison Sullivan, Kaiyuan Wang, Razieh Nokhbeh Zaeem, and Sarfraz Khurshid, ICST 2017

# License

MIT License, see `LICENSE` for more information.