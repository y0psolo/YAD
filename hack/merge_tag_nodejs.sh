#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

NODEJS_VERSIONS=$(grep 'NODEJS_VERSIONS =' util/constants.bzl | grep -o -E "[0-9]+")

. $SCRIPTPATH/common.sh

for version in ${NODEJS_VERSIONS}
do
    if [ $1 = "20.04" ]; then
        image_tag nodejs ${version}_$1 ${version}
    else
        image_tag nodejs ${version}_$1
    fi
done