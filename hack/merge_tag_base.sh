#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

loop_over_base_image_tag merge_tag_arch $1 $2

for version in JAVA_VERSIONS
do
    loop_over_base_image_tag merge_tag_arch $1
done