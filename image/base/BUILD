load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NONROOT")

[
    container_image(
        name = arch,
        architecture = arch,
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for arch in BASE_ARCHITECTURES
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
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
    )
    for arch in BASE_ARCHITECTURES
]
