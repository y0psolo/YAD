#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION24=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/spark 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "2\.4\.[0-9]+$")
VERSION30=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/spark 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "3\.0\.[0-9]+$")
VERSION31=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/spark 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "3\.1\.[0-9]+$")
VERSION32=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/spark 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "3\.2\.[0-9]+$")
VERSION33=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/spark 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "3\.3\.[0-9]+$")


# Update WORKSPACE rule
write_rule spark_hadoop_24 spark_hadoop_2.4 https://github.com/y0psolo/spark-build/releases/download/$VERSION24/spark-$VERSION24-bin-hadoop2.tgz spark-$VERSION24-bin-hadoop2/ spark
write_rule spark_hadoop_30 spark_hadoop_3.0 https://github.com/y0psolo/spark-build/releases/download/$VERSION30/spark-$VERSION30-bin-hadoop3.tgz spark-$VERSION30-bin-hadoop3/ spark
write_rule spark_hadoop_31 spark_hadoop_3.1 https://github.com/y0psolo/spark-build/releases/download/$VERSION31/spark-$VERSION31-bin-hadoop3.tgz spark-$VERSION31-bin-hadoop3/ spark
write_rule spark_hadoop_32 spark_hadoop_3.2 https://github.com/y0psolo/spark-build/releases/download/$VERSION32/spark-$VERSION32-bin-hadoop3.tgz spark-$VERSION32-bin-hadoop3/ spark
write_rule spark_hadoop_33 spark_hadoop_3.3 https://github.com/y0psolo/spark-build/releases/download/$VERSION33/spark-$VERSION33-bin-hadoop3.tgz spark-$VERSION33-bin-hadoop3/ spark

# Update update/constants.bzl file
write_version spark24 SPARK_VERSIONS_MAPPING $VERSION24 ["2.4"]
write_version spark30 SPARK_VERSIONS_MAPPING $VERSION30 ["3.0"]
write_version spark31 SPARK_VERSIONS_MAPPING $VERSION31 ["3.1"]
write_version spark32 SPARK_VERSIONS_MAPPING $VERSION32 ["3.2"]
write_version spark33 SPARK_VERSIONS_MAPPING $VERSION33 ["3.3"]