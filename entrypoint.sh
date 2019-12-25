IFS=':' read -ra OPA_TEST_PATHS <<< "$1"
cd "$GITHUB_WORKSPACE" && opa test "${OPA_TEST_PATHS[@]}"
