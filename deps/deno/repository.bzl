load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "6864d019f0ced1657843fde73022bd53b13dc2e14923393a6ec9cde2097ca867",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.19.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
