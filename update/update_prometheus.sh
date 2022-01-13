#/bin/sh

set -o errexit

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. $SCRIPTPATH/common.sh


VERSION_PROM=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/prometheus/prometheus 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+.[0-9]+.[0-9]+$")
VERSION_NODE=$(git -c versionsort.suffix=- ls-remote -t --exit-code --refs --sort=-v:refname https://github.com/prometheus/node_exporter 'v[0-9]*.[0-9]*.[0-9]*' | grep -o -m 1 -E "[0-9]+.[0-9]+.[0-9]+$")

# Update WORKSPACE rule
write_rule prometheus_amd64 prometheus_amd64 https://github.com/prometheus/prometheus/releases/download/v$VERSION_PROM/prometheus-$VERSION_PROM.linux-amd64.tar.gz "" prometheus
write_rule prometheus_arm64 prometheus_arm64 https://github.com/prometheus/prometheus/releases/download/v$VERSION_PROM/prometheus-$VERSION_PROM.linux-arm64.tar.gz "" prometheus
write_rule nodeexporter_amd64 node-exporter_amd64 https://github.com/prometheus/node_exporter/releases/download/v$VERSION_NODE/node_exporter-$VERSION_NODE.linux-amd64.tar.gz "" prometheus
write_rule nodeexporter_arm64 node-exporter_arm64 https://github.com/prometheus/node_exporter/releases/download/v$VERSION_NODE/node_exporter-$VERSION_NODE.linux-arm64.tar.gz "" prometheus

# Update update/constants.bzl file
write_version prometheus PROMETHEUS_VERSION $VERSION_PROM
write_version nodeexporter NODE_EXPORTER_VERSION $VERSION_NODE