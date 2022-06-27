load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "88e8aa8fdd433a6f45322dc806723fea34263c7b591b965614674375b11ef34f",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.23.1/deno-x86_64-unknown-linux-gnu.zip"],
    )
