load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@ubuntu_jammy_amd64//debs:deb_packages.bzl", "ubuntu_jammy_amd64")
load("@ubuntu_jammy_arm64//debs:deb_packages.bzl", "ubuntu_jammy_arm64")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")
load("//update:constants.bzl", "SPARK_VERSIONS", "SPARK_VERSIONS_MAPPING")

pkg_tar(
    name = "guava_tar",
    srcs = [
        "@guava//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../guava/file" : ".",
    },
    package_dir = "/opt/spark/jars",
    mode = "0644",
)

pkg_tar(
    name = "log_tar",
    srcs = [
        "@log4j-core//file",
        "@log4j-api//file",
        "@log4j-1.2-api//file",
        "@log4j-slf4j-impl//file",
        "@log4j-layout-template-json//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../log4j-core/file" : ".",
        "../log4j-api/file" : ".",
        "../log4j-1.2-api/file" : ".",
        "../log4j-slf4j-impl/file" : ".",
        "../log4j-layout-template-json/file" : ".",
    },
    package_dir = "/opt/spark/jars",
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
    package_dir = "/opt/spark/jars",
    mode = "0644",
)

pkg_tar(
    name = "prometheus_tar",
    srcs = [
        "@prometheus_java_agent//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../prometheus_java_agent/file" : ".",
    },
    package_dir = "/prometheus",
    mode = "0644",
)

pkg_tar(
    name = "conf_tar",
    srcs = [
        "conf/prometheus.yml",
        "conf/metrics.properties",
    ],
    strip_prefix = ".",
    package_dir = "/etc/metrics",
    mode = "0644",
)

[
    container_layer(
        name = "spark" + version,
        debs = select({
            "//platforms:k8_cpu_jammy": [
                ubuntu_jammy_amd64["coreutils"],
                ubuntu_jammy_amd64["libacl1"],
                ubuntu_jammy_amd64["libattr1"],
                ubuntu_jammy_amd64["libselinux1"],
                ubuntu_jammy_amd64["libpcre2-8-0"],
                ubuntu_jammy_amd64["tar"],
                ubuntu_jammy_amd64["gzip"],
                ubuntu_jammy_amd64["bash"],
            ],
            "//platforms:aarch64_cpu_jammy": [
                ubuntu_jammy_arm64["coreutils"],
                ubuntu_jammy_arm64["libacl1"],
                ubuntu_jammy_arm64["libattr1"],
                ubuntu_jammy_arm64["libselinux1"],
                ubuntu_jammy_arm64["libpcre2-8-0"],
                ubuntu_jammy_arm64["tar"],
                ubuntu_jammy_arm64["gzip"],
                ubuntu_jammy_arm64["bash"],
            ],
            "//platforms:k8_cpu_focal": [
                ubuntu_focal_amd64["coreutils"],
                ubuntu_focal_amd64["libacl1"],
                ubuntu_focal_amd64["libattr1"],
                ubuntu_focal_amd64["libselinux1"],
                ubuntu_focal_amd64["libpcre2-8-0"],
                ubuntu_focal_amd64["tar"],
                ubuntu_focal_amd64["gzip"],
                ubuntu_focal_amd64["bash"],
            ],
            "//platforms:aarch64_cpu_focal": [
                ubuntu_focal_arm64["coreutils"],
                ubuntu_focal_arm64["libacl1"],
                ubuntu_focal_arm64["libattr1"],
                ubuntu_focal_arm64["libselinux1"],
                ubuntu_focal_arm64["libpcre2-8-0"],
                ubuntu_focal_arm64["tar"],
                ubuntu_focal_arm64["gzip"],
                ubuntu_focal_arm64["bash"],
            ],
            "//platforms:k8_cpu_bionic": [
                ubuntu_bionic_amd64["coreutils"],
                ubuntu_bionic_amd64["libacl1"],
                ubuntu_bionic_amd64["libattr1"],
                ubuntu_bionic_amd64["libselinux1"],
                ubuntu_bionic_amd64["libpcre2-8-0"],
                ubuntu_bionic_amd64["tar"],
                ubuntu_bionic_amd64["gzip"],
                ubuntu_bionic_amd64["bash"],
            ],
            "//platforms:aarch64_cpu_bionic": [
                ubuntu_bionic_arm64["coreutils"],
                ubuntu_bionic_arm64["libacl1"],
                ubuntu_bionic_arm64["libattr1"],
                ubuntu_bionic_arm64["libselinux1"],
                ubuntu_bionic_arm64["libpcre2-8-0"],
                ubuntu_bionic_arm64["tar"],
                ubuntu_bionic_arm64["gzip"],
                ubuntu_bionic_arm64["bash"],
            ],
        }),
        env = {
            "SPARK_VERSION": SPARK_VERSIONS_MAPPING[version],
            "SPARK_LOCAL_DIRS" : "/tmp",
            "SPARK_HOME" : "/opt/spark",
        },
        symlinks = {
            "/bin/sh" : "/bin/bash"
        },
        tars = [
            "@spark_hadoop_" + version + "//:jars_tar",
            "@spark_hadoop_" + version + "//:licences_tar",
            "@spark_hadoop_" + version + "//:bin_tar",
            # Add last guava version
            ":guava_tar",
            # Add log4j jar
            ":log_tar",
            # Add last aws-sdk-bundle version
            ":aws_tar",
            ":prometheus_tar",
            ":conf_tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for version in SPARK_VERSIONS
]

[
    container_layer(
        name = "pyspark" + version,
        debs = [],
        tars = [
            "@spark_hadoop_" + version + "//:python_tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for version in SPARK_VERSIONS
]