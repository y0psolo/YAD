load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")

container_layer(
    name = "cc",
    debs = select({
        "//platforms:k8_cpu_focal": [
            ubuntu_focal_amd64["libgcc1"],
            ubuntu_focal_amd64["libgcc-s1"],
            ubuntu_focal_amd64["libgomp1"],
            ubuntu_focal_amd64["libstdc++6"],
        ],
        "//platforms:aarch64_cpu_focal": [
            ubuntu_focal_arm64["libgcc1"],
            ubuntu_focal_arm64["libgcc-s1"],
            ubuntu_focal_arm64["libgomp1"],
            ubuntu_focal_arm64["libstdc++6"],
        ],
        "//platforms:k8_cpu_bionic": [
            ubuntu_bionic_amd64["libgcc1"],
            ubuntu_bionic_amd64["libgomp1"],
            ubuntu_bionic_amd64["libstdc++6"],
        ],
        "//platforms:aarch64_cpu_bionic": [
            ubuntu_bionic_arm64["libgcc1"],
            ubuntu_bionic_arm64["libgomp1"],
            ubuntu_bionic_arm64["libstdc++6"],
        ],
    }),
    visibility = ["//visibility:public"],
)
