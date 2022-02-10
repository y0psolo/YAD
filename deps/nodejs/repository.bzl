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
        sha256 = "2c69e7b040c208b61ebf9735c63d2e5bcabfed32ef05a9b8dd5823489ea50d6b",
        strip_prefix = "node-v16.14.0-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.14.0/node-v16.14.0-linux-x64.tar.gz"],
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
        sha256 = "82d71968c82eb391f463df62ba277563a3bd01ce43bba0e7e1c533991567b8fe",
        strip_prefix = "node-v16.14.0-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.14.0/node-v16.14.0-linux-arm64.tar.gz"],
    )
