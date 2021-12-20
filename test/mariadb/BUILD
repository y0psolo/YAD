load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("//util:constants.bzl", "MARIADB_VERSIONS")

[
    container_test(
        name = "mariadb_server_test_" + version,
        configs = ["server.yaml"],
        image = "//image/mariadb:server_" + version,
        tags = ["mariadb", "amd64", "arm64", version],
    )
    for version in MARIADB_VERSIONS
]

[
    container_test(
        name = "mariadb_cli_test_" + version,
        configs = ["cli.yaml"],
        image = "//image/mariadb:cli_" + version,
        tags = ["mariadb", "amd64", "arm64", version],
    )
    for version in MARIADB_VERSIONS
]

[
    container_test(
        name = "mariadb_init_test_" + version,
        configs = ["cli.yaml"],
        image = "//image/mariadb:init_" + version,
        tags = ["mariadb", "amd64", "arm64", version],
    )
    for version in MARIADB_VERSIONS
]

test_suite(
    name = "mariadb",
    tags = ["mariadb"],
)