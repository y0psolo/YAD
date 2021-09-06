# Run test on static iamges for static test plan
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

def static_test():
    [
        container_test(
            name = arch + "_static_test",
            configs = ["static/base.yaml"],
            image = "//image/static:" + arch,
        )
        for arch in BASE_ARCHITECTURES
    ]

    [
        container_test(
            name = arch + "_static_debug_test",
            configs = ["static/debug.yaml"],
            image = "//image/static:" + arch + "_debug",
        )
        for arch in BASE_ARCHITECTURES
    ]
