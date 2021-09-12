#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

JRE8=$(curl -s https://cdn.azul.com/zulu/bin/index.yml | grep 1.8.0 | tail -n1)
JRE8_VERSION=$(echo $JRE8 | awk -F':' '{print $1}')
JRE8_VERSION="${JRE8_VERSION:2:3}.${JRE8_VERSION:6:3}"
JRE8_URL=$(echo $JRE8 | awk -F':' '{print $2 ":" $3}')

echo $JRE8_VERSION
echo $JRE8_URL

JRE11=$(curl -s https://cdn.azul.com/zulu/bin/index.yml | grep 11.0. | tail -n1)
JRE11_VERSION=$(echo $JRE11 | awk -F':' '{print $1}')
JRE11_URL=$(echo $JRE11 | awk -F':' '{print $2 ":" $3}')

echo $JRE11_VERSION
echo $JRE11_URL

bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-8-azul-amd64 -url $JRE8_URL
bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-11-azul-amd64 -url $JRE11_URL
sed -i -r "s/(\"8\": \")[0-9.]+(\",)/\1$JRE8_VERSION\2/g" $SCRIPTPATH/../azul.bzl
sed -i -r "s/(\"11\": \")[0-9.]+(\",)/\1$JRE11_VERSION\2/g" $SCRIPTPATH/../azul.bzl