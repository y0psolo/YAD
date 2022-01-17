#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

TRINO_VERSION=$(grep CONSUL_TEMPLATE_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9]+.[0-9]+.[0-9]+")

. $SCRIPTPATH/common.sh

simple_tag_multi_arch consultemplate $1 ${CONSUL_TEMPLATE_VERSION}
simple_tag_multi_arch consultemplate $1 latest