#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/adoptium/temurin8-binaries.git | grep -o -m 1 -E "jdk8u[0-9]+-b[0-9]+$")
RELEASE_VERSION="${VERSION:5}"
VERSION1=${RELEASE_VERSION%-*}
VERSION2=${RELEASE_VERSION#*-}
URL_8_AMD64=https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_x64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz
URL_8_ARM64=https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_aarch64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz

# Update config file for WORKSPACE rule
write_rule adoptium_8_amd64 jre-8-adoptium-amd64 $URL_8_AMD64 $VERSION-jre/
write_rule adoptium_8_arm64 jre-8-adoptium-arm64 $URL_8_ARM64 $VERSION-jre/

# Update config file for util/constants.bzl
write_version adoptium_8 ADOPTIUM_VERSIONS_MAPPING 8.0.$VERSION1 8

VERSION=$(git ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/adoptium/temurin11-binaries.git | grep -o -m 1 -E "jdk-11\.[0-9]+\.[0-9]+\+[0-9]+$")
RELEASE_VERSION="${VERSION:4}"
VERSION1=${RELEASE_VERSION%+*}
VERSION2=${RELEASE_VERSION#*+}
URL_11_AMD64=https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_x64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz
URL_11_ARM64=https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_aarch64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz

# Update config file for WORKSPACE rule
write_rule adoptium_11_amd64 jre-11-adoptium-amd64 $URL_11_AMD64 $VERSION-jre/
write_rule adoptium_11_arm64 jre-11-adoptium-arm64 $URL_11_ARM64 $VERSION-jre/

# Update config file for util/constants.bzl
write_version adoptium_11 ADOPTIUM_VERSIONS_MAPPING $VERSION1 11