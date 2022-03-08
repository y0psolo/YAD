load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def hadoop_repository():
    http_archive(
        name = "hadoop_3",
        build_file = "//ext/hadoop:BUILD",
        sha256 = "b341587495b12eec0b244b517f21df88eb46ef634dc7dc3e5969455b80ce2ce5",
        strip_prefix = "hadoop-3.3.2/",
        urls = ["https://dlcdn.apache.org/hadoop/common/hadoop-3.3.2/hadoop-3.3.2.tar.gz"],
    )
