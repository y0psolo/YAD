load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//update:constant.bzl", "REDIS_VERSION")

container_layer(
    name = "server",
    debs = [],
    env = {
        "REDIS_VERSION": REDIS_VERSION,
    },
    tars = [
        "@redis//:server_tar"
    ],
    visibility = ["//:__subpackages__"],
)

container_layer(
    name = "cli",
    debs = [],
    env = {
            "REDIS_VERSION": REDIS_VERSION,
    },
    tars = [
        "@redis//:cli_tar"
    ],
    visibility = ["//:__subpackages__"],
)