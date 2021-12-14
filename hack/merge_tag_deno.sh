#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

DENO_VERSION=$(grep 'DENO_VERSION =' util/constants.bzl | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+")
NODEJS_VERSIONS=$(grep 'NODEJS_VERSIONS =' util/constants.bzl | grep -o -E "[0-9]+")
JAVA_VERSIONS=$(grep 'JRE_VERSIONS =' util/constants.bzl | grep -o -E "[0-9]+")

. $SCRIPTPATH/common.sh

merge_tag_amd64 $1 $2 $3
merge_tag_amd64 $1 $2_debug