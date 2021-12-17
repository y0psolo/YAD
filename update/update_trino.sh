#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/trinodb/trino '[0-9]*' | grep -o -m 1 -E "[0-9]+$")

# Update WORKSPACE rule
write_rule trino_server trino_server https://repo1.maven.org/maven2/io/trino/trino-server/$VERSION/trino-server-$VERSION.tar.gz trino-server-$VERSION/ trino
write_rule trino_cli trino_cli https://repo1.maven.org/maven2/io/trino/trino-cli/$VERSION/trino-cli-$VERSION-executable.jar "" trino
# Update util/constants.bzl file
write_version trino TRINO_VERSION $VERSION