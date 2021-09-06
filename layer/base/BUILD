load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")

[
    pkg_tar(
        name = arch + "_tini_tar",
        srcs = ["@tini_" + arch + "//file"],
        mode = "0755",
        package_dir = "/usr/bin",
    )
    for arch in BASE_ARCHITECTURES
]

[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["libc6"],
            PACKAGE[arch]["libssl1.1"],
            PACKAGE[arch]["openssl"],
        ],
        tars = [
            ":" + arch + "_tini_tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]
