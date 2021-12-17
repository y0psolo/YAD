load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "8c47154f5a8d8b9d8f986fb528a7521d4c84d7633d5c29bf01157e678ee7baa4",
        strip_prefix = "trino-server-365/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/365/trino-server-365.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "38654308bb3a84402360b616a71d1b68fd6a5f75930165a40b30e43f9a09d5c6",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/365/trino-cli-365-executable.jar"],
    )
