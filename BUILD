load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")
load("@rules_deb_packages//:update_deb_packages.bzl", "update_deb_packages")
 
package(default_visibility = ["//:__subpackages__"])

update_deb_packages(
    name = "update_deb_packages",
    bzl_files = [
        "ubuntu_amd64.bzl",
        "ubuntu_arm64.bzl",
    ],
    pgp_keys = [
        "@ubuntu_key//file",
    ],
)