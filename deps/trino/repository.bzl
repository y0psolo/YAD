load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "e78f1f8513d4b1471ae34f4859c1ad9ffcd6e15bdcd20e2bfaf9ae1233dc6b9f",
        strip_prefix = "trino-server-387/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/387/trino-server-387.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "dba4d8b5fc4a2cfddd5b6b8ea3173aad19c65f19e66ca1bdf714745fb9ed5c36",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/387/trino-cli-387-executable.jar"],
    )
