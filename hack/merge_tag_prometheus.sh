#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

PROM_VERSION=$(grep PROMETHEUS_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9]+.[0-9]+.[0-9]+")
NODE_VERSION=$(grep NODE_EXPORTER_VERSION update/constants.bzl | grep -o -m 1 -E "[0-9]+.[0-9]+.[0-9]+")

. $SCRIPTPATH/common.sh

simple_tag_multi_arch prometheus $1 ${PROM_VERSION}
simple_tag_multi_arch prometheus $1 latest

simple_tag_multi_arch nodeexporter $1 ${NODE_VERSION}
simple_tag_multi_arch nodeexporter $1 latest