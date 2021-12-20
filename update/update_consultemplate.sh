#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/hashicorp/consul-template.git 'v[0-9]*.[0-9]*.[0-9]*'| grep -o -m 1 -E "[0-9]+\.[0-9]+\.[0-9]+$")

# Update WORKSPACE rule
write_rule consul_template_amd64 consul-template-amd64 https://releases.hashicorp.com/consul-template/$VERSION/consul-template_"$VERSION"_linux_amd64.zip "" consultemplate
write_rule consul_template_arm64 consul-template-arm64 https://releases.hashicorp.com/consul-template/$VERSION/consul-template_"$VERSION"_linux_arm64.zip "" consultemplate
# Update util/constants.bzl file
write_version consul_template CONSUL_TEMPLATE_VERSION $VERSION