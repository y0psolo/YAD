load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "acaf3ecb91560991a117d8ba8b2d93fc03ac2ae879fb2b6673a7c3da185b493c",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.20.1/deno-x86_64-unknown-linux-gnu.zip"],
    )
