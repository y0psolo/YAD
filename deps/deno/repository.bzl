load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "49358bfe50a98351fdb5f60e1740406e5a8a5dabe4e2198985b3c6f2956b26a1",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.17.1/deno-x86_64-unknown-linux-gnu.zip"],
    )
