load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "bin",
    srcs = ["consul-template"],
)

pkg_tar(
    name = "bin_tar",
    srcs = [
        ":bin",
    ],
    strip_prefix = ".",
    mode = "0755",
    package_dir = "/usr/bin",
    visibility = ["//visibility:public"],
)
