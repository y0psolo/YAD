load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "fc70e7e7730d3fcdadf3ab0dfe1aa1ed0da587e5ef78cd5e060f98b3393cd883",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.19.3/deno-x86_64-unknown-linux-gnu.zip"],
    )
