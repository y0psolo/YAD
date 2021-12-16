load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def nodejs_repository():
    http_archive(
        name = "nodejs-14-amd64",
        build_file = "BUILD.nodejs",
        sha256 = "83fa18a0e3642235446b66653eb27c169224ae9c1a15a32d6c3d9ddefb154ed4",
        strip_prefix = "node-v14.18.2-linux-x64/",
        urls = ["https://nodejs.org/dist/v14.18.2/node-v14.18.2-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-amd64",
        build_file = "BUILD.nodejs",
        sha256 = "5f80197d654fd0b749cdeddf1f07a5eac1fcf6b423a00ffc8f2d3bea9c6dc8d1",
        strip_prefix = "node-v16.13.1-linux-x64/",
        urls = ["https://nodejs.org/dist/v16.13.1/node-v16.13.1-linux-x64.tar.gz"],
    )

    http_archive(
        name = "nodejs-14-arm64",
        build_file = "BUILD.nodejs",
        sha256 = "e78e18e01a08b2459d738fc5fec6bd79f2b3dccf85e5122cd646b3385964bc1e",
        strip_prefix = "node-v14.18.2-linux-arm64/",
        urls = ["https://nodejs.org/dist/v14.18.2/node-v14.18.2-linux-arm64.tar.gz"],
    )

    http_archive(
        name = "nodejs-16-arm64",
        build_file = "BUILD.nodejs",
        sha256 = "c2f2a0a5adbfc267dbe41ef9fbd83af157a64997bc7546c12717ff55ea6b57d8",
        strip_prefix = "node-v16.13.1-linux-arm64/",
        urls = ["https://nodejs.org/dist/v16.13.1/node-v16.13.1-linux-arm64.tar.gz"],
    )