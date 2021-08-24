""" Constants """

load("@ubuntu_amd64//debs:deb_packages.bzl", "ubuntu_amd64")
load("@ubuntu_amd64//debs:deb_versions.bzl", "ubuntu_amd64_versions")
load("@ubuntu_arm64//debs:deb_packages.bzl", "ubuntu_arm64")
load("@ubuntu_arm64//debs:deb_versions.bzl", "ubuntu_arm64_versions")

PACKAGE = {
    "amd64": ubuntu_amd64,
    "arm64": ubuntu_arm64,
}

PACKAGE_VERSIONS = {
    "amd64": ubuntu_amd64_versions,
    "arm64": ubuntu_arm64_versions,
}

BASE_ARCHITECTURES = ["amd64", "arm64"]

JRE_VERSIONS = ["8", "11"]

# ID mapping
NOBODY = 65534
NONROOT = 65532
