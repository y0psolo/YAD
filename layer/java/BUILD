load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "JRE_VERSIONS", "AZUL_VERSIONS_MAPPING", "ADOPTIUM_VERSIONS_MAPPING")
load("//platforms:cpu.bzl", "ubuntu_debs")


# Common layer to all Java image
container_layer(
    name = "common",
    debs = ubuntu_debs([
        "libjpeg-turbo8",
        "libpng16-16",
        "liblcms2-2",
        "libfreetype6",
        "fonts-dejavu-core",
        "fontconfig-config",
        "libfontconfig1",
    ]),
    tars = [
        "//util:cacerts_java.tar",
    ],
    visibility = ["//:__subpackages__"],
)

# Tar needed for Adoptium
[
    pkg_tar(
        name = "adoptium_" + version + "_lib_tar",
        srcs = select ({
            "//platforms:k8_cpu": ["@jre-" + version + "-adoptium-amd64//:lib_dir"],
            "//platforms:aarch64_cpu": ["@jre-" + version + "-adoptium-arm64//:lib_dir"],
        }),
        mode = "0644",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu": "/usr/lib/jvm/jre-" + version + "-amd64",
            "//platforms:aarch64_cpu": "/usr/lib/jvm/jre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu": {"../jre-" + version + "-adoptium-amd64/": "./"},
            "//platforms:aarch64_cpu": {"../jre-" + version + "-adoptium-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

[
    pkg_tar(
        name = "adoptium_" + version + "_bin_tar",
        srcs = select ({
            "//platforms:k8_cpu": ["@jre-" + version + "-adoptium-amd64//:bin_dir"],
            "//platforms:aarch64_cpu": ["@jre-" + version + "-adoptium-arm64//:bin_dir"],
        }),
        mode = "0755",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu": "/usr/lib/jvm/jre-" + version + "-amd64",
            "//platforms:aarch64_cpu": "/usr/lib/jvm/jre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu": {"../jre-" + version + "-adoptium-amd64/": "./"},
            "//platforms:aarch64_cpu": {"../jre-" + version + "-adoptium-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

# Tar needed for Azul
[
    pkg_tar(
        name = "azul_" + version + "_lib_tar",
        srcs = select ({
            "//platforms:k8_cpu": ["@jre-" + version + "-azul-amd64//:lib_dir"],
            "//platforms:aarch64_cpu": ["@jre-" + version + "-azul-arm64//:lib_dir"],
        }),
        mode = "0644",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu": "/usr/lib/jvm/zre-" + version + "-amd64",
            "//platforms:aarch64_cpu": "/usr/lib/jvm/zre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu": {"../jre-" + version + "-azul-amd64/": "./"},
            "//platforms:aarch64_cpu": {"../jre-" + version + "-azul-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

[
    pkg_tar(
        name = "azul_" + version + "_bin_tar",
        srcs = select ({
            "//platforms:k8_cpu": ["@jre-" + version + "-azul-amd64//:bin_dir"],
            "//platforms:aarch64_cpu": ["@jre-" + version + "-azul-arm64//:bin_dir"],
        }),
        mode = "0755",
        owner = "0.0",
        package_dir = select ({
            "//platforms:k8_cpu": "/usr/lib/jvm/zre-" + version + "-amd64",
            "//platforms:aarch64_cpu": "/usr/lib/jvm/zre-" + version + "-arm64",
        }),
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu": {"../jre-" + version + "-azul-amd64/": "./"},
            "//platforms:aarch64_cpu": {"../jre-" + version + "-azul-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
]

# Adoptium layers
[
    container_layer(
        name = "adoptium_" + version,
        env = select ({
            "//platforms:k8_cpu": {
                "JAVA_HOME": "/usr/lib/jvm/jre-" + version + "-amd64",
                "JAVA_VERSION": ADOPTIUM_VERSIONS_MAPPING["amd64"][version],
            },
            "//platforms:aarch64_cpu": {
                "JAVA_HOME": "/usr/lib/jvm/jre-" + version + "-arm64",
                "JAVA_VERSION": ADOPTIUM_VERSIONS_MAPPING["arm64"][version],
            },
        }),
        symlinks = select ({
            "//platforms:k8_cpu": {"/usr/bin/java": "/usr/lib/jvm/jre-" + version + "-amd64/bin/java"},
            "//platforms:aarch64_cpu": {"/usr/bin/java": "/usr/lib/jvm/jre-" + version + "-arm64/bin/java"},
        }),
        tars = [
            ":adoptium_" + version + "_lib_tar",
            ":adoptium_" + version + "_bin_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in JRE_VERSIONS
]

# Azul layers
[
    container_layer(
        name = "azul_" + version,
        env = select ({
            "//platforms:k8_cpu": {
                "JAVA_HOME": "/usr/lib/jvm/zre-" + version + "-amd64",
                "JAVA_VERSION": AZUL_VERSIONS_MAPPING["amd64"][version],
            },
            "//platforms:aarch64_cpu": {
                "JAVA_HOME": "/usr/lib/jvm/zre-" + version + "-arm64",
                "JAVA_VERSION": AZUL_VERSIONS_MAPPING["arm64"][version],
            },
        }),
        symlinks = select ({
            "//platforms:k8_cpu": {"/usr/bin/java": "/usr/lib/jvm/zre-" + version + "-amd64/bin/java"},
            "//platforms:aarch64_cpu": {"/usr/bin/java": "/usr/lib/jvm/zre-" + version + "-arm64/bin/java"},
        }),
        tars = [
            ":azul_" + version + "_lib_tar",
            ":azul_" + version + "_bin_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in JRE_VERSIONS
]