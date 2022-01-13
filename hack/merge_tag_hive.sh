#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

HIVE_VERSION=$(grep HIVE_VERSION update/constant.bzl | grep -o -m 1 -E "[0-9].[0-9].[0-9]")

. $SCRIPTPATH/common.sh

simple_tag_multi_arch hivemetastore $1 ${HIVE_VERSION}
simple_tag_multi_arch hivemetastore $1_debug debug
simple_tag_multi_arch hivemetastore $1 latest