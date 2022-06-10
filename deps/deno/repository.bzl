load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "9e1d529cd4368f57b6a25272c743b968aa8448b248dc055e2c2202dcb477c3c5",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.22.3/deno-x86_64-unknown-linux-gnu.zip"],
    )
