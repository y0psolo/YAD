#!/bin/sh

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

bazel run --config arm64 -c opt //image/python:python
docker run -u root --name pythonarm64 --entrypoint /bin/sh bazel/image/python:python /sbin/ldconfig
docker cp pythonarm64:/etc/ld.so.cache $SCRIPTPATH/../layer/python/arm64/ld.so.cache
docker rm pythonarm64
docker rmi  bazel/image/python:python

bazel run --config x86_64 -c opt //image/python:python
docker run -u root --name pythonamd64 --entrypoint /bin/sh bazel/image/python:python /sbin/ldconfig
docker cp pythonamd64:/etc/ld.so.cache $SCRIPTPATH/../layer/python/amd64/ld.so.cache
docker rm pythonamd64
docker rmi  bazel/image/python:python