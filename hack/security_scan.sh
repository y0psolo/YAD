#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
JAVA_VERSIONS=$(grep 'JRE_VERSIONS =' util/constants.bzl | grep -o -E "[0-9]+")
NODEJS_VERSIONS=$(grep 'NODEJS_VERSIONS =' util/constants.bzl | grep -o -E "[0-9]+")
DENO_VERSION=$(grep 'DENO_VERSION =' util/constants.bzl | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+")

. $SCRIPTPATH/common.sh

scan_image() {
    docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/sarif:/mnt/out/ aquasec/trivy --format template --template "@/contrib/sarif.tpl" -o /mnt/out/$1_$2.sarif ${REPO}/$1:$2
    docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/table:/mnt/out/ aquasec/trivy --format table -o /mnt/out/$1_$2 ${REPO}/$1:$2
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