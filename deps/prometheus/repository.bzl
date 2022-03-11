load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def prometheus_repository():
    http_archive(
        name = "prometheus_amd64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "53876d18d4ed2d02a35797d91b09e9057621b495415703be77dd29956002514d",
        strip_prefix = "prometheus-2.33.5.linux-amd64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.33.5/prometheus-2.33.5.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "prometheus_arm64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "538f558d37e7863db57b3e81ba7133e2ba397b9db0c3b3e481885296b5956073",
        strip_prefix = "prometheus-2.33.5.linux-arm64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.33.5/prometheus-2.33.5.linux-arm64.tar.gz"],
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
