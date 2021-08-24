load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")

[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["libc6"],
            PACKAGE[arch]["libssl1.1"],
            PACKAGE[arch]["openssl"],
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]
