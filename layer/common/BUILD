load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")

# Layer common to java and python image
[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["libexpat1"],
            PACKAGE[arch]["libuuid1"],
            PACKAGE[arch]["zlib1g"],
        ],
        env = {
            "LANG": "C.UTF-8",
        },
        tars = [
            "//util:libcbin_" + arch + "_locale.tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]

# Layer for sh POSIX compliant shell
[
    container_layer(
        name = arch + "_sh",
        debs = [
            PACKAGE[arch]["dash"],
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]
