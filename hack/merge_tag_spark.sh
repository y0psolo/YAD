#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

SPARK_VERSIONS=$(grep 'SPARK_VERSIONS =' util/constants.bzl | grep -o -E "[0-9].[0-9]")

. $SCRIPTPATH/common.sh

for repo in spark pyspark sparkhistoryserver
do
    for version in ${SPARK_VERSIONS}
    do
        if [ "$1" = "bionic" ] && [ "${version#2}" != "${version}" ]; then
            simple_tag_multi_arch ${repo} ${version}_$1 ${version}
        fi
        if [ $1 = "focal" ] && [ "${version#3}" != "${version}" ]; then
            simple_tag_multi_arch ${repo} ${version}_$1 ${version}
        fi
    done
done