load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "dba15812c94125c902f7fc77e406e15c56a6241a38c043ad23e0624f6c7f97be",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.23.0/deno-x86_64-unknown-linux-gnu.zip"],
    )
