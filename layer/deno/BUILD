load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "DENO_VERSION")

# TODO: Add arm64 binaries for linux. Need an offical compiled target
[
    pkg_tar(
        name = arch + "_tar",
        srcs = [
            "@deno-" + arch + "//:bin",
        ],
        owner = "0.0",
        package_dir = "/usr/bin",
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../deno-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for arch in ["amd64"]
]

[
    container_layer(
        name = arch,
        env = {
            "DENO_INSTALL_ROOT": "/usr/local",
            "DENO_VERSION": DENO_VERSION,
        },
        tars = [
            ":" + arch + "_tar",
        ],
        visibility = ["//:__subpackages__"],
    )
    for arch in ["amd64"]
]
