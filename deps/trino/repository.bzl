load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "293c1456f1cb4292890226cc092884ab85cd206e52704509e2e27a58d3b318b6",
        strip_prefix = "trino-server-375/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/375/trino-server-375.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "0b96af66dca43353389be3c348f0472a9e709ace22c9a2a9689acb64b70beac1",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/375/trino-cli-375-executable.jar"],
    )
