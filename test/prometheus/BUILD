load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "prometheus_test",
    configs = [":prometheus.yaml"] ,
    image = "//image/prometheus:prometheus",
    visibility = ["//:__subpackages__"],
    tags = ["prometheus", "amd64", "arm64"],
)

container_test(
    name = "nodeexporter_test",
    configs = [":nodeexporter.yaml"] ,
    image = "//image/prometheus:nodeexporter",
    visibility = ["//:__subpackages__"],
    tags = ["prometheus", "amd64", "arm64"],
)

container_test(
    name = "alertmanager_test",
    configs = [":alertmanager.yaml"] ,
    image = "//image/prometheus:alertmanager",
    visibility = ["//:__subpackages__"],
    tags = ["prometheus", "amd64", "arm64"],
)

test_suite(
    name = "prometheus",
    tags = ["prometheus",],
)