load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "0025cf3668e46f5f76bf4d84a521f5a90cd55cf3cf120a8767da10b688442b46",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.21.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
