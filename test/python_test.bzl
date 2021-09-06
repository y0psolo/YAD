# Run test on python image
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

def python_test():
    [
        container_test(
            name = arch + "_python_test",
            configs = [
                "base/base.yaml",
                "python/python.yaml",
                "static/sh.yaml",
            ],
            image = "//image/python:" + arch,
        )
        for arch in BASE_ARCHITECTURES
    ]

    [
        container_test(
            name = arch + "_python_debug_test",
            configs = [
                "base/base.yaml",
                "python/python.yaml",
                "static/debug.yaml",
            ],
            image = "//image/python:" + arch + "_debug",
        )
        for arch in BASE_ARCHITECTURES
    ]
