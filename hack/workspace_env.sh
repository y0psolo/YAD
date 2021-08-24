#!/bin/sh
set -o errexit
set -o nounset

cat <<EOF
STABLE_PROJECT_NAME test
STABLE_PROJECT_NAMESPACE test
REGISTRY docker.io
BRANCH test
EOF
