load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "server_test",
    configs = [":server.yaml"] ,
    image = "//image/redis:server",
    visibility = ["//:__subpackages__"],
    tags = ["redis", "amd64", "arm64"],
)

container_test(
    name = "cli_test",
    configs = [":cli.yaml"] ,
    image = "//image/redis:cli",
    visibility = ["//:__subpackages__"],
    tags = ["redis", "amd64", "arm64"],
)

test_suite(
    name = "redis",
    tags = ["redis",],
)