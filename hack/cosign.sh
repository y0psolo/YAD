#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

for repo in static base cc
do
    for kind in latest debug
    do
        cosign sign -key $SCRIPTPATH/cosign.key $1/yadist/${repo}:${kind}
    done
done

for repo in python
do
    for kind in latest debug sh
    do
        cosign sign -key $SCRIPTPATH/cosign.key $1/yadist/${repo}:${kind}
    done
done

for repo in openjdk_fat openjdk_slim azul_fat azul_slim
do 
    for kind in 8 8_debug 8_sh 11 11_debug 11_sh
    do
        cosign sign -key $SCRIPTPATH/cosign.key $1/yadist/${repo}:${kind}
    done
done