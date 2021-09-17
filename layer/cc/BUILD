load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")

[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["libgcc1"],
            PACKAGE[arch]["libgomp1"],
            PACKAGE[arch]["libstdc++6"],
        ],
        visibility = ["//visibility:public"],
    )
    for arch in BASE_ARCHITECTURES
]
