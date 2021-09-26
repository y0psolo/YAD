load(":cacerts.bzl", "cacerts")
load(":constants.bzl", "BASE_ARCHITECTURES", "PACKAGE")
load(":java.bzl", "cacerts_java")
load(":libc_extract.bzl", "libc_extract")

package(default_visibility = ["//:__subpackages__"])

exports_files(["os-release.tpl", "constants.bzl"])

[
    libc_extract(
        name = "libcbin_" + arch,
        deb = PACKAGE[arch]["libc-bin"],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]

[
    cacerts(
        name = "cacerts_" + arch,
        deb = PACKAGE[arch]["ca-certificates"],
        visibility = ["//:__subpackages__"],
    )
    for arch in BASE_ARCHITECTURES
]

# Generate a tar for java certificates
[
    cacerts_java(
        name = "cacerts_java_" + arch,
        cacerts_tar = ":cacerts_" + arch + ".tar",
    )
    for arch in BASE_ARCHITECTURES
]

sh_binary(
    name = "deb_extract",
    srcs = ["deb_extract.sh"],
    visibility = ["//:__subpackages__"],
)