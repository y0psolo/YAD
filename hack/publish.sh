#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
REPO="yadist"
REGISTRY=$1

. $SCRIPTPATH/common.sh

publish_image() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    buildah pull -q docker-daemon:${REPO}/$1:amd64$_suffix
    buildah pull -q docker-daemon:${REPO}/$1:arm64$_suffix
    buildah manifest create localhost/${REPO}/$1:$2 localhost/${REPO}/$1:amd64$_suffix
    buildah manifest add localhost/${REPO}/$1:$2 localhost/${REPO}/$1:arm64$_suffix
    buildah push -q --format docker localhost/${REPO}/$1:$2 docker://${REGISTRY}/${REPO}/$1:$2
    buildah manifest rm localhost/${REPO}/$1:$2
    buildah rmi localhost/${REPO}/$1:amd64$_suffix
    buildah rmi localhost/${REPO}/$1:arm64$_suffix
}

pull_images_to_buildah() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    for arch in amd64 arm64
    do
        buildah pull -q docker-daemon:${REPO}/$1:${arch}$_suffix
    done
}

merge_tag_arch() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    buildah manifest create localhost/${REPO}/$1:$2 localhost/${REPO}/$1:amd64$_suffix
    buildah manifest add localhost/${REPO}/$1:$2 localhost/${REPO}/$1:arm64$_suffix
}

# publish_image() {
#     buildah push -q --format docker localhost/${REPO}/$1:$2 docker://${REGISTRY}/${REPO}/$1:$2
# }

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

buildah info
loop_over_image_tag publish_image