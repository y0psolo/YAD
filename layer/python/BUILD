load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")

[
    pkg_tar(
        name = "ld_cache_" + arch,
        srcs = [":" + arch + "/ld.so.cache"],
        mode = "0644",
        package_dir = "etc",
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]

[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["dash"],
            PACKAGE[arch]["libbz2-1.0"],
            PACKAGE[arch]["libdb5.3"],
            PACKAGE[arch]["libffi7"],
            PACKAGE[arch]["liblzma5"],
            PACKAGE[arch]["libmpdec2"],
            PACKAGE[arch]["libncursesw6"],
            PACKAGE[arch]["libpython3.8-minimal"],
            PACKAGE[arch]["libpython3.8-stdlib"],
            PACKAGE[arch]["libreadline8"],
            PACKAGE[arch]["libsqlite3-0"],
            PACKAGE[arch]["libtinfo6"],
            PACKAGE[arch]["mime-support"],
            PACKAGE[arch]["python3-distutils"],
            PACKAGE[arch]["python3.8-minimal"],
            PACKAGE[arch]["readline-common"],
            PACKAGE[arch]["libcrypt1"],
        ],
        symlinks = {
            "/usr/bin/python": "/usr/bin/python3.8",
            "/usr/bin/python3": "/usr/bin/python3.8",
        },
        tars = [
            "//util:libcbin_" + arch + "_bin.tar",
            "//util:libcbin_" + arch + "_conf.tar",
            "ld_cache_" + arch,
        ],
        visibility = ["//visibility:public"],
    )
    for arch in BASE_ARCHITECTURES
]
