#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh

update_nodejs() {
    VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/nodejs/node.git | grep -o -m 1 -E "v$1\.[0-9]+\.[0-9]+$")
    NUMERIC_VERSION="${VERSION:1}"

    # Update WORKSPACE rule
    write_rule nodejs_$1_amd64 nodejs-$1-amd64 https://nodejs.org/dist/$VERSION/node-$VERSION-linux-x64.tar.gz node-$VERSION-linux-x64/ nodejs
    write_rule nodejs_$1_arm64 nodejs-$1-arm64 https://nodejs.org/dist/$VERSION/node-$VERSION-linux-arm64.tar.gz node-$VERSION-linux-arm64/ nodejs
    # Update update/constants.bzl file
    write_version nodejs_$1 NODEJS_VERSIONS_MAPPINGS $NUMERIC_VERSION "[$1]"
}

update_nodejs 14

update_nodejs 16