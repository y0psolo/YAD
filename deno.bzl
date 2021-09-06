load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno():
    http_archive(
        name = "deno-amd64",
        build_file = "BUILD.deno",
        sha256 = "3587cfe0b1d3774a2f026bf27e3033b3da61ab994e0cbe3e959bd21664d0562b",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.13.2/deno-x86_64-unknown-linux-gnu.zip"],
    )