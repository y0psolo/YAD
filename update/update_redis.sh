#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


OPENSSL_VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/openssl/openssl.git 'OpenSSL_[0-9]_[0-9]_[0-9][a-z]'| grep -o -m 1 -E "OpenSSL_[0-9]_[0-9]_[0-9][a-z]$")

VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/redis/redis.git '[0-9]*.[0-9]*.[0-9]*'| grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")
NUMERIC_VERSION="${VERSION:1}"

# Update WORKSPACE rule
write_rule redis redis http://download.redis.io/releases/redis-$VERSION.tar.gz redis-$VERSION/ redis
write_rule openssl openssl https://github.com/openssl/openssl/archive/refs/tags/$OPENSSL_VERSION.tar.gz openssl-$OPENSSL_VERSION/ redis
# Update util/constants.bzl file
write_version redis REDIS_VERSION $VERSION