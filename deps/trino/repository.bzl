load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "4eb490bdb35cec70eeba0921187ee599bbeea152f2c70973523b8d688cdbd0ad",
        strip_prefix = "trino-server-366/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/366/trino-server-366.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "b976f04ce3e0ad14f5cc00817da5bed2faae295aa112e40e9d91edf76a66b5f7",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/366/trino-cli-366-executable.jar"],
    )
