#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

TRINO_VERSION=$(grep TRINO_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9]+")

. $SCRIPTPATH/common.sh

for repo in trino trinocli
do
    simple_tag_multi_arch ${repo} $1 ${TRINO_VERSION}
    simple_tag_multi_arch ${repo} $1 latest
done