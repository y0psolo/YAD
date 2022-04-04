load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "c77f735729611deaf6300a8aca4c2049debc29f612e78acdd91c2adce648079e",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.20.4/deno-x86_64-unknown-linux-gnu.zip"],
    )
