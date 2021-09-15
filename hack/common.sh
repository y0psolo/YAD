#!/bin/sh

loop_over_image_tag() {
    for repo in static base cc pyhon
    do
        for tag in latest debug
        do
            $1 ${repo} ${tag}
        done
    done

    for repo in openjdk_fat openjdk_slim azul_fat azul_slim
    do 
        for tag in 8 8_debug 11 11_debug
        do
            $1 ${repo} ${tag}
        done
    done

    for repo in nodejs
    do 
        for tag in 14 14_debug 16 16_debug
        do
            $1 ${repo} ${tag}
        done
    done
}