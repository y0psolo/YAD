#!/bin/sh
set -o errexit
set -o nounset

cat <<EOF
STABLE_PROJECT_NAME yad
STABLE_PROJECT_NAMESPACE y0psolo
REGISTRY quay.io
BRANCH test
EOF
