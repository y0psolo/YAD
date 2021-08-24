#!/bin/sh
set -o errexit
set -o nounset

cat <<EOF
STABLE_PROJECT_NAMESPACE yadist
REGISTRY docker.io
EOF
