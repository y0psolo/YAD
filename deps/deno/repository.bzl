load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.17.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
