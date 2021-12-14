load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
    name = "deno_test_image",
    base = "//image/deno:deno",
    files = ["text"],
    directory = "/home/nonroot/",
)

container_test(
    name = "image_test",
    configs = ["//test:base.yaml"] + select({
        "//platforms:debug": ["//test:debug.yaml"],
        "//conditions:default": ["//test:core.yaml"],
    }),
    image = "//image/deno:deno",
    visibility = ["//:__subpackages__"],
)

container_test(
    name = "typescript_test",
    configs = ["typescript.yaml"],
    image = ":deno_test_image",
    visibility = ["//:__subpackages__"],
    tags = ["deno", "amd64"],
)

test_suite(
    name = "deno",
    tags = ["deno",],
)