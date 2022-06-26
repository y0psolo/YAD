load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("//update:constants.bzl", "HADOOP_VERSION", "HIVE_VERSION")

filegroup(
    name = "config",
    srcs= [
        "conf/metastore-log4j2.properties",
        "conf/metastore-site.xml",
    ]
)

pkg_tar(
    name = "config_tar",
    srcs = [
        ":config",
    ],
    strip_prefix = "conf",
    package_dir = "/etc/hive",
    mode = "0644",
)

pkg_tar(
    name = "driver_tar",
    srcs = [
        "@mysql//file",
        "@postgresql//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../mysql/file" : ".",
        "../postgresql/file" : ".",
    },
    package_dir = "/opt/hive/lib",
    mode = "0644",
)
pkg_tar(
    name = "guava_tar",
    srcs = [
        "@guava//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../guava/file" : ".",
    },
    package_dir = "/opt/hive/lib",
    mode = "0644",
)

pkg_tar(
    name = "aws_tar",
    srcs = [
        "@aws-java-sdk-bundle//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../aws-java-sdk-bundle/file" : ".",
    },
    package_dir = "/opt/hive/lib",
    mode = "0644",
)

container_layer(
    name = "hivemetastore",
    debs = [],
    env = {
        "HADOOP_VERSION": HADOOP_VERSION,
        "HIVE_VERSION": HIVE_VERSION,
        "HADOOP_HOME": "/opt/hadoop",
        "HIVE_HOME" : "/opt/hive",
    },
    symlinks = {
        "/opt/hive/lib/hive-standalone-metastore.jar" : "/opt/hive/lib/hive-standalone-metastore-" + HIVE_VERSION + ".jar",
    },
    tars = ["@hive_metastore_3//:lib_tar", "@hadoop_3//:lib_tar", ":guava_tar", ":aws_tar", ":config_tar", ":driver_tar"],
    visibility = ["//:__subpackages__"],
)