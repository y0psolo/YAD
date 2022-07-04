load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "eb8d6337d292c9bb9e4dbac68cc0d9525558204ac1cb0779675ba1cd8487df44",
        strip_prefix = "trino-server-388/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/388/trino-server-388.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "dde687a44069eeadfa609a1f9e3a4768d39cafa61ace6425b9d844be282f5bf0",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/388/trino-cli-388-executable.jar"],
    )
