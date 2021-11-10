load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//platforms:cpu.bzl", "ubuntu_debs")



pkg_tar(
    name = "ld_cache",
    srcs = select ({
        "//platforms:k8_cpu": [":amd64/ld.so.cache"],
        "//platforms:aarch64_cpu": [":arm64/ld.so.cache"],
    }),
    mode = "0644",
    package_dir = "etc",
    visibility = ["//:__subpackages__"],
)

container_layer(
    name = "python",
    debs = ubuntu_debs([
        "dash",
        "libbz2-1.0",
        "libdb5.3",
        "libffi7",
        "liblzma5",
        "libmpdec2",
        "libncursesw6",
        "libpython3.8-minimal",
        "libpython3.8-stdlib",
        "libreadline8",
        "libsqlite3-0",
        "libtinfo6",
        "mime-support",
        "python3-distutils",
        "python3.8-minimal",
        "readline-common",
        "libcrypt1",
    ]),
    symlinks = {
        "/usr/bin/python": "/usr/bin/python3.8",
        "/usr/bin/python3": "/usr/bin/python3.8",
    },
    tars = [
        "//util:libcbin_bin.tar",
        "//util:libcbin_conf.tar",
        ":ld_cache",
    ],
    visibility = ["//visibility:public"],
)