load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NONROOT")

[
    container_image(
        name = arch,
        architecture = arch,
        entrypoint = [
            "/usr/bin/python3",
        ],
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/common:" + arch,
            "//layer/python:" + arch,
        ],
        user = "%d" % NONROOT,
        visibility = ["//:__subpackages__"],
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
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/common:" + arch,
            "//layer/python:" + arch,
            "//layer/static:" + arch + "_debug",
        ],
        user = "%d" % NONROOT,
        visibility = ["//:__subpackages__"],
        workdir = "/home/nonroot",
    )
    for arch in BASE_ARCHITECTURES
]
