# Run test on deno image for static, base and deno tests plan
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

def deno_test():
    [
        container_test(
            name = arch + "_deno_test",
            configs = [
                "base/base.yaml",
                "static/base.yaml",
            ],
            image = "//image/deno:" + arch,
        )
        for arch in ["amd64"]
    ]

    [
        container_test(
            name = arch + "_deno_sh_test",
            configs = [
                "base/base.yaml",
                "static/sh.yaml",
            ],
            image = "//image/deno:" + arch + "_sh",
        )
        for arch in ["amd64"]
    ]

    [
        container_test(
            name = arch + "_deno_debug_test",
            configs = [
                "base/base.yaml",
                "static/debug.yaml",
            ],
            image = "//image/deno:" + arch + "_debug",
        )
        for arch in ["amd64"]
    ]

    [
        container_image(
            name = arch + "_deno_typescript",
            base = "//image/deno:" + arch,
            files = ["deno/text"],
            directory = "/home/nonroot",
        )
        for arch in ["amd64"]
    ]

    [
        container_test(
            name = arch + "_deno_typescript_test",
            configs = [
                "deno/typescript.yaml",
            ],
            image = ":" + arch + "_deno_typescript",
        )
        for arch in ["amd64"]
    ]
