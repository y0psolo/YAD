load("@rules_deb_packages//:update_deb_packages.bzl", "update_deb_packages")
load("@rules-update//:update.bzl", "update_http", "update_version")
 
package(default_visibility = ["//:__subpackages__"])

update_deb_packages(
    name = "update_deb_packages",
    bzl_files = [
        "ubuntu_focal_amd64.bzl",
        "ubuntu_focal_arm64.bzl",
        "ubuntu_bionic_amd64.bzl",
        "ubuntu_bionic_arm64.bzl",
    ],
    pgp_keys = [
        "@ubuntu_key//file",
    ],
)

update_http(
    name = "update_http",
    yaml_files = ["rules.yaml"],
    bazel_file = "//:WORKSPACE",
)

update_version(
    name = "update_versions",
    yaml_files = ["versions.yaml"],
    bazel_file = "//util:constants.bzl",
)