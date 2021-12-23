load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "240dff93e1cabfa803c68ea0203a85165aabd3da5090dbded60988b39b89a60d",
        strip_prefix = "trino-server-367/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/367/trino-server-367.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "b0b6d26e655e63e7b1bae28b04b7f4f2ac97ede20ff8a21fbc133e3a60e8d6da",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/367/trino-cli-367-executable.jar"],
    )
