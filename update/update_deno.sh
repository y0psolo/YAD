#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

#  get Current version
VERSION=$(curl -s https://dl.deno.land/release-latest.txt)
NUMERIC_VERSION="${VERSION:1}"

# update workspace with current version
bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule deno-amd64 -url https://github.com/denoland/deno/releases/download/${VERSION}/deno-x86_64-unknown-linux-gnu.zip
sed -i -r "s/(DENO_VERSION[^0-9.]+)[0-9.]+(.+)/\1$NUMERIC_VERSION\2/g" $SCRIPTPATH/../util/constants.bzl