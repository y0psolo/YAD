load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "e53d3084ac61dd483911bea4d2a5b90e1f0e4d7c6891d232ba6e63c7fd30c767",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.17.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
