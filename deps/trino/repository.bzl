load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "0be8deaa606e8fa926094e34c9352dc75142c332b8714daea094835264cb52aa",
        strip_prefix = "trino-server-370/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/370/trino-server-370.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "9e8b66175b9716ca942ac63b24f62ebdcc7d47e1b39a0b5c124c89db31c2b9b4",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/370/trino-cli-370-executable.jar"],
    )
