load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "c6202aa348c41e62b103b5b5d8c011c6d65a2de4ea6144e73d7aacf6af1bc0d5",
        strip_prefix = "trino-server-369/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/369/trino-server-369.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "b5895f26b0f613ffb3c93f774212f93f9ff084457ac91d1fcf786f4a65ffb77b",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/369/trino-cli-369-executable.jar"],
    )
