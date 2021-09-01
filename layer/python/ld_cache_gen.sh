#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

bazel run //image/python:amd64
bazel run //image/python:arm64

docker run -u root --name pythonarm64 --entrypoint /bin/sh bazel/image/python:arm64 /sbin/ldconfig
docker cp pythonarm64:/etc/ld.so.cache $SCRIPTPATH/arm64/ld.so.cache
docker rm pythonarm64
docker rmi  bazel/image/python:arm64

docker run -u root --name pythonamd64 --entrypoint /bin/sh bazel/image/python:amd64 /sbin/ldconfig
docker cp pythonamd64:/etc/ld.so.cache $SCRIPTPATH/amd64/ld.so.cache
docker rm pythonamd64
docker rmi  bazel/image/python:amd64