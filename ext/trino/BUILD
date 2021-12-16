load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "jars",
    srcs = glob([
        "lib/**",
        "plugin/**",
    ]),
)

pkg_tar(
    name = "jars_tar",
    srcs = [
        ":jars",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/trino",
    visibility = ["//visibility:public"],
)