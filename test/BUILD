load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

exports_files(["core.yaml", "debug.yaml", "base.yaml"])

container_test(
    name = "static_test",
    configs = select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/static:static",
    tags = ["static", "basic", "amd64", "arm64"],
)

container_test(
    name = "base_test",
    configs = ["base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/base:base",
    tags = ["base", "basic", "amd64", "arm64"],
)

container_test(
    name = "cc_test",
    configs = ["base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/cc:cc",
    tags = ["cc", "basic"," amd64", "arm64"],
)

container_test(
    name = "python_test",
    configs = ["python.yaml", "base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["sh.yaml"],
    }),
    image = "//image/python:python",
    tags = ["python", "basic", "amd64", "arm64"],
)

test_suite(
    name = "basic",
    tags = ["basic",],
)