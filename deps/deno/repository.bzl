load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "7aaefdeb57de206411ae194b3d2c5bca23e9ddee3b59a1d746ae3e4da358caaa",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.17.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
