load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//platforms:cpu.bzl", "ubuntu_debs")

alias(
    name = "tini",
    actual = select ({
        "//platforms:k8_cpu": "@tini_amd64//file",
        "//platforms:aarch64_cpu": "@tini_arm64//file",
    })
)

pkg_tar(
    name = "tini_tar",
    srcs = [":tini"],
    mode = "0755",
    package_dir = "/usr/bin",
)

container_layer(
    name = "base",
    debs = ubuntu_debs([
        "libc6",
        "libssl1.1",
        "openssl"
    ]),
    tars = [
        ":tini_tar",
    ],
    visibility = ["//visibility:public"],
)
