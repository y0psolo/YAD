#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
REGISTRY=$1

. $SCRIPTPATH/common.sh

scan_image() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    trivy image ${REPO}/$1:$2 -o $SCRIPTPATH/../security/sarif/$1_$2.sarif --format template --template "@contrib/sarif.tpl"
    trivy image ${REPO}/$1:$2 -o $SCRIPTPATH/../security/html/$1_$2.html --format template --template "@contrib/html.tpl"
}

mkdir -p $SCRIPTPATH/../security/sarif
mkdir -p $SCRIPTPATH/../security/html

loop_over_image_tag scan_image