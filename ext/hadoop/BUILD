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

filegroup(
    name = "guava",
    srcs = glob(["share/hadoop/common/lib/guava-*-jre.jar"]),
    visibility = ["//visibility:public"],
)

filegroup(
    name = "aws",
    srcs = glob([
        "share/hadoop/tools/lib/hadoop-aws-*.jar",
        "share/hadoop/tools/lib/aws-java-sdk-bundle-*.jar",
    ]),
    visibility = ["//visibility:public"],
)