#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
JAVA_VERSIONS=$(grep 'JRE_VERSIONS =' update/constants.bzl | grep -o -E "[0-9]+")
NODEJS_VERSIONS=$(grep 'NODEJS_VERSIONS =' update/constants.bzl | grep -o -E "[0-9]+")
DENO_VERSION=$(grep 'DENO_VERSION =' update/constants.bzl | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+")
TRINO_VERSION=$(grep TRINO_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9]+")
HIVE_VERSION=$(grep HIVE_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9].[0-9].[0-9]")
SPARK_VERSIONS=$(grep SPARK_VERSIONS update/constants.bzl | grep -o -E "[0-9].[0-9]")
MARIADB_VERSIONS=$(grep 'MARIADB_VERSIONS =' update/constants.bzl | grep -o -E "[0-9]+.[0-9]+")

. $SCRIPTPATH/common.sh

scan_image() {
    # docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/sarif:/mnt/out/ aquasec/trivy image --format template --template "@/contrib/sarif.tpl" -o /mnt/out/$1_$2.sarif ${REPO}/$1:$2
    docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/table:/mnt/out/ aquasec/trivy image --format table -o /mnt/out/$1_$2 ${REPO}/$1:$2
}

mkdir -p $SCRIPTPATH/../security/sarif
mkdir -p $SCRIPTPATH/../security/json
mkdir -p $SCRIPTPATH/../security/table

for repo in static base cc python
do
    scan_image ${repo} $1
done

for repo in adoptium azul adoptiumpy azulpy
do
    for version in ${JAVA_VERSIONS}
    do
        scan_image ${repo} ${version}_$1
    done
done

for version in ${NODEJS_VERSIONS}
do
    scan_image nodejs ${version}_$1
done

scan_image deno $1

for repo in spark pyspark sparkhistoryserver
do
    for version in ${SPARK_VERSIONS}
    do
        scan_image ${repo} ${version}
    done
done

for repo in mariadb mariadbcli mariadbinit
do
    for version in ${MARIADB_VERSIONS}
    do
        scan_image ${repo} ${version}_$1
    done
done

for repo in hivemetastore trino trinocli redis rediscli consultemplate prometheus nodeexporter alertmanager
do
    scan_image ${repo} latest
done
