load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "hive_metastore_test",
    configs = [":metastore.yaml"],
    image = "//image/hivemetastore:hivemetastore",
    tags = ["hive", "amd64", "arm64"],
)

container_test(
    name = "hive_schematool_test",
    configs = [":schematool.yaml"],
    image = "//image/hivemetastore:hivemetastore",
    tags = ["hive", "amd64", "arm64"],
)

test_suite(
    name = "hive",
    tags = ["hive",],
)