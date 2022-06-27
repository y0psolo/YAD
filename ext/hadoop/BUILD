load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "lib",
    srcs = glob([
        "share/hadoop/common/**",
        # "libexec/**",
        # "lib/**",
        # "etc/**",
        # "bin/**",
    ]) + ["LICENSE.txt", "NOTICE.txt",],
)

pkg_tar(
    name = "lib_tar",
    srcs = [
        ":lib",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/hadoop",
    visibility = ["//visibility:public"],
)