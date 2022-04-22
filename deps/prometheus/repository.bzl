load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def prometheus_repository():
    http_archive(
        name = "prometheus_amd64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "e4546960688d1c85530ec3a93e109d15b540f3251e1f4736d0d9735e1e857faf",
        strip_prefix = "prometheus-2.35.0.linux-amd64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometheus-2.35.0.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "prometheus_arm64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "3ebe0c533583a9ab03363a80aa629edd8e0cc42da3583e33958eb7abe74d4cd2",
        strip_prefix = "prometheus-2.35.0.linux-arm64",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometheus-2.35.0.linux-arm64.tar.gz"],
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
        sha256 = "6fa982232ae7be5524f5b3cd4e90b7c6a75086368200c917644eaa3e806555dc",
        strip_prefix = "alertmanager-0.24.0.linux-amd64",
        urls = ["https://github.com/prometheus/alertmanager/releases/download/v0.24.0/alertmanager-0.24.0.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "alertmanager_arm64",
        build_file = "//ext/prometheus:BUILD.alert",
        sha256 = "f54dd97f20b5d06517cbe83bae6333325fc26bc6595ede433f165aefb562d421",
        strip_prefix = "alertmanager-0.24.0.linux-arm64",
        urls = ["https://github.com/prometheus/alertmanager/releases/download/v0.24.0/alertmanager-0.24.0.linux-arm64.tar.gz"],
    )
