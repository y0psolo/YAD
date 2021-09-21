#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

update_nodejs() {
    VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/nodejs/node.git | grep -o -m 1 -E "v$1\.[0-9]+\.[0-9]+$")
    NUMERIC_VERSION="${VERSION:1}"

    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule nodejs-$1-amd64 -url https://nodejs.org/dist/$VERSION/node-$VERSION-linux-x64.tar.gz -prefix node-$VERSION-linux-x64/
    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule nodejs-$1-arm64 -url https://nodejs.org/dist/$VERSION/node-$VERSION-linux-arm64.tar.gz -prefix node-$VERSION-linux-arm64/
    sed -i -r "s/(^NODEJS_VERSIONS_MAPPINGS.+\"$1\": \")[0-9.]+(\",.+)/\1$NUMERIC_VERSION\2/g" $SCRIPTPATH/../util/constants.bzl
}

update_nodejs 14

update_nodejs 16