load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("//util:constants.bzl", "TRINO_VERSION")

filegroup(
    name = "config",
    srcs= [
        "conf/config.properties",
        "conf/log.properties",
        "conf/catalog/jmx.properties",
        "conf/catalog/memory.properties",
        "conf/catalog/tcpds.properties",
        "conf/catalog/tcpdh.properties",
    ],
)

pkg_tar(
    name = "config_tar",
    srcs = [
        ":config",
    ],
    strip_prefix = "conf",
    package_dir = "/etc/trino",    
    mode = "0644",
)

container_layer(
    name = "server",
    env = {
        "TRINO_VERSION": TRINO_VERSION,
    },
    symlinks = {
        "/data/trino/etc" : "/etc/trino",
        "/opt/trino/etc" : "/etc/trino" ,
        "/data/trino/plugin" : "/opt/trino/plugin",
    },
    tars = [
        "@trino_server//:jars_tar", ":config_tar", ":trino_struct.tgz",
    ],
    visibility = ["//:__subpackages__"],
)

pkg_tar(
    name = "cli_tar",
    srcs = [
        "@trino_cli//file",
    ],
    strip_prefix = ".",
    remap_paths = {
        "../trino_cli/file" : ".",
    },
    package_dir = "/usr/bin",
    mode = "0755",
)

container_layer(
    name = "cli",
    debs = select({
        "//platforms:k8_cpu_focal": [
            ubuntu_focal_amd64["dash"],
            ubuntu_focal_amd64["less"],
            ubuntu_focal_amd64["libtinfo6"],
        ],
        "//platforms:aarch64_cpu_focal": [
            ubuntu_focal_arm64["dash"],
            ubuntu_focal_arm64["less"],
            ubuntu_focal_arm64["libtinfo6"],
        ],
        "//platforms:k8_cpu_bionic": [
            ubuntu_bionic_amd64["dash"],
            ubuntu_bionic_amd64["less"],
            ubuntu_bionic_amd64["libtinfo6"],
        ],
        "//platforms:aarch64_cpu_bionic": [
            ubuntu_bionic_arm64["dash"],
            ubuntu_bionic_arm64["less"],
            ubuntu_bionic_arm64["libtinfo6"],
        ],
    }),
    env = {
            "TRINO_VERSION": TRINO_VERSION,
            "TERM" : "xterm-256color",
            "PAGER" : "/usr/bin/less",
    },
    tars = [
        ":cli_tar"
    ],
    visibility = ["//:__subpackages__"],
)