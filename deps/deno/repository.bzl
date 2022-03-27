load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "afc42aa493b171f5be23c9bdbace45ee558fcfd8451e184a813999e8e61e576e",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.20.3/deno-x86_64-unknown-linux-gnu.zip"],
    )
