#!/usr/bin/env bash

_MUALLOY_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

MUALLOY="MuAlloy"
SAT_SOLVERS_DIR="${_MUALLOY_DIR}/sat-solvers"
JAR_PATHS="${_MUALLOY_DIR}/build/libs/${MUALLOY}.jar:${_MUALLOY_DIR}/libs/alloy4.2.jar:${_MUALLOY_DIR}/libs/commons-cli-1.4.jar"

# Main functionality

function mualloy.build() {
        echo "Building ${MUALLOY}."
        gradle clean build
}

# Generate mutants and tests from correct models.
function mualloy.generate_mutants() {
        echo "Running Mutant Generator."
        java -Djava.library.path="${SAT_SOLVERS_DIR}" -cp "${JAR_PATHS}" muAlloy.MutantGenerator "$@"
}

function mualloy.run_mutation_testing() {
        echo "Running Mutation Testing."
        java -Djava.library.path="${SAT_SOLVERS_DIR}" -cp "${JAR_PATHS}" muAlloy.MutationTestingRunner "$@"
}

# ----------
# Main.

case $1 in
        --build) shift;
	         mualloy.build "$@";;
        --generate-mutants) shift;
	                    mualloy.generate_mutants "$@";;
        --run-mutation-testing) shift;
	                        mualloy.run_mutation_testing "$@";;
        *)
	        echo "ERROR: Incorrect arguments: $@"
	        exit 1;;
esac
