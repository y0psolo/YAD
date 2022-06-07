load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@ubuntu_jammy_amd64//debs:deb_packages.bzl", "ubuntu_jammy_amd64")
load("@ubuntu_jammy_arm64//debs:deb_packages.bzl", "ubuntu_jammy_arm64")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")

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
    debs = select({
        "//platforms:k8_cpu_jammy": [
            ubuntu_jammy_amd64["libc6"],
            ubuntu_jammy_amd64["libssl3"],
            ubuntu_jammy_amd64["openssl"],
        ],
        "//platforms:aarch64_cpu_jammy": [
            ubuntu_jammy_arm64["libc6"],
            ubuntu_jammy_arm64["libssl3"],
            ubuntu_jammy_arm64["openssl"],
        ],
        "//platforms:k8_cpu_focal": [
            ubuntu_focal_amd64["libc6"],
            ubuntu_focal_amd64["libssl1.1"],
            ubuntu_focal_amd64["openssl"],
        ],
        "//platforms:aarch64_cpu_focal": [
            ubuntu_focal_arm64["libc6"],
            ubuntu_focal_arm64["libssl1.1"],
            ubuntu_focal_arm64["openssl"],
        ],
        "//platforms:k8_cpu_bionic": [
            ubuntu_bionic_amd64["libc6"],
            ubuntu_bionic_amd64["libssl1.1"],
            ubuntu_bionic_amd64["openssl"],
        ],
        "//platforms:aarch64_cpu_bionic": [
            ubuntu_bionic_arm64["libc6"],
            ubuntu_bionic_arm64["libssl1.1"],
            ubuntu_bionic_arm64["openssl"],
        ],
    }),
    tars = [
        ":tini_tar",
    ],
    visibility = ["//visibility:public"],
)
