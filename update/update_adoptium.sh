#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

update_adoptium_8() {
    VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/adoptium/temurin8-binaries.git | grep -o -m 1 -E "jdk8u[0-9]+-b[0-9]+$")
    RELEASE_VERSION="${VERSION:5}"
    VERSION1=${RELEASE_VERSION%-*}
    VERSION2=${RELEASE_VERSION#*-}

    # Update WORKSPACE rule
    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-8-adoptium-amd64 -url https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_x64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz -prefix $VERSION-jre/
    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-8-adoptium-arm64 -url https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_aarch64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz -prefix $VERSION-jre/
    # Update util/constants.bzl file
    sed -i -r "s/(ADOPTIUM_VERSIONS_MAPPING.+\"8\": \")[0-9.]+(\",.+)/\18.0.$VERSION1\2/g" $SCRIPTPATH/../util/constants.bzl
    # variable for  image/java/README.adoc
    DOC_8_AMD64=https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_x64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz[8.0.$VERSION1]
    DOC_8_ARM64=https://github.com/adoptium/temurin8-binaries/releases/download/$VERSION/OpenJDK8U-jre_aarch64_linux_hotspot_8u$VERSION1$VERSION2.tar.gz[8.0.$VERSION1]
}

update_adoptium_11() {
    VERSION=$(git ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/adoptium/temurin11-binaries.git | grep -o -m 1 -E "jdk-11\.[0-9]+\.[0-9]+\+[0-9]+$")
    RELEASE_VERSION="${VERSION:4}"
    VERSION1=${RELEASE_VERSION%+*}
    VERSION2=${RELEASE_VERSION#*+}

    # Update WORKSPACE rule
    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-11-adoptium-amd64 -url https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_x64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz -prefix $VERSION-jre/
    bazel run //tools/update_workspace:update_workspace -- -workspace $SCRIPTPATH/../WORKSPACE -rule jre-11-adoptium-arm64 -url https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_aarch64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz -prefix $VERSION-jre/
    # Update util/constants.bzl file
    sed -i -r "s/(ADOPTIUM_VERSIONS_MAPPING.+\"11\": \")[0-9.]+(\",.+)/\1$VERSION1\2/g" $SCRIPTPATH/../util/constants.bzl
    # variable for image/java/README.adoc
    DOC_11_AMD64=https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_x64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz[$VERSION1]
    DOC_11_ARM64=https://github.com/adoptium/temurin11-binaries/releases/download/$VERSION/OpenJDK11U-jre_aarch64_linux_hotspot_${VERSION1}_$VERSION2.tar.gz[$VERSION1]
}

update_adoptium_8

update_adoptium_11

sed -i -r "s,(\| Adoptium \| ).*,\1$DOC_8_AMD64 | $DOC_8_ARM64 | $DOC_11_AMD64 | $DOC_11_ARM64,g" $SCRIPTPATH/../image/java/README.adoc