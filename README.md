# MuAlloy: A Mutation Testing Framework for Alloy

`MuAlloy` is a command line tool built on top of
[Alloy4.2](https://github.com/AlloyTools/org.alloytools.alloy).  The
tool provides basic features to mutate an Alloy model and generate
non-equivalent mutant models.  For each non-equivalent mutant model,
`MuAlloy` is able to generate an Alloy instance that kills it.  All
mutant killing instances can be encoded as `AUnit` tests and saved on
the disk.  `MuAlloy` can also run mutation testing on any model given
some tests.

# Requirements:

* Operating Systems
  - Linux (64 bit)
  - Mac OS (64 bit)

* Dependencies
  - Java 8: Must be installed and accessible from `PATH`.
  - Bash 4.4: Must be installed and accessible from `PATH`.
  - Gradle 4.3.1: Must be installed and accessible from `PATH`.
  - Alloy4.2: Must be in the classpath.  `MuAlloy` comes with Alloy4.2
    under `libs/alloy4.2.jar`.
  - Commons CLI 1.4: Must be in the classpath.  `MuAlloy` comes with
    Commons CLI under `libs/commons-cli-1.4.jar`.

# Installation:

## Clone MuAlloy repo

To run `MuAlloy`, use `git` to clone
[MuAlloy](https://github.com/kaiyuanw/MuAlloy.git) repository.

```Shell
git clone git@github.com:kaiyuanw/MuAlloy.git
```

## Build MuAlloy

To build `MuAlloy`, Java 8 and Gradle 4.3.1 must be installed.  Then,
run `./mualloy.sh --build` in Bash 4.4 to build `MuAlloy`.

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
   be generated.

The command also reports the number of equivalent mutants and
non-equivalent mutants.

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
   result for mutant model.  If the results are different, then the
   mutant is killed.  Otherwise, it is not.
 * `-m,--mutant-dir`: This argument is required.  Pass the directory
   where mutants are saved as the argument.  `MuAlloy` collects test
   result for each of the mutant model and check if it can be killed
   by the test suite or not.
 * `-t,--test-path`: This argument is required.  Pass the test suite
   you want to run as argument.  `MuAlloy` runs the test suite against
   the original model and mutant models to compute the mutation score
   for the test sutie.

The command also reports whether each mutant is killed by the test
suite or not.  After the test suite is run against all mutants, the
command reports the mutation score.

## Examples

`MuAlloy` provides 7 example models and the commands to generate
mutants and collect mutation score for each of them.  The example
models can be found under `experiments/models`:

 * `SinglyLinkedList`: Models an acyclic singly linked list.
 * `BinaryTree`: Models an arbitrary binary tree.
 * `FullTree`: Models a full binary tree.
 * `Handshake`: Models Halmos handshake problem.
 * `NQueens`: Models [N queens problem](https://en.wikipedia.org/wiki/Eight_queens_puzzle).
 * `Farmer`: Models the [farmer crossing river problem](https://en.wikipedia.org/wiki/Fox,_goose_and_bag_of_beans_puzzle).
 * `Dijkstra`: Models how mutexes are grabbed and released by
   processes, and how Dijkstra's mutex ordering criterion can prevent
   deadlocks.

To generate mutants for a given example model, run
```Shell
./mualloy.sh --generate-mutants-example ${model}
```
where `${model}` can be one of `[singlyLinkedList, binaryTree,
fullTree, handshake, nqueens, farmer, dijkstra]`.  By default,
`MuAlloy` reads the model from `experiments/models/${model}.als` and
generates mutants to `experiments/gen/${model}` directory.  The mutant
killing test suite is saved at `experiments/gen/tests/${model}.als`.
The scope used varies for different models.  For more details, take a
look at `models.sh`.

To generate mutants for all 7 example models, run
```Shell
./mualloy.sh --generate-mutants-example-all
```

To run mutation testing for a given example model and a test suite,
run
```Shell
./mualloy.sh --run-mutation-testing-example "${model}"
```
where `${model}` can be one of `[singlyLinkedList, binaryTree,
fullTree, handshake, nqueens, farmer, dijkstra]`.  By default,
`MuAlloy` reads the model and mutants from
`experiments/models/${model}.als` and `experiments/gen/${model}`
directory, respectively.  **This means you should first generate
mutants for example models and then run mutation testing**.  `MuAlloy`
reads the test suite at `experiments/test-suite/${model}.als`.  Note
that the test suites under `experiments/test-suite` are actually
generated using `MuAlloy` so all mutants should be killed.

To run mutation testing for all 7 example models, run
```Shell
./mualloy.sh --run-mutation-testing-example-all
```

# Background

## Alloy Model

We show an [acyclic singly linked
list](experiments/models/singlyLinkedList.als) Alloy model below:
```Alloy
module SinglyLinkedList
sig List {
  header : lone Node
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
one next `Node` followed by `link`.  `header` and `link` are partial
functions.  The predicate `Acyclic` restricts its parameter `List` `l`
to be acyclic.  The body of the `Acyclic` predicate states that `l` is
acyclic if
* it does not have an `header` or
* there exists some `Node` reachable from `l`'s `header` following
  zero or more `link`, such that the `Node` does not have a subsequent
  node following `link`.

## Alloy Instance

Below is an Alloy instance for the :
![List Instance](../documentation/documentation/images/ListInstance.png)

The instance states that there are two List atoms (`List0` and
`List1`) and two Node atoms (`Node0` and `Node1`).  `List0`'s header
is `Node1` and `List1`'s header is `Node0`.  `Node1`'s next node is
`Node0`.  The instance satisfies the `Acyclic` predicate declared in
the model as there is no loop for `List0` or `List1`.

## AUnit Test



# Publications
* "Automated Test Generation and Mutation Testing for Alloy."
    Allison Sullivan, Kaiyuan Wang, Razieh Nokhbeh Zaeem, and Sarfraz Khurshid, ICST 2017