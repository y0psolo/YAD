load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//update:constant.bzl", "CONSUL_TEMPLATE_VERSION")

container_layer(
    name = "consultemplate",
    debs = [],
    env = {
        "CONSUL_TEMPLATE_VERSION": CONSUL_TEMPLATE_VERSION,
    },
    tars = select({
        "//platforms:k8_cpu": ["@consul-template-amd64//:bin_tar"],
        "//platforms:aarch64_cpu": ["@consul-template-arm64//:bin_tar"],
    }),
    visibility = ["//:__subpackages__"],
)