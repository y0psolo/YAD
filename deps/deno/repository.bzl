load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "1efc8b2b8d0ceb424945164c9dde2a53fbe158cd014c2180203a45c1b547a8f9",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.21.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
