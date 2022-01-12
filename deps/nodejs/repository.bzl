load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    http_archive(
        name = "nodejs-14-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "bd96f88e054801d1368787f7eaf77b49cd052b9543c56bd6bc0bfc90310e2756",
        strip_prefix = "node-v14.18.3-linux-x64/",
        urls = ["https://nodejs.org/dist/v14.18.3/node-v14.18.3-linux-x64.tar.gz"],
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
        sha256 = "2d071ca1bc1d0ea1eb259e79b81ebb4387237b2f77b3cf616806534e0030eaa8",
        strip_prefix = "node-v14.18.3-linux-arm64/",
        urls = ["https://nodejs.org/dist/v14.18.3/node-v14.18.3-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "e87d7c173d7c70672d71cc816ffe0baea2b0458cb7f96c248560410e9cd37522",
        strip_prefix = "node-v16.13.2-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.13.2/node-v16.13.2-linux-arm64.tar.gz"],
    )
