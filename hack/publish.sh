#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
REGISTRY=$1

. $SCRIPTPATH/common.sh

pull_images_to_podman() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    for arch in amd64 arm64
    do
        podman pull -q docker-daemon:${REPO}/$1:${arch}$_suffix
    done
}

merge_tag_arch() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64$_suffix ${REPO}/$1:arm64$_suffix
}

publish_image() {
    docker push -q ${REPO}/$1:$2 ${REGISTRY}/${REPO}/$1:$2
}

delete_images_from_podman() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    podman rmi ${REPO}/$1:$2
    for arch in amd64 arm64
    do
        podman rmi localhost/${REPO}/$1:${arch}$_suffix
    done
}

# loop_over_image_tag pull_images_to_podman
# podman images list
docker images list
loop_over_image_tag merge_tag_arch
loop_over_image_tag publish_image
# loop_over_image_tag delete_images_from_podman
