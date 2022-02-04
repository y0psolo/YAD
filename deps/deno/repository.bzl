load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "fbdd54f074a9f9ee1f1c200d515f7425037fbee1727ff3039543138e7e139bb7",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.18.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
