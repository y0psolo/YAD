load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "c9939c7fb8b734c8da6f6185e7ed4c4503d944adf726770cec8aab91bbda2e5c",
        strip_prefix = "trino-server-378/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/378/trino-server-378.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "0bfdde39faf15222ea3cfe06723ada66446799af56ea08319a001028680f1da7",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/378/trino-cli-378-executable.jar"],
    )
