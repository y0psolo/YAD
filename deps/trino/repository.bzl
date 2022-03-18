load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def trino_repository():
    http_archive(
        name = "trino_server",
        build_file = "//ext/trino:BUILD",
        sha256 = "e27d8c9a2f5125179530da6aa5ff3b067588e3880c958d8dc9a920f332cf4f06",
        strip_prefix = "trino-server-374/",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-server/374/trino-server-374.tar.gz"],
    )

    http_file(
        name = "trino_cli",
        # sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
        downloaded_file_path = "trino-cli.jar",
        sha256 = "a872c2f38371cafee88e64ae0797bb69df7b0c95ee8b5316895749fe4bb995c4",
        urls = ["https://repo1.maven.org/maven2/io/trino/trino-cli/374/trino-cli-374-executable.jar"],
    )
