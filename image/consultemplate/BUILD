load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "NONROOT")

container_image(
    name = "consultemplate",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
            "/usr/bin/consul-template",
    ],
    layers = [
        "//layer/static:static",
        "//layer/consultemplate:consultemplate",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)