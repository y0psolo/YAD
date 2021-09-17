load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NONROOT")

# TODO: Add arm64 binaries for linux. Need an offical compiled target
[
    container_image(
        name = arch,
        architecture = arch,
        entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/deno",
        ],
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/deno:" + arch,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for arch in ["amd64"]
]

[
    container_image(
        name = arch + "_debug",
        architecture = arch,
        entrypoint = ["/bin/sh"],
        layers = [
            "//layer/static:" + arch,
            "//layer/static:" + arch + "_debug",
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/deno:" + arch,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for arch in ["amd64"]
]
