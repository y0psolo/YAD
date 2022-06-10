load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def hadoop_repository():
    http_archive(
        name = "hadoop_3",
        build_file = "//ext/hadoop:BUILD",
        sha256 = "fa71c61bbaa427129aef09fec028b34dd542c65ad90fdccec5e7ef93d83b8764",
        strip_prefix = "hadoop-3.3.3/",
        urls = ["https://dlcdn.apache.org/hadoop/common/hadoop-3.3.3/hadoop-3.3.3.tar.gz"],
    )
