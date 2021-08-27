#!/bin/sh

loop_over_image_tag() {
    for repo in static base cc
    do
        for tag in latest debug
        do
            $1 ${repo} ${tag}
        done
    done

    for repo in python
    do
        for tag in latest debug sh
        do
            $1 ${repo} ${tag}
        done
    done

    for repo in openjdk_fat openjdk_slim azul_fat azul_slim
    do 
        for tag in 8 8_debug 8_sh 11 11_debug 11_sh
        do
            $1 ${repo} ${tag}
        done
    done
}