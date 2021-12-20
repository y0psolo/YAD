load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "NONROOT", "MARIADB_VERSIONS")

[
    container_image(
        name = "init_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        entrypoint = [
                "/bin/sh",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/static:debug",
            "//layer/mariadb:common_" + version,
            "//layer/mariadb:server_" + version,
            "//layer/mariadb:cli_" + version,
        ],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in MARIADB_VERSIONS
]

[
    container_image(
        name = "server_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        entrypoint = [
                "/usr/bin/tini",
                "--",
                "/usr/sbin/mariadbd",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/mariadb:common_" + version,
            "//layer/mariadb:server_" + version,
        ] + select({
            "//platforms:debug": ["//layer/static:debug"],
            "//conditions:default": [],
        }),
        volumes = ["/var/lib"],
        ports = ["3306"],
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in MARIADB_VERSIONS
]

[
    container_image(
        name = "cli_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        entrypoint = [
                "/usr/bin/mariadb",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/mariadb:common_" + version,
            "//layer/mariadb:cli_" + version,
        ] + select({
            "//platforms:debug": ["//layer/static:debug"],
            "//conditions:default": [],
        }),
        user = "%d" % NONROOT,
        visibility = ["//visibility:public"],
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in MARIADB_VERSIONS
]