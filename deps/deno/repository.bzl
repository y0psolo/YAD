load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "477cf986b08144dcf0f7c2015dbff53d15c1a9e10d8e13cbb1860a32cb231547",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.18.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
