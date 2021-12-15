#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

for repo in static base cc python
do
    if [ $1 = "20.04" ]; then
        image_tag ${repo} $1 latest
    else
        image_tag ${repo} $1
    fi
done