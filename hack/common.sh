#!/bin/sh

REPO="yadist"

# Function call
#   image_tag_multi_amd64
#       <repository>
#       <tag>
#       <optional tag>
image_tag_multi_amd64() {
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64_$2
    docker manifest push ${REPO}/$1:$2
    docker manifest create ${REPO}/$1:$2_debug ${REPO}/$1:amd64_$2_debug
    docker manifest push ${REPO}/$1:$2_debug
    if [ ! -z "$3" ]; then
        docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2
        docker manifest push ${REPO}/$1:$3
        if [ $3 = "latest" ]
            docker manifest create ${REPO}/$1:debug ${REPO}/$1:amd64_$2_debug
            docker manifest push ${REPO}/$1:debug
        else
            docker manifest create ${REPO}/$1:$3_debug ${REPO}/$1:amd64_$2_debug
            docker manifest push ${REPO}/$1:$3_debug
        fi
    fi
}

# Function call
#   image_tag_multi_arch
#       <repository>
#       <tag>
#       <optional tag>
image_tag_multi_arch() {
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64_$2 ${REPO}/$1:arm64_$2
    docker manifest push ${REPO}/$1:$2
    docker manifest create ${REPO}/$1:$2_debug ${REPO}/$1:amd64_$2_debug ${REPO}/$1:arm64_$2_debug
    docker manifest push ${REPO}/$1:$2_debug
    if [ ! -z "$3" ]; then
        docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2 ${REPO}/$1:arm64_$2
        docker manifest push ${REPO}/$1:$3
        if [ $3 = "latest" ]
            docker manifest create ${REPO}/$1:debug ${REPO}/$1:amd64_$2_debug ${REPO}/$1:arm64_$2_debug
            docker manifest push ${REPO}/$1:debug
        else
            docker manifest create ${REPO}/$1:$3_debug ${REPO}/$1:amd64_$2_debug ${REPO}/$1:arm64_$2_debug
            docker manifest push ${REPO}/$1:$3_debug
        fi
    fi
}