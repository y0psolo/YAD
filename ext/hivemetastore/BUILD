load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "lib",
    srcs = glob(
        [
            "scripts/metastore/upgrade/**",
            "lib/**",
            # "conf/**",
            "binary-package-licenses/**",
        ],
        exclude = glob(["lib/guava-*jar"]),
    ) + ["LICENSE",],
)

pkg_tar(
    name = "lib_tar",
    srcs = [
        ":lib",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/hive",
    visibility = ["//visibility:public"],
)
