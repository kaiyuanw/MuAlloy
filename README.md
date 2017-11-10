# MuAlloy: A mutation testing framework for Alloy

`MuAlloy` is a command line tool built on top of
[Alloy4.2](https://github.com/AlloyTools/org.alloytools.alloy).  The
tool provides basic features to mutate an Alloy model and generate
non-equivalent mutant models.  For each non-equivalent mutant model,
`MuAlloy` is able to generate an Alloy instance that kills it.  All
mutant killing instances can be encoded as AUnit tests and saved on
the disk.  `MuAlloy` can also run mutation testing on any model given
some tests.

# Requirements:

* Operating Systems
  - Linux (64 bit)
  - Mac OS (64 bit)

* Dependencies
  - Java 8: Must be installed and accessible from `PATH`.
  - Bash 4: Must be installed and accessible from `PATH`.
  - Alloy4.2: Must be in the classpath.  `MuAlloy` comes with Alloy4.2
    under `libs/alloy4.2.jar`.
  - Commons CLI 1.4: Must be in the classpath.  `MuAlloy` comes with
    Commons CLI under `libs/commons-cli-1.4.jar`.