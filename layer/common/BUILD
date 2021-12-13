load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")

# Layer common to java and python image
container_layer(
    name = "common",
    debs = select({
        "//platforms:k8_cpu_focal": [
            ubuntu_focal_amd64["libexpat1"],
            ubuntu_focal_amd64["libuuid1"],
            ubuntu_focal_amd64["zlib1g"],
        ],
        "//platforms:aarch64_cpu_focal": [
            ubuntu_focal_arm64["libexpat1"],
            ubuntu_focal_arm64["libuuid1"],
            ubuntu_focal_arm64["zlib1g"],
        ],
        "//platforms:k8_cpu_bionic": [
            ubuntu_bionic_amd64["libexpat1"],
            ubuntu_bionic_amd64["libuuid1"],
            ubuntu_bionic_amd64["zlib1g"],
        ],
        "//platforms:aarch64_cpu_bionic": [
            ubuntu_bionic_arm64["libexpat1"],
            ubuntu_bionic_arm64["libuuid1"],
            ubuntu_bionic_arm64["zlib1g"],
        ],
    }),
    env = {
        "LANG": "C.UTF-8",
    },
    tars = [
        "//util:libcbin_locale.tar",
    ],
    visibility = ["//visibility:public"],
)