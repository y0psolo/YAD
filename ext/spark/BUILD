load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "bin",
    srcs = [
        "bin/beeline",
        "bin/find-spark-home",
        "bin/pyspark",
        "bin/spark-class",
        "bin/spark-shell",
        "bin/spark-sql",
        "bin/spark-submit",
        "bin/sparkR",
        "bin/load-spark-env.sh",
    ],
)

filegroup(
    name = "jars",
    srcs = glob(
        ["jars/**",],
        exclude = ["jars/guava*.jar"],
    )
)

filegroup(
    name = "licences",
    srcs = glob([
        "licenses/**",
    ]) + ["LICENSE", "NOTICE",],
)

filegroup(
    name = "python",
    srcs = glob([
        "python/**",
    ]),
)

filegroup(
    name = "r",
    srcs = glob([
        "R/**",
    ]),
)

filegroup(
    name = "examples",
    srcs = glob([
        "examples/**",
        "data/**",
    ]),
)

pkg_tar(
    name = "jars_tar",
    srcs = [
        ":jars",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)

pkg_tar(
    name = "licences_tar",
    srcs = [
        ":licences",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)

pkg_tar(
    name = "python_tar",
    srcs = [
        ":python",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)

pkg_tar(
    name = "r_tar",
    srcs = [
        ":r",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)

pkg_tar(
    name = "examples_tar",
    srcs = [
        ":examples",
    ],
    strip_prefix = ".",
    mode = "0644",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)
pkg_tar(
    name = "bin_tar",
    srcs = [
        ":bin",
    ],
    strip_prefix = ".",
    mode = "0755",
    package_dir = "/opt/spark",
    visibility = ["//visibility:public"],
)