#!/bin/sh -l
cd "$GITHUB_WORKSPACE" && opa test $1
