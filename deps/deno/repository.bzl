load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "4f6de6e7772dd4cc9f4afcbd583c56a43cd5df2ae38d317c757850fcfcd845cc",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.23.3/deno-x86_64-unknown-linux-gnu.zip"],
    )
