# MuAlloy: A mutation testing framework for Alloy

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

## Clone `MuAlloy` repo

To run `MuAlloy`, use `git` to clone
[MuAlloy](https://github.com/kaiyuanw/MuAlloy.git) repository.

```
git clone git@github.com:kaiyuanw/MuAlloy.git
```

## Build `MuAlloy`

To build `MuAlloy`, Java 8 and Gradle 4.3.1 must be installed.  Then,
run `./mualloy.sh --build` in Bash 4.4 to build `MuAlloy`.

# Quick Start:

## Generate Mutants

To generate mutants, run

```
./mualloy.sh --generate-mutants -o <arg> -m <arg> [-s <arg>] [-t <arg>]
```
or use the full argument name
```
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
