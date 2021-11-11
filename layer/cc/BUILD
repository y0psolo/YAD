load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//platforms:cpu.bzl", "ubuntu_debs")

container_layer(
    name = "cc",
    debs = ubuntu_debs([
        "libgcc1",
        "libgcc-s1",
        "libgomp1",
        "libstdc++6",
    ]),
    visibility = ["//visibility:public"],
)
