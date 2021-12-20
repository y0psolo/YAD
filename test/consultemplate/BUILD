load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "image_test",
    configs = [":cli.yaml"] ,
    image = "//image/consultemplate:consultemplate",
    visibility = ["//:__subpackages__"],
    tags = ["consultemplate", "amd64", "arm64"],
)

test_suite(
    name = "consultemplate",
    tags = ["consultemplate",],
)