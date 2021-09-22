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
NODEJS_VERSIONS = ["14", "16"]
NODEJS_VERSIONS_MAPPINGS = { "14": "14.17.6", "16": "16.9.1", }

# ID mapping
NOBODY = 65534
NONROOT = 65532

DENO_VERSION = "1.14.1"

AZUL_VERSIONS_MAPPING = { "11": "11.0.12", "8": "8.0.302", }

ADOPTIUM_VERSIONS_MAPPING = { "11": "11.0.12", "8": "8.0.302", }