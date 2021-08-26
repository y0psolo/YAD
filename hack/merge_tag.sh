#!/bin/sh

docker_manifest() {
    _suffix=""
    if [ $3 != 'latest' ]
    then
        _suffix="_$3"
    fi
    docker manifest create $1/yadist/$2:$3 $1/yadist/$2:amd64$_suffix $1/yadist/$2:arm64$_suffix
    docker manifest push $1/yadist/$2:$3
}


for repo in static base cc
do
    for kind in latest debug
    do
        docker_manifest $1 ${repo} ${kind}
    done
done

for repo in python
do
    for kind in latest debug sh
    do
        docker_manifest $1 ${repo} ${kind}
    done
done

for repo in openjdk_fat openjdk_slim azul_fat azul_slim
do 
    for kind in 8 8_debug 8_sh 11 11_debug 11_sh
    do
        docker_manifest $1 ${repo} ${kind}
    done
done