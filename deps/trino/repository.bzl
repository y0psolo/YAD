load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "ca2dfc24f86050b3454ec018d273b9f5d58e0f71a9b4aea86b94059dabe827a3",
        strip_prefix = "trino-server-372/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/372/trino-server-372.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "61121f9dda87586ddaddc1d969102a2587f6408b7285e6a2a8218be9ecc4c9b9",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/372/trino-cli-372-executable.jar"],
    )
