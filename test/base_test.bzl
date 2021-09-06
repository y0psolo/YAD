# Run test on base image for static and base tests plan
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

def base_test():
    [
        container_test(
            name = arch + "_base_test",
            configs = [
                "base/base.yaml",
                "static/base.yaml",
            ],
            image = "//image/base:" + arch,
        )
        for arch in BASE_ARCHITECTURES
    ]

    [
        container_test(
            name = arch + "_base_debug_test",
            configs = [
                "base/base.yaml",
                "static/debug.yaml",
            ],
            image = "//image/base:" + arch + "_debug",
        )
        for arch in BASE_ARCHITECTURES
    ]
