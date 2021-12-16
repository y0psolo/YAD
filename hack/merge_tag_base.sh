#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

for repo in static base cc python
do
    simple_tag_multi_arch ${repo} $1 $1
    simple_tag_multi_arch ${repo} $1_debug $1_debug
    if [ $1 = "focal" ]; then
        simple_tag_multi_arch ${repo} $1 latest
    fi
done