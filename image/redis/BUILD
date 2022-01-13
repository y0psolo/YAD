load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "NONROOT")

container_image(
    name = "server",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/redis-server",
    ],
    layers = [
        "//layer/static:static",
        "//layer/base:base",
        "//layer/redis:server",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)

container_image(
    name = "cli",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
            "/usr/bin/redis-cli",
    ],
    layers = [
        "//layer/static:static",
        "//layer/base:base",
        "//layer/redis:cli",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)