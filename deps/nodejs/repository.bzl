load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    http_archive(
        name = "nodejs-14-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "3019e0508145c4c1fc6662f0b9b1c78bb84181aeea4749fac38ca51587aaf82f",
        strip_prefix = "node-v14.19.1-linux-x64/",
        urls = ["https://nodejs.org/dist/v14.19.1/node-v14.19.1-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "57e02c27eb5e52f560f72d96240e898cb52818dc9fc50f45478ce39ece38583a",
        strip_prefix = "node-v16.14.2-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-14-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "b365659aa9f31c984668ac60b70fcfae90ffabb3dd51b031898b050e403c1794",
        strip_prefix = "node-v14.19.1-linux-arm64/",
        urls = ["https://nodejs.org/dist/v14.19.1/node-v14.19.1-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "8a792a4cb6d83a960f7bd2901225c492e40ace541fbd73ff59ac4a332c3aaafb",
        strip_prefix = "node-v16.14.2-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-arm64.tar.gz"],
    )
