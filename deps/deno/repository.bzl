load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deno_repository():
    # Get Deno archive
    http_archive(
        name = "deno-amd64",
        build_file = "//ext/deno:BUILD",
        sha256 = "60aa95f14d107085b33ca9128b81b63cef933f814e94add95a8bc602775b29cf",
        type = "zip",
        urls = ["https://github.com/denoland/deno/releases/download/v1.23.2/deno-x86_64-unknown-linux-gnu.zip"],
    )
