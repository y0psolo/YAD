#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"

. $SCRIPTPATH/common.sh

scan_image() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/sarif:/mnt/out/ aquasec/trivy --format template --template "@/contrib/sarif.tpl" -o /mnt/out/$1_$2.sarif ${REPO}/$1:$2
    # docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/json:/mnt/out/ aquasec/trivy --format template --template "@/contrib/json.tpl" -o /mnt/out/$1_$2.json ${REPO}/$1:$2
    docker run --rm -v /tmp/.cache/:/root/.cache/ -v $SCRIPTPATH/../security/table:/mnt/out/ aquasec/trivy --format table -o /mnt/out/$1_$2 ${REPO}/$1:$2
}

mkdir -p $SCRIPTPATH/../security/sarif
mkdir -p $SCRIPTPATH/../security/json
mkdir -p $SCRIPTPATH/../security/table

loop_over_image_tag scan_image
