load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "NONROOT")

container_image(
    name = "prometheus",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
        "/usr/bin/prometheus",
    ],
    layers = [
        "//layer/static:static",
        "//layer/prometheus:prometheus",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//visibility:public"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)

container_image(
    name = "nodeexporter",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
        "/usr/bin/node_exporter",
    ],
    layers = [
        "//layer/static:static",
        "//layer/prometheus:node",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//visibility:public"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)