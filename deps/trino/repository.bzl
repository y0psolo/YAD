load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "8fa4a6730a86b3ad888a5208cf814b8f9b3316e14c856c99a1ad237d9d9cafb7",
        strip_prefix = "trino-server-389/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/389/trino-server-389.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "2edd8b4924aaa535680473dc8afb779efbb6fc8a72b2927091ba9a287de1222d",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/389/trino-cli-389-executable.jar"],
    )
