load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "NODEJS_VERSIONS", "NONROOT")

# Iteration over all nodejs versions
[
    container_image(
        name = version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/node",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/nodejs:" + version,
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
    for version in NODEJS_VERSIONS
]