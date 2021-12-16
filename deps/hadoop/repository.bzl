load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def hadoop_repository():
    http_archive(
        name = "hadoop_3",
        build_file = "//ext/hadoop:BUILD",
        sha256 = "ad770ae3293c8141cc074df4b623e40d79782d952507f511ef0a6b0fa3097bac",
        strip_prefix = "hadoop-3.3.1/",
        urls = ["https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz"],
    )
