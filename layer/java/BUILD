load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "JRE_VERSIONS", "AZUL_VERSIONS_MAPPING", "ADOPTIUM_VERSIONS_MAPPING")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")


# Common layer to all Java image
container_layer(
    name = "common",
    debs = select({
        "//platforms:k8_cpu_focal": [
            ubuntu_focal_amd64["libjpeg-turbo8"],
            ubuntu_focal_amd64["libpng16-16"],
            ubuntu_focal_amd64["liblcms2-2"],
            ubuntu_focal_amd64["libfreetype6"],
            ubuntu_focal_amd64["fonts-dejavu-core"],
            ubuntu_focal_amd64["fontconfig-config"],
            ubuntu_focal_amd64["libfontconfig1"],
        ],
        "//platforms:aarch64_cpu_focal": [
            ubuntu_focal_arm64["libjpeg-turbo8"],
            ubuntu_focal_arm64["libpng16-16"],
            ubuntu_focal_arm64["liblcms2-2"],
            ubuntu_focal_arm64["libfreetype6"],
            ubuntu_focal_arm64["fonts-dejavu-core"],
            ubuntu_focal_arm64["fontconfig-config"],
            ubuntu_focal_arm64["libfontconfig1"],
        ],
        "//platforms:k8_cpu_bionic": [
            ubuntu_bionic_amd64["libjpeg-turbo8"],
            ubuntu_bionic_amd64["libpng16-16"],
            ubuntu_bionic_amd64["liblcms2-2"],
            ubuntu_bionic_amd64["libfreetype6"],
            ubuntu_bionic_amd64["fonts-dejavu-core"],
            ubuntu_bionic_amd64["fontconfig-config"],
            ubuntu_bionic_amd64["libfontconfig1"],
        ],
        "//platforms:aarch64_cpu_bionic": [
            ubuntu_bionic_arm64["libjpeg-turbo8"],
            ubuntu_bionic_arm64["libpng16-16"],
            ubuntu_bionic_arm64["liblcms2-2"],
            ubuntu_bionic_arm64["libfreetype6"],
            ubuntu_bionic_arm64["fonts-dejavu-core"],
            ubuntu_bionic_arm64["fontconfig-config"],
            ubuntu_bionic_arm64["libfontconfig1"],
        ],
    }),
    tars = [
        "//util:cacerts_java.tar",
    ],
    visibility = ["//:__subpackages__"],
)

# Tar needed for Java
[
    pkg_tar(
        name = version + "_lib_tar",
        srcs = select ({
            "//platforms:k8_cpu_adoptium": ["@jre-" + version + "-adoptium-amd64//:lib_dir"],
            "//platforms:aarch64_cpu_adoptium": ["@jre-" + version + "-adoptium-arm64//:lib_dir"],
            "//platforms:k8_cpu_azul": ["@jre-" + version + "-azul-amd64//:lib_dir"],
            "//platforms:aarch64_cpu_azul": ["@jre-" + version + "-azul-arm64//:lib_dir"],
        }),
        mode = "0644",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu_adoptium": "/usr/lib/jvm/jre-" + version + "-amd64",
            "//platforms:aarch64_cpu_adoptium": "/usr/lib/jvm/jre-" + version + "-arm64",
            "//platforms:k8_cpu_azul": "/usr/lib/jvm/zre-" + version + "-amd64",
            "//platforms:aarch64_cpu_azul": "/usr/lib/jvm/zre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu_adoptium": {"../jre-" + version + "-adoptium-amd64/": "./"},
            "//platforms:aarch64_cpu_adoptium": {"../jre-" + version + "-adoptium-arm64/": "./"},
             "//platforms:k8_cpu_azul": {"../jre-" + version + "-azul-amd64/": "./"},
            "//platforms:aarch64_cpu_azul": {"../jre-" + version + "-azul-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

[
    pkg_tar(
        name = version + "_bin_tar",
        srcs = select ({
            "//platforms:k8_cpu_adoptium": ["@jre-" + version + "-adoptium-amd64//:bin_dir"],
            "//platforms:aarch64_cpu_adoptium": ["@jre-" + version + "-adoptium-arm64//:bin_dir"],
            "//platforms:k8_cpu_azul": ["@jre-" + version + "-azul-amd64//:bin_dir"],
            "//platforms:aarch64_cpu_azul": ["@jre-" + version + "-azul-arm64//:bin_dir"],
        }),
        mode = "0755",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu_adoptium": "/usr/lib/jvm/jre-" + version + "-amd64",
            "//platforms:aarch64_cpu_adoptium": "/usr/lib/jvm/jre-" + version + "-arm64",
            "//platforms:k8_cpu_azul": "/usr/lib/jvm/zre-" + version + "-amd64",
            "//platforms:aarch64_cpu_azul": "/usr/lib/jvm/zre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu_adoptium": {"../jre-" + version + "-adoptium-amd64/": "./"},
            "//platforms:aarch64_cpu_adoptium": {"../jre-" + version + "-adoptium-arm64/": "./"},
            "//platforms:k8_cpu_azul": {"../jre-" + version + "-azul-amd64/": "./"},
            "//platforms:aarch64_cpu_azul": {"../jre-" + version + "-azul-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

# Java layer
[
    container_layer(
        name = version,
        env = select ({
            "//platforms:k8_cpu_adoptium": {
                "JAVA_HOME": "/usr/lib/jvm/jre-" + version + "-amd64",
                "JAVA_VERSION": ADOPTIUM_VERSIONS_MAPPING["amd64"][version],
            },
            "//platforms:aarch64_cpu_adoptium": {
                "JAVA_HOME": "/usr/lib/jvm/jre-" + version + "-arm64",
                "JAVA_VERSION": ADOPTIUM_VERSIONS_MAPPING["arm64"][version],
            },
            "//platforms:k8_cpu_azul": {
                "JAVA_HOME": "/usr/lib/jvm/zre-" + version + "-amd64",
                "JAVA_VERSION": AZUL_VERSIONS_MAPPING["amd64"][version],
            },
            "//platforms:aarch64_cpu_azul": {
                "JAVA_HOME": "/usr/lib/jvm/zre-" + version + "-arm64",
                "JAVA_VERSION": AZUL_VERSIONS_MAPPING["arm64"][version],
            },
        }),
        symlinks = select ({
            "//platforms:k8_cpu_adoptium": {"/usr/bin/java": "/usr/lib/jvm/jre-" + version + "-amd64/bin/java"},
            "//platforms:aarch64_cpu_adoptium": {"/usr/bin/java": "/usr/lib/jvm/jre-" + version + "-arm64/bin/java"},
            "//platforms:k8_cpu_azul": {"/usr/bin/java": "/usr/lib/jvm/zre-" + version + "-amd64/bin/java"},
            "//platforms:aarch64_cpu_azul": {"/usr/bin/java": "/usr/lib/jvm/zre-" + version + "-arm64/bin/java"},
        }),
        tars = [
            version + "_lib_tar",
            version + "_bin_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in JRE_VERSIONS
]