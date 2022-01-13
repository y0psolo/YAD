load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "prometheus_amd64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "f08e96d73330a9ee7e6922a9f5b72ea188988a083bbfa9932359339fcf504a74",
        strip_prefix = "prometheus-2.32.1.linux-amd64/",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.32.1/prometheus-2.32.1.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "prometheus_arm64",
        build_file = "//ext/prometheus:BUILD.prom",
        sha256 = "2d185a8ed46161babeaaac8ce00ef1efdeccf3ef4ed234cd181eac6cad1ae4b2",
        strip_prefix = "prometheus-2.32.1.linux-arm64/",
        urls = ["https://github.com/prometheus/prometheus/releases/download/v2.32.1/prometheus-2.32.1.linux-arm64.tar.gz"],
    )

    http_archive(
        name = "node-exporter_amd64",
        build_file = "//ext/prometheus:BUILD.node",
        sha256 = "68f3802c2dd3980667e4ba65ea2e1fb03f4a4ba026cca375f15a0390ff850949",
        strip_prefix = "node_exporter-1.3.1.linux-amd64/",
        urls = ["https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz"],
    )

    http_archive(
        name = "node-exporter_arm64",
        build_file = "//ext/prometheus:BUILD.node",
        sha256 = "f19f35175f87d41545fa7d4657e834e3a37c1fe69f3bf56bc031a256117764e7",
        strip_prefix = "node_exporter-1.3.1.linux-arm64/",
        urls = ["https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-arm64.tar.gz"],
    )