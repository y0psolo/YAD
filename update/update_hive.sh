#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/apache/hive 'rel/release-[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")

# Update WORKSPACE rule
write_rule hive_metastore_3 hive_metastore_3 https://repo1.maven.org/maven2/org/apache/hive/hive-standalone-metastore/$VERSION/hive-standalone-metastore-$VERSION-bin.tar.gz apache-hive-metastore-$VERSION-bin/ hive
# Update update/constants.bzl file
write_version hive  HIVE_VERSION $VERSION

VERSION_PGSQL=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/pgjdbc/pgjdbc 'REL[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")
write_rule hive_pgsql postgresql https://repo1.maven.org/maven2/org/postgresql/postgresql/$VERSION_PGSQL/postgresql-$VERSION_PGSQL.jar

VERSION_MYSQL=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/mysql/mysql-connector-j '[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")
write_rule hive_mysql mysql https://repo1.maven.org/maven2/mysql/mysql-connector-java/$VERSION_MYSQL/mysql-connector-java-$VERSION_MYSQL.jar