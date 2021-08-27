#!/bin/sh

. ./common.sh

REPO="yadist"
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REGISTRY=$1

sign_image() {
    cosign sign -key $SCRIPTPATH/cosign.key $REGISTRY/${REPO}/$1:$2
}

# loop_over_image_tag sign_image
loop_over_image_tag sign_image