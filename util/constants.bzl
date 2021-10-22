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

JRE_VERSIONS = ["8", "11", "17"]
NODEJS_VERSIONS = ["14", "16"]
NODEJS_VERSIONS_MAPPINGS = {"14": "14.18.1", "16": "16.12.0"}

# ID mapping
NOBODY = 65534
NONROOT = 65532

DENO_VERSION = "1.15.2"

AZUL_VERSIONS_MAPPING = {"11": "11.0.13", "8": "8.0.312", "17": "17.0.0"}

ADOPTIUM_VERSIONS_MAPPING = {"11": "11.0.13", "8": "8.0.312", "17": "17"}
