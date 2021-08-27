#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
REGISTRY=$1

. $SCRIPTPATH/common.sh

merge_tag_arch() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64$_suffix ${REPO}/$1:arm64$_suffix
    docker push ${REPO}/$1:$2
}

loop_over_image_tag merge_tag_arch