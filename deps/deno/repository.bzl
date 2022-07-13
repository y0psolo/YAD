load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "236cf6fd65fed078fa4456a358f47b8485f51d308381a6dca9683ad8ef4c2372",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.23.4/deno-x86_64-unknown-linux-gnu.zip"],
    )
