load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def prometheus_repository():
    http_archive(
        name = "prometheus_amd64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "0e4ebcb1b3282f329cefa7dea88fb5819733dc69bf553b8c2fbf8d031174e8a4",
        strip_prefix = "prometheus-2.33.3.linux-amd64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "prometheus_arm64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "c7fc9d2108217390d68ba57a07ded6b49b47b2bd74d3f1940aba244628f3450a",
        strip_prefix = "prometheus-2.33.3.linux-arm64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-arm64.tar.gz"],
    )

    http_archive(
        name = "node-exporter_amd64",
        build_file = "//ext/prometheus:BUILD.node",
        sha256 = "68f3802c2dd3980667e4ba65ea2e1fb03f4a4ba026cca375f15a0390ff850949",
        strip_prefix = "node_exporter-1.3.1.linux-amd64",
        urls = ["https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "node-exporter_arm64",
        build_file = "//ext/prometheus:BUILD.node",
        sha256 = "f19f35175f87d41545fa7d4657e834e3a37c1fe69f3bf56bc031a256117764e7",
        strip_prefix = "node_exporter-1.3.1.linux-arm64",
        urls = ["https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-arm64.tar.gz"],
    )

    http_archive(
        name = "alertmanager_amd64",
        build_file = "//ext/prometheus:BUILD.alert",
        sha256 = "77793c4d9bb92be98f7525f8bc50cb8adb8c5de2e944d5500e90ab13918771fc",
        strip_prefix = "alertmanager-0.23.0.linux-amd64",
        urls = ["https://github.com/prometheus/alertmanager/releases/download/v0.23.0/alertmanager-0.23.0.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "alertmanager_arm64",
        build_file = "//ext/prometheus:BUILD.alert",
        sha256 = "afa44f350797032ceb714598900cfdddbf81d6ef03d2ecbfc0221cc2cb28a6b9",
        strip_prefix = "alertmanager-0.23.0.linux-arm64",
        urls = ["https://github.com/prometheus/alertmanager/releases/download/v0.23.0/alertmanager-0.23.0.linux-arm64.tar.gz"],
    )
