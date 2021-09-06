# Run test on cc image for static and base tests plan
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

def cc_test():
    [
        container_test(
            name = arch + "_cc_test",
            configs = [
                "base/base.yaml",
                "static/base.yaml",
            ],
            image = "//image/cc:" + arch,
        )
        for arch in BASE_ARCHITECTURES
    ]

    [
        container_test(
            name = arch + "_cc_debug_test",
            configs = [
                "base/base.yaml",
                "static/debug.yaml",
            ],
            image = "//image/cc:" + arch + "_debug",
        )
        for arch in BASE_ARCHITECTURES
    ]
