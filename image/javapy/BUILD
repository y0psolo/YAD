load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "JRE_VERSIONS", "NONROOT")

# Iteration over all java versions
[
    container_image(
        name = jre + "_" + version,
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
            "//layer/java:" + jre + "_" + version,
            "//layer/python:python",
        ] + select({
            "//platforms:debug": ["//layer/static:debug"],
            "//conditions:default": [],
        }),
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for version in JRE_VERSIONS
    for jre in [
        "adoptium",
        "azul",
    ]
]