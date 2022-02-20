load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "ff3e2502905e63e0b99c82308924ac76f9942c2595a0722ea26db52470f8b4a8",
        strip_prefix = "trino-server-371/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/371/trino-server-371.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "c42b456ca630ff0dd2d5804089779c07d9873c2f3af577ccfe6217fe199425f8",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/371/trino-cli-371-executable.jar"],
    )
