#!/bin/sh
#
# Parameter needed for the script
# <ubuntu version> : 18.04, 20.04 or 22.04
# <tag : optional parameter to specify if non debug tag will be linked to an additional tag also>


SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

MARIADB_VERSIONS=$(grep 'MARIADB_VERSIONS =' update/constants.bzl | grep -o -E "[0-9]+.[0-9]+")

. $SCRIPTPATH/common.sh

for repo in mariadb mariadbcli mariadbinit
do
    for version in ${MARIADB_VERSIONS}
    do
        simple_tag_multi_arch ${repo} ${version}_$1 ${version}_$1
        if [ $1 = "focal" ]; then
            simple_tag_multi_arch ${repo} ${version}_$1 ${version}
        fi
    done
done