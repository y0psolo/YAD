#!/bin/sh

REPO="yadist"

# Function call
#   merge_tag_arch
#       <repository>
#       <tag>
#       <optional tag>
merge_tag_amd64() {
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64_$2
    docker manifest push ${REPO}/$1:$2
    if [ ! -z "$3" ]
    then
        docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2
        docker manifest push ${REPO}/$1:$3
    fi
}

# Function call
#   merge_tag_arch
#       <repository>
#       <tag>
#       <optional tag>
merge_tag_arch() {
    docker manifest create ${REPO}/$1:$2 ${REPO}/$1:amd64_$2 ${REPO}/$1:arm64_$2
    docker manifest push ${REPO}/$1:$2
    if [ ! -z "$3" ]
    then
        docker manifest create ${REPO}/$1:$3 ${REPO}/$1:amd64_$2 ${REPO}/$1:arm64_$2 
        docker manifest push ${REPO}/$1:$3
    fi
}

# Function call
#   loop_over_base_image_tag
#       <function to call>
#       <ubuntu version>
#       <latest : optional parameter to specify if non debug tag will be linked to latest tag also>
#
# <function to call> should handle 3 parameters <repository> <tag> <optional tag>
loop_over_base_image_tag() {
    for repo in static base cc python
    do
        for tag in $2 $2_debug
        do
            $1 ${repo} ${tag}
        done
        if [ ! -z "$3" ]
        then
            $1 ${repo} $2 latest
        fi
    done
}

# Function call
#   loop_over_java_image_tag
#       <function to call>
#       <ubuntu version>
#       <java version>
#       <latest : optional parameter to specify if non debug tag will be linked to java version tag also>
#
# <function to call> should handle 2 parameters <repository> <tag> <optional tag>
loop_over_java_image_tag() {
    for repo in adoptium azul adoptiumpy azulpy
    do
        for tag in $2 $2_debug
        do
            $1 ${repo} $3_${tag}
        done
        if [ ! -z "$3" ]
        then
            $1 ${repo} $3_$2 $3
        fi
    done
}

# Function call
#   loop_over_node_image_tag
#       <function to call>
#       <ubuntu version>
#       <nodejs version>
#       <latest : optional parameter to specify if non debug tag will be linked to nodejs version tag also>
#
# <function to call> should handle 2 parameters <repository> <tag> <optional tag>
loop_over_node_image_tag() {
    for tag in $2 $2_debug
    do
        $1 nodejs $3_${tag}
    done
    if [ ! -z "$3" ]
    then
        $1 nodejs $3_$2 $3
    fi
}