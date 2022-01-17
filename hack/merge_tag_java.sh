#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

JAVA_VERSIONS=$(grep 'JRE_VERSIONS =' update/constants.bzl | grep -o -E "[0-9]+")

. $SCRIPTPATH/common.sh


for repo in adoptium azul adoptiumpy azulpy
do
    for version in ${JAVA_VERSIONS}
    do
        simple_tag_multi_arch ${repo} ${version}_$1 ${version}_$1
        simple_tag_multi_arch ${repo} ${version}_$1_debug ${version}_$1_debug
        if [ $1 = "focal" ]; then
            simple_tag_multi_arch ${repo} ${version}_$1 ${version}
        fi
    done
done