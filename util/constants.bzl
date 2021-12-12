""" Constants """

# load("@ubuntu_amd64//debs:deb_packages.bzl", "ubuntu_amd64")
# load("@ubuntu_amd64//debs:deb_versions.bzl", "ubuntu_amd64_versions")
# load("@ubuntu_arm64//debs:deb_packages.bzl", "ubuntu_arm64")
# load("@ubuntu_arm64//debs:deb_versions.bzl", "ubuntu_arm64_versions")

UBUNTU_VERSIONS = ["20.04"]
UBUNTU_NAME_MAPPINGS = {
    "20.04" : "Focal Fossa",
}

# UBUNTU_MAPPINGS = {
#     "20.04" : {
#         "amd64" : ubuntu_amd64,
#         "arm64" : ubuntu_arm64,
#     },
# }

# UBUNTU_VERSION_MAPPINGS = {
#     "20.04" : {
#         "amd64" : ubuntu_amd64_versions,
#         "arm64" : ubuntu_arm64_versions,
#     },
# }

JRE_VERSIONS = ["8", "11", "17"]
NODEJS_VERSIONS = ["14", "16"]
NODEJS_VERSIONS_MAPPINGS = {"14": "14.18.2", "16": "16.13.1"}

# ID mapping
NOBODY = 65534
NONROOT = 65532

DENO_VERSION = "1.16.4"

AZUL_VERSIONS_MAPPING = {"amd64": {"11": "11.0.13", "8": "8.0.312", "17": "17.0.1"}, "arm64": {"11": "11.0.13", "8": "8.0.312", "17": "17.0.1"}}

ADOPTIUM_VERSIONS_MAPPING = {"amd64": {"11": "11.0.13", "8": "8.0.312", "17": "17.0.1"}, "arm64": {"11": "11.0.13", "8": "8.0.312", "17": "17.0.1"}}
