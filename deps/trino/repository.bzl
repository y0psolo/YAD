load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "98cda1cc44ea9bd40fd5467f10362ca36e08a77282c6c027da33786308160e10",
        strip_prefix = "trino-server-386/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/386/trino-server-386.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "2f055cda086ee93627b3baad80871c1c1f202206c25e42925c089cf17787e20e",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/386/trino-cli-386-executable.jar"],
    )
