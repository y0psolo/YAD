load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//platforms:cpu.bzl", "ubuntu_debs")

# Layer common to java and python image
container_layer(
    name = "common",
    debs = ubuntu_debs([
        "libexpat1",
        "libuuid1",
        "zlib1g",
    ]),
    env = {
        "LANG": "C.UTF-8",
    },
    tars = [
        "//util:libcbin_locale.tar",
    ],
    visibility = ["//visibility:public"],
)