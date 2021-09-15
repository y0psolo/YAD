# Run test on nodejs image for static, base and nodejs tests plan
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NODEJS_VERSIONS")

def nodejs_test():
    [
        container_test(
            name = arch + "_nodejs_" + version + "_test",
            configs = [
                "base/base.yaml",
                "static/base.yaml",
            ],
            image = "//image/nodejs:" + arch + "_" + version,
        )
        for arch in BASE_ARCHITECTURES
        for version in NODEJS_VERSIONS
    ]

    [
        container_test(
            name = arch + "_nodejs_" + version + "_debug_test",
            configs = [
                "base/base.yaml",
                "static/debug.yaml",
            ],
            image = "//image/nodejs:" + arch + "_" + version + "_debug",
        )
        for arch in BASE_ARCHITECTURES
        for version in NODEJS_VERSIONS
    ]

    [
        container_image(
            name = arch + "_nodejs_" + version + "_typescript",
            base = "//image/nodejs:" + arch + "_" + version,
            files = ["nodejs/welcome.ts", "nodejs/cat.ts", "nodejs/text"],
            directory = "/home/nonroot",
        )
        for arch in BASE_ARCHITECTURES
        for version in NODEJS_VERSIONS
    ]

    [
        container_test(
            name = arch + "_nodejs_" + version + "_typescript_test",
            configs = [
                "nodejs/typescript.yaml",
            ],
            image = ":" + arch + "_nodejs_" + version + "_typescript",
        )
        for arch in BASE_ARCHITECTURES
        for version in NODEJS_VERSIONS
    ]
