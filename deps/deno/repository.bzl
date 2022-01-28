load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "049b25e0bf47d846ce5bea030e83707bcae6be48c34b4cfa48646322f572dcb2",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.18.1/deno-x86_64-unknown-linux-gnu.zip"],
    )
