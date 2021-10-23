#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

update_adoptium() {
    PAYLOAD=$(curl -X 'GET' 'https://api.adoptium.net/v3/assets/feature_releases/'$1'/ga?architecture='$2'&heap_size=normal&image_type=jdk&jvm_impl=hotspot&os=linux&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse' -H 'accept: application/json')
    CHECKSUM=$(echo $PAYLOAD | jq -r .[0].binaries[0].package.checksum)
    URL=$(echo $PAYLOAD | jq -r .[0].binaries[0].package.link)
    RELEASE=$(echo $PAYLOAD | jq -r .[0].release_name)
    SEMVER=$(echo $PAYLOAD | jq -r .[0].version_data.semver)
    VERSION=${SEMVER%+*}
    if [ $2 = "x64" ]
    then
        ARCH="amd64"
    elif [ $2 = "aarch64" ]
    then
        ARCH="arm64"
    fi

    # Update WORKSPACE rule
    write_rule adoptium_$1_$ARCH jre-$1-adoptium-$ARCH $URL $RELEASE/$3
    # Update util/constants.bzl file
    write_version adoptium_$1_$ARCH ADOPTIUM_VERSIONS_MAPPING $VERSION "[\"$ARCH\", $1]" 
}

update_adoptium 8 x64 jre/
update_adoptium 8 aarch64 jre/

update_adoptium 11 x64
update_adoptium 11 aarch64

update_adoptium 17 x64
update_adoptium 17 aarch64