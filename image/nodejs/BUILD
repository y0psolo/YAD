load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NODEJS_VERSIONS", "NONROOT")

# Iteration over all nodejs versions
[
    container_image(
        name = arch + "_" + version,
        architecture = arch,
        entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/node",
        ],
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/nodejs:" + arch + "_" + version,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for version in NODEJS_VERSIONS
    for arch in BASE_ARCHITECTURES
]

[
    container_image(
        name = arch + "_" + version + "_debug",
        architecture = arch,
        entrypoint = ["/bin/sh"],
        layers = [
            "//layer/static:" + arch,
            "//layer/static:" + arch + "_debug",
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/nodejs:" + arch + "_" + version,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for version in NODEJS_VERSIONS
    for arch in BASE_ARCHITECTURES
]
