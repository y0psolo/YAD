#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

. $SCRIPTPATH/common.sh

update_azul() {
    PAYLOAD=$(curl -X 'GET' 'https://api.azul.com/zulu/download/community/v1.0/bundles/?java_version='$1'.0&os=linux&arch='$3'&hw_bitness=64&ext=tar.gz&bundle_type='$2'&javafx=false&release_status=ga&latest=true&support_term=lts' -H 'accept: application/json')
    URL="$(echo $PAYLOAD | jq -r .[0].url)"
    FILENAME=$(echo $PAYLOAD | jq -r .[0].name)
    VERSION="$1.0.$(echo $PAYLOAD | jq -r .[0].java_version[2])"
    PREFIX="${FILENAME%.*.*}/$4"
    if [ $3 = "x86" ]
    then
        ARCH="amd64"
    elif [ $3 = "arm" ]
    then
        ARCH="arm64"
    fi

    # Update WORKSPACE rule
    write_rule azul_$1_$ARCH jre-$1-azul-$ARCH $URL $PREFIX
    # Update util/constants.bzl file
    write_version azul_$1_$ARCH AZUL_VERSIONS_MAPPING $VERSION "[\"$ARCH\", $1]"
}


# JAVA VERSION 8 on amd64
update_azul 8 jre x86

# JAVA VERSION 8 on arm64
update_azul 8 jdk arm jre/

# JAVA VERSION 11 on amd64
update_azul 11 jre x86

# JAVA VERSION 11 on arm64
update_azul 11 jdk arm

# JAVA VERSION 17 on amd64
update_azul 17 jre x86

# JAVA VERSION 17 on arm64
update_azul 17 jre arm