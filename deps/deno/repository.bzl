load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "7b883e3c638d21dd1875f0108819f2f13647b866ff24965135e679c743013f46",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.17.3/deno-x86_64-unknown-linux-gnu.zip"],
    )
