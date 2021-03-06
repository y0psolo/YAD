load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    # http_archive(
    #     name = "nodejs-14-amd64",
    #     build_file = "//ext/nodejs:BUILD",
    #     sha256 = "cc9d17834eb383565a3368f4222b825f341190813537c677973fc913dcc7bdd1",
    #     strip_prefix = "node-v14.19.3-linux-x64/",
    #     urls = ["https://nodejs.org/dist/v14.19.3/node-v14.19.3-linux-x64.tar.gz"],
    # )

    http_archive(
        name = "nodejs-16-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "c85b16d1a4c259d01be7111ecb0361260627e4fc245004a920521eacb28e50df",
        strip_prefix = "node-v16.16.0-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-18-amd64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "4e3f5c72ec735aa23d52042be61e32e7279d26d7f05ebb5571c410e81d10c9a3",
        strip_prefix = "node-v18.4.0-linux-x64/",
        urls = ["https://nodejs.org/dist/v18.4.0/node-v18.4.0-linux-x64.tar.gz"],
    )

    # http_archive(
    #     name = "nodejs-14-arm64",
    #     build_file = "//ext/nodejs:BUILD",
    #     sha256 = "a1c837c7ec8a5ab0c4d5028695b05749adf216851fe0b84ef09a9c6eab86ba5d",
    #     strip_prefix = "node-v14.19.3-linux-arm64/",
    #     urls = ["https://nodejs.org/dist/v14.19.3/node-v14.19.3-linux-arm64.tar.gz"],
    # )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "378a3998e7c4dabd0cbd96b05a1b08e834c4b607f09c0745072de9423626fca4",
        strip_prefix = "node-v16.16.0-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.16.0/node-v16.16.0-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-18-arm64",
        build_file = "//ext/nodejs:BUILD",
        sha256 = "",
        strip_prefix = "node-v18.4.0-linux-arm64/",
        urls = ["https://nodejs.org/dist/v18.4.0/node-v18.4.0-linux-arm64.tar.gz"],
    )
