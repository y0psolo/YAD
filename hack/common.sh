#!/bin/sh

REPO="yadist"

# Function call
#   simple_tag_amd64
#       <repository>
#       <origin tag>
#       <target tag>
simple_tag_amd64() {
    docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2
    docker manifest push ${REPO}/$1:$3
}

# Function call
#   simple_tag_amd64
#       <repository>
#       <origin tag>
#       <target tag>
simple_tag_multi_arch() {
    docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2 ${REPO}/$1:arm64_$2
    docker manifest push ${REPO}/$1:$3
}