#!/bin/sh

docker run -u root --name pythonarm64 --entrypoint /bin/sh $1/python:arm64_sh /sbin/ldconfig
docker cp pythonarm64:/etc/ld.so.cache ./arm64/ld.so.cache.arm64
docker rm pythonarm64
docker rmi  $1/python:arm64_sh

docker run -u root --name pythonamd64 --entrypoint /bin/sh $1/python:amd64_sh /sbin/ldconfig
docker cp pythonamd64:/etc/ld.so.cache ./amd64/ld.so.cache.amd64
docker rm pythonamd64
docker rmi  $1/python:amd64_sh