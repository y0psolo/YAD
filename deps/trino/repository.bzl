load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "b77b870e4839cc202378bbe1e80c798b63b4ab4b9ffc59ccdafd647a5ee097a0",
        strip_prefix = "trino-server-385/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/385/trino-server-385.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "8d2bc37c0996ff533156b0c1ebcb3f0684e66ffb1ace725b90d81a7d9f258d04",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/385/trino-cli-385-executable.jar"],
    )
