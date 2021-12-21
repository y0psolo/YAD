#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION105=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/MariaDB/server 'mariadb-[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "10\.5\.[0-9]+$")
VERSION106=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/MariaDB/server 'mariadb-[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "10\.6\.[0-9]+$")
VERSION107=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/MariaDB/server 'mariadb-[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "10\.7\.[0-9]+$")

# Update util/constants.bzl file
write_version mariadb105 MARIADB_VERSIONS_MAPPING $VERSION105 ["10.5"]
write_version mariadb106 MARIADB_VERSIONS_MAPPING $VERSION106 ["10.6"]
write_version mariadb107 MARIADB_VERSIONS_MAPPING $VERSION107 ["10.7"]
