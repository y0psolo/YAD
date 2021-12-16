#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/hadoop 'rel/release-[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")

# Update WORKSPACE rule
write_rule hadoop_3 hadoop_3 https://dlcdn.apache.org/hadoop/common/hadoop-$VERSION/hadoop-$VERSION.tar.gz hadoop-$VERSION/ hadoop
# Update util/constants.bzl file
write_version hadoop HADOOP_VERSION $VERSION