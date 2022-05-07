load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    http_archive(
        name = "nodejs-14-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "fd72086a1849a428c99d94ef1aca94686c9080792e1586a75ca031a030424544",
        strip_prefix = "node-v14.19.2-linux-x64/",
        urls = ["https://nodejs.org/dist/v14.19.2/node-v14.19.2-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "d1c1de461be10bfd9c70ebae47330fb1b4ab0a98ad730823fb1340e34993edee",
        strip_prefix = "node-v16.15.0-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-14-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "b972847ccd8a699b72f8ac455d4233fa584972e2ebd3dd99768ff5c95334304d",
        strip_prefix = "node-v14.19.2-linux-arm64/",
        urls = ["https://nodejs.org/dist/v14.19.2/node-v14.19.2-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "2aa387e6a57ade663849efdc4fabf7431a38d975db98dcc79293840e6894d28b",
        strip_prefix = "node-v16.15.0-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-arm64.tar.gz"],
    )
