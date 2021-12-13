load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "NONROOT")

container_image(
    name = "static",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [],
    layers = ["//layer/static:static"] + 
        select({
            "//platforms:debug": ["//layer/static:debug"],
            "//conditions:default": [],
        }),
    user = "%d" % NONROOT,
    visibility = ["//visibility:public"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)