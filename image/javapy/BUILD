load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constant.bzl", "JRE_VERSIONS", "NONROOT")

# Iteration over all java versions
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
            "/usr/bin/java",
            "-jar",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/common:common",
            "//layer/java:common",
            "//layer/java:" + version,
            "//layer/python:python",
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
    for version in JRE_VERSIONS
]