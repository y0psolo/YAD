#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh

#  get Current version
VERSION=$(curl -s https://dl.deno.land/release-latest.txt)
NUMERIC_VERSION="${VERSION:1}"


# Update WORKSPACE rule
write_rule deno_amd64 deno-amd64 https://github.com/denoland/deno/releases/download/${VERSION}/deno-x86_64-unknown-linux-gnu.zip "" deno
# Update update/constants.bzl file
write_version deno_amd64 DENO_VERSION $NUMERIC_VERSION