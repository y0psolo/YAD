#!/bin/sh

docker_manifest() {
    _suffix=""
    if [ $2 != 'latest' ]
    then
        _suffix="_$2"
    fi
    docker manifest create yadist/$1:$2 yadist/$1:amd64$_suffix yadist/$1:arm64$_suffix
    docker manifest push yadist/$1:$2
}


for repo in static base cc
do
    for kind in latest debug
    do
        docker_manifest ${repo} ${kind}
    done
done

for repo in python
do
    for kind in latest debug sh
    do
        docker_manifest ${repo} ${kind}
    done
done

for repo in openjdk_fat openjdk_slim azul_fat azul_slim
do 
    for kind in 8 8_debug 8_sh 11 11_debug 11_sh
    do
        docker_manifest ${repo} ${kind}
    done
done