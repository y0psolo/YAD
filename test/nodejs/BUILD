load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "NODEJS_VERSIONS")

[
    container_image(
        name = version + "_test_image",
        base = "//image/nodejs:" + version,
        files = ["welcome.ts", "cat.ts", "text"],
        directory = "/home/nonroot/",
    )
    for version in NODEJS_VERSIONS
]

[
    container_test(
        name =  version + "_test",
        configs = ["//test:base.yaml"] + select({
            "//platforms:debug": ["//test:debug.yaml"],
            "//conditions:default": ["//test:core.yaml"],
        }),
        image = "//image/nodejs:" + version,
        visibility = ["//:__subpackages__"],
    )
    for version in NODEJS_VERSIONS
]

[
    container_test(
        name = version + "_typescript_test",
        configs = ["typescript.yaml"],
        image = ":" + version + "_test_image",
        visibility = ["//:__subpackages__"],
    )
    for version in NODEJS_VERSIONS
]