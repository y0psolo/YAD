load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "794a7df6faae51895183b52c6d7f36f0a9715140fab317dac5400f71729c05cd",
        strip_prefix = "trino-server-368/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/368/trino-server-368.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "87956d931fcd4fc4e7305d85dafd94c13646f9630808632f5d5ed5f1240548d8",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/368/trino-cli-368-executable.jar"],
    )
