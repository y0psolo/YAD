#!/bin/sh
set -o errexit
set -o nounset

cat <<EOF
STABLE_PROJECT_NAME y0psolo
STABLE_PROJECT_NAMESPACE yad
REGISTRY quay.io
BRANCH test
EOF
