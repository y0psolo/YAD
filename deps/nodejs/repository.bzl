load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    http_archive(
        name = "nodejs-14-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "223ca31e3440b79a3fe6828161b1843743eaa7610a88c0e1ac1d8e1d815b44cd",
        strip_prefix = "node-v14.19.0-linux-x64/",
        urls = ["https://nodejs.org/dist/v14.19.0/node-v14.19.0-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "a0f23911d5d9c371e95ad19e4e538d19bffc0965700f187840eb39a91b0c3fb0",
        strip_prefix = "node-v16.13.2-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.13.2/node-v16.13.2-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-14-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "89c03d1c156c0161c891924d4a309df3308bbf245641413d72affae9b62e97e0",
        strip_prefix = "node-v14.19.0-linux-arm64/",
        urls = ["https://nodejs.org/dist/v14.19.0/node-v14.19.0-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "e87d7c173d7c70672d71cc816ffe0baea2b0458cb7f96c248560410e9cd37522",
        strip_prefix = "node-v16.13.2-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.13.2/node-v16.13.2-linux-arm64.tar.gz"],
    )
