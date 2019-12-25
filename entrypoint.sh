#!/bin/sh -l
IFS=':' read -ra OPA_TEST_PATH <<< "$1"
cd "$GITHUB_WORKSPACE" && opa test "${OPA_TEST_PATH[@]}"
