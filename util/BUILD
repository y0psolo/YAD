load(":cacerts.bzl", "cacerts")
load(":java.bzl", "cacerts_java")
load(":libc_extract.bzl", "libc_extract")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")

package(default_visibility = ["//:__subpackages__"])

exports_files(["os-release.tpl", "constants.bzl"])


libc_extract(
    name = "libcbin",
    deb = select({
        "//platforms:k8_cpu_focal": ubuntu_focal_amd64["libc-bin"],
        "//platforms:aarch64_cpu_focal": ubuntu_focal_arm64["libc-bin"],
        "//platforms:k8_cpu_bionic": ubuntu_bionic_amd64["libc-bin"],
        "//platforms:aarch64_cpu_bionic": ubuntu_bionic_arm64["libc-bin"],
    }),
    visibility = ["//:__subpackages__"],
)

cacerts(
    name = "cacerts",
    deb = select({
        "//platforms:k8_cpu_focal": ubuntu_focal_amd64["ca-certificates"],
        "//platforms:aarch64_cpu_focal": ubuntu_focal_arm64["ca-certificates"],
        "//platforms:k8_cpu_bionic": ubuntu_bionic_amd64["ca-certificates"],
        "//platforms:aarch64_cpu_bionic": ubuntu_bionic_arm64["ca-certificates"],
    }),
    visibility = ["//:__subpackages__"],
)

# Generate a tar for java certificates
cacerts_java(
    name = "cacerts_java",
    cacerts_tar = ":cacerts.tar",
)


sh_binary(
    name = "deb_extract",
    srcs = ["deb_extract.sh"],
    visibility = ["//:__subpackages__"],
)