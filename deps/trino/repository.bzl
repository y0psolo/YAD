load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "06e930200b1133b67f623fb4b5e3bd8a50f5ff25246cdc631c84d25867d9e799",
        strip_prefix = "trino-server-390/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/390/trino-server-390.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "aeab36ad69abe61bf817fb5cef1581824361b7f97799e2549e91323a7d9c538f",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/390/trino-cli-390-executable.jar"],
    )
