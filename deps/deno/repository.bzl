load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "aaa5c06afe6182e4d009edba7d1d45f5c8408460c21c4a812487ef280af80db4",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.20.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
