load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "f99d37cdf6e5e295606305397c8c1982e8c5b00801599182ce0d63ae1fc45bc8",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.19.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
