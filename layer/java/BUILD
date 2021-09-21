load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "JRE_VERSIONS", "PACKAGE", "PACKAGE_VERSIONS", "AZUL_VERSIONS_MAPPING", "ADOPTIUM_VERSIONS_MAPPING")

# Common layer to all Java image
[
    container_layer(
        name = arch,
        debs = [
            PACKAGE[arch]["libjpeg-turbo8"],
            PACKAGE[arch]["libpng16-16"],
            PACKAGE[arch]["liblcms2-2"],
            PACKAGE[arch]["libfreetype6"],
            PACKAGE[arch]["fonts-dejavu-core"],
            PACKAGE[arch]["fontconfig-config"],
            PACKAGE[arch]["libfontconfig1"],
        ],
        tars = [
            "//util:cacerts_java_" + arch + ".tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]

# Tar needed for Adoptium
[
    pkg_tar(
        name = arch + "_adoptium_" + version + "_lib_tar",
        srcs = [
            "@jre-" + version + "-adoptium-" + arch + "//:lib_dir",
        ],
        mode = "0644",
        owner = "0.0",
        package_dir = "/usr/lib/jvm/jre-" + version + "-" + arch,
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../jre-" + version + "-adoptium-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]

[
    pkg_tar(
        name = arch + "_adoptium_" + version + "_bin_tar",
        srcs = [
            "@jre-" + version + "-adoptium-" + arch + "//:bin_dir",
        ],
        mode = "0755",
        owner = "0.0",
        package_dir = "/usr/lib/jvm/jre-" + version + "-" + arch,
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../jre-" + version + "-adoptium-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]

# Tar needed for Azul
[
    pkg_tar(
        name = arch + "_azul_" + version + "_lib_tar",
        srcs = [
            "@jre-" + version + "-azul-" + arch + "//:lib_dir",
        ],
        mode = "0644",
        owner = "0.0",
        package_dir = "/usr/lib/jvm/zre-" + version + "-" + arch,
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../jre-" + version + "-azul-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]

[
    pkg_tar(
        name = arch + "_azul_" + version + "_bin_tar",
        srcs = [
            "@jre-" + version + "-azul-" + arch + "//:bin_dir",
        ],
        mode = "0755",
        owner = "0.0",
        package_dir = "/usr/lib/jvm/zre-" + version + "-" + arch,
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../jre-" + version + "-azul-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]

# Adoptium layers
[
    container_layer(
        name = arch + "_adoptium_" + version,
        env = {
            "JAVA_HOME": "/usr/lib/jvm/jre-" + version + "-" + arch,
            "JAVA_VERSION": ADOPTIUM_VERSIONS_MAPPING[version],
        },
        symlinks = {"/usr/bin/java": "/usr/lib/jvm/jre-" + version + "-" + arch + "/bin/java"},
        tars = [
            ":" + arch + "_adoptium_" + version + "_lib_tar",
            ":" + arch + "_adoptium_" + version + "_bin_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]

# Azul layers
[
    container_layer(
        name = arch + "_azul_" + version,
        env = {
            "JAVA_HOME": "/usr/lib/jvm/zre-" + version + "-" + arch,
            "JAVA_VERSION": AZUL_VERSIONS_MAPPING[version],
        },
        symlinks = {"/usr/bin/java": "/usr/lib/jvm/zre-" + version + "-" + arch + "/bin/java"},
        tars = [
            ":" + arch + "_azul_" + version + "_lib_tar",
            ":" + arch + "_azul_" + version + "_bin_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
]