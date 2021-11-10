load(":cacerts.bzl", "cacerts")
load(":java.bzl", "cacerts_java")
load(":libc_extract.bzl", "libc_extract")
load("//platforms:cpu.bzl", "target_cpu", "ubuntu")

package(default_visibility = ["//:__subpackages__"])

exports_files(["os-release.tpl", "constants.bzl"])


libc_extract(
    name = "libcbin",
    deb = ubuntu("libc-bin"),
    visibility = ["//:__subpackages__"],
)

cacerts(
    name = "cacerts",
    deb = ubuntu("ca-certificates"),
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