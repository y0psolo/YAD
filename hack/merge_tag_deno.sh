#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
DENO_VERSION=$(grep 'DENO_VERSION =' update/constants.bzl | grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+")

. $SCRIPTPATH/common.sh

simple_tag_amd64 deno $1 ${DENO_VERSION}_$1
simple_tag_amd64 deno $1 $1
simple_tag_amd64 deno $1_debug ${DENO_VERSION}_$1_debug
if [ $1 = "focal" ]; then
    simple_tag_amd64 deno $1 ${DENO_VERSION}
fi