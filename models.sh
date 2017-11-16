#!/usr/bin/env bash

_MUALLOY_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

EXPERIMENT_DIR="${_MUALLOY_DIR}/experiments"
MODEL_DIR="${EXPERIMENT_DIR}/models"
GEN_DIR="${EXPERIMENT_DIR}/gen"
TEST_GEN_DIR="${GEN_DIR}/tests"
TEST_DIR="${EXPERIMENT_DIR}/test-suite"

MODELS=(
        "addr"
        "bempl"
        "binaryTree"
        "ctree"
        "dijkstra"
        "farmer"
        "fullTree"
        "grade"
        "grand"
        "handshake"
        "nqueens"
        "other"
        "singlyLinkedList"
)

declare -g -A addr=(
        [model_name]="addr"
        [model_path]="${MODEL_DIR}/addr.als"
        [mutant_dir_path]="${GEN_DIR}/addr"
        [scope]="4"
        [test_gen_path]="${TEST_GEN_DIR}/addr.als"
        [test_path]="${TEST_DIR}/addr.als"
)

declare -g -A bempl=(
        [model_name]="bempl"
        [model_path]="${MODEL_DIR}/bempl.als"
        [mutant_dir_path]="${GEN_DIR}/bempl"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/bempl.als"
        [test_path]="${TEST_DIR}/bempl.als"
)

declare -g -A binaryTree=(
        [model_name]="binaryTree"
        [model_path]="${MODEL_DIR}/binaryTree.als"
        [mutant_dir_path]="${GEN_DIR}/binaryTree"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/binaryTree.als"
        [test_path]="${TEST_DIR}/binaryTree.als"
)

declare -g -A ctree=(
        [model_name]="ctree"
        [model_path]="${MODEL_DIR}/ctree.als"
        [mutant_dir_path]="${GEN_DIR}/ctree"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/ctree.als"
        [test_path]="${TEST_DIR}/ctree.als"
)

declare -g -A dijkstra=(
        [model_name]="dijkstra"
        [model_path]="${MODEL_DIR}/dijkstra.als"
        [mutant_dir_path]="${GEN_DIR}/dijkstra"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/dijkstra.als"
        [test_path]="${TEST_DIR}/dijkstra.als"
)

declare -g -A farmer=(
        [model_name]="farmer"
        [model_path]="${MODEL_DIR}/farmer.als"
        [mutant_dir_path]="${GEN_DIR}/farmer"
        [scope]="4"
        [test_gen_path]="${TEST_GEN_DIR}/farmer.als"
        [test_path]="${TEST_DIR}/farmer.als"
)

declare -g -A fullTree=(
        [model_name]="fullTree"
        [model_path]="${MODEL_DIR}/fullTree.als"
        [mutant_dir_path]="${GEN_DIR}/fullTree"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/fullTree.als"
        [test_path]="${TEST_DIR}/fullTree.als"
)

declare -g -A grade=(
        [model_name]="grade"
        [model_path]="${MODEL_DIR}/grade.als"
        [mutant_dir_path]="${GEN_DIR}/grade"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/grade.als"
        [test_path]="${TEST_DIR}/grade.als"
)

declare -g -A grand=(
        [model_name]="grand"
        [model_path]="${MODEL_DIR}/grand.als"
        [mutant_dir_path]="${GEN_DIR}/grand"
        [scope]="4"
        [test_gen_path]="${TEST_GEN_DIR}/grand.als"
        [test_path]="${TEST_DIR}/grand.als"
)

declare -g -A handshake=(
        [model_name]="handshake"
        [model_path]="${MODEL_DIR}/handshake.als"
        [mutant_dir_path]="${GEN_DIR}/handshake"
        [scope]="5"
        [test_gen_path]="${TEST_GEN_DIR}/handshake.als"
        [test_path]="${TEST_DIR}/handshake.als"
)

declare -g -A nqueens=(
        [model_name]="nqueens"
        [model_path]="${MODEL_DIR}/nqueens.als"
        [mutant_dir_path]="${GEN_DIR}/nqueens"
        [scope]="4"
        [test_gen_path]="${TEST_GEN_DIR}/nqueens.als"
        [test_path]="${TEST_DIR}/nqueens.als"
)

declare -g -A other=(
        [model_name]="other"
        [model_path]="${MODEL_DIR}/other.als"
        [mutant_dir_path]="${GEN_DIR}/other"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/other.als"
        [test_path]="${TEST_DIR}/other.als"
)

declare -g -A singlyLinkedList=(
        [model_name]="singlyLinkedList"
        [model_path]="${MODEL_DIR}/singlyLinkedList.als"
        [mutant_dir_path]="${GEN_DIR}/singlyLinkedList"
        [scope]="3"
        [test_gen_path]="${TEST_GEN_DIR}/singlyLinkedList.als"
        [test_path]="${TEST_DIR}/singlyLinkedList.als"
)
