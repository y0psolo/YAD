load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "trino_server_test",
    configs = ["trino/server.yaml"],
    image = "//image/trino:server",
    tags = ["trino", "amd64", "arm64"],
)

container_test(
    name = "trino_cli_test",
    configs = ["cli.yaml"],
    image = "//image/trino:cli",
    tags = ["trino", "amd64", "arm64"],
)

test_suite(
    name = "trino",
    tags = ["trino"],
)