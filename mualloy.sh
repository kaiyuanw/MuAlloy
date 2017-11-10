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

# Generate mutants and optionally tests from a given model.
function mualloy.generate_mutants() {
        java -Djava.library.path="${SAT_SOLVERS_DIR}" -cp "${JAR_PATHS}" muAlloy.MutantGenerator "$@"
}

# Run mutation testing.
function mualloy.run_mutation_testing() {
        java -Djava.library.path="${SAT_SOLVERS_DIR}" -cp "${JAR_PATHS}" muAlloy.MutationTestingRunner "$@"
}

# Examples

. ${_MUALLOY_DIR}/models.sh

function mualloy.generate_mutants.example() {
        eval $(obj.unpack "${1}"); shift
        echo "Running Mutant Generator for ${obj[model_name]}."
        mualloy.generate_mutants -o "${obj[model_path]}" -m "${obj[mutant_dir_path]}" -s "${obj[scope]}" -t "${obj[test_gen_path]}"
}

function mualloy.generate_mutants.example.all() {
        model.foreach mualloy.generate_mutants.example MODELS[@] "$@"
}

function mualloy.run_mutation_testing.example() {
        eval $(obj.unpack "${1}"); shift
        echo "Running Mutation Testing for ${obj[model_name]}."
        mualloy.run_mutation_testing -o "${obj[model_path]}" -m "${obj[mutant_dir_path]}" -t "${obj[test_path]}"
}

function mualloy.run_mutation_testing.example.all() {
        model.foreach mualloy.run_mutation_testing.example MODELS[@] "$@"
}

function model.foreach() {
    local fun="${1}"; shift
    declare -a array=("${!1}"); shift
    for model in ${array[@]}; do
	${fun} "$(declare -p ${model})" "$@"
    done
}

function obj.unpack() {
    local aa="${1}"; shift
    echo "declare -A obj="${aa#*=}
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
        --generate-mutants-example) shift;
                                    model="${1}"; shift
                                    mualloy.generate_mutants.example "$(declare -p ${model})" "$@";;
        --generate-mutants-example-all) shift;
                                        mualloy.generate_mutants.example.all "$@";;
        --run-mutation-testing-example) shift;
                                        model="${1}"; shift
                                        mualloy.run_mutation_testing.example "$(declare -p ${model})" "$@";;
        --run-mutation-testing-example-all) shift;
                                            mualloy.run_mutation_testing.example.all "$@";;
        *)
	        echo "ERROR: Incorrect arguments: $@"
	        exit 1;;
esac
