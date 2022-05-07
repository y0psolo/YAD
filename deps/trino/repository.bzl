load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "fd8263100c851a023d1a83d2948b942affa39f0cbb92fc0674870b9c2767deb2",
        strip_prefix = "trino-server-380/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/380/trino-server-380.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "745889aa23db2baf3740c60f0cbc19efc7ecd5a4000d1c73e067f01f24b24b90",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/380/trino-cli-380-executable.jar"],
    )
