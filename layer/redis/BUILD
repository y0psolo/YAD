load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//update:constants.bzl", "REDIS_VERSION")

container_layer(
    name = "server",
    debs = [],
    env = {
        "REDIS_VERSION": REDIS_VERSION,
    },
    tars = select({
        "//platforms:focal": ["@redis//:server_ssl1_tar"],
        "//platforms:jammy": ["@redis//:server_ssl3_tar"],
    }),
    visibility = ["//:__subpackages__"],
)

container_layer(
    name = "cli",
    debs = [],
    env = {
            "REDIS_VERSION": REDIS_VERSION,
    },
    tars = select({
        "//platforms:focal": ["@redis//:cli_ssl1_tar"],
        "//platforms:jammy": ["@redis//:cli_ssl3_tar"],
    }),
    visibility = ["//:__subpackages__"],
)