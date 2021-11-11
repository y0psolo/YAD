load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "NONROOT")

container_image(
    name = "python",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
        "/usr/bin/tini",
        "--",
        "/usr/bin/python3",
    ],
    layers = [
        "//layer/static:static",
        "//layer/base:base",
        "//layer/cc:cc",
        "//layer/common:common",
        "//layer/python:python",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//visibility:public"],
    workdir = "/home/nonroot",
)