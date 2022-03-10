load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "3545c1ba5ab1cd5cb4f13c21a9c0ab29a4b59a164b8accbf8c8625fec36a0b8f",
        strip_prefix = "trino-server-373/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/373/trino-server-373.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "4a2ec84185253b7238bb92515aba28869fe0a71190168734f41bb5e5b0c4c6ee",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/373/trino-cli-373-executable.jar"],
    )
