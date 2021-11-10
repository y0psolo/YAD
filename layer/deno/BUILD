load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "DENO_VERSION")
load("//platforms:cpu.bzl", "ubuntu_debs")

# TODO: Add arm64 binaries for linux. Need an offical compiled target
pkg_tar(
    name = "deno_tar",
    srcs = select ({
        "//platforms:k8_cpu": ["@deno-amd64//:bin"],
        "//platforms:aarch64_cpu": ["@deno-arm64//:bin"],
    }),
    owner = "0.0",
    package_dir = "/usr/bin",
    # bug with pkg_tar : resource name is included in the filegroup
    remap_paths = select ({
        "//platforms:k8_cpu": {"../deno-amd64/": "./"},
        "//platforms:aarch64_cpu": {"../deno-arm64/": "./"},
    }),
    strip_prefix = ".",
)

container_layer(
    name = "deno",
    env = {
        "DENO_INSTALL_ROOT": "/usr/local",
        "DENO_VERSION": DENO_VERSION,
    },
    tars = [
        ":deno_tar",
    ],
    visibility = ["//visibility:public"],
)
