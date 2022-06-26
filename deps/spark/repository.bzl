load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spark_repository():
    http_archive(
        name = "spark_hadoop_3.0",
        build_file = "//ext/spark:BUILD",
        sha256 = "839c44a6fe5d962f919c834a90b0432a21a92756f92217a3033701746c0a18b0",
        strip_prefix = "spark-3.0.3-bin-hadoop3/",
        urls = ["https://github.com/y0psolo/spark-build/releases/download/3.0.3/spark-3.0.3-bin-hadoop3.tgz"],
    )

    http_archive(
        name = "spark_hadoop_3.1",
        build_file = "//ext/spark:BUILD",
        sha256 = "1e728f28e18db9015f782f41c3a98ae238dd262f76b06c47f4f89f929add0d8e",
        strip_prefix = "spark-3.1.3-bin-hadoop3/",
        urls = ["https://github.com/y0psolo/spark-build/releases/download/3.1.3/spark-3.1.3-bin-hadoop3.tgz"],
    )

    http_archive(
        name = "spark_hadoop_3.2",
        build_file = "//ext/spark:BUILD",
        sha256 = "11828c31ac97888a4dc9daa339b7af125ef839b3fbd63da4280d101ae604d921",
        strip_prefix = "spark-3.2.1-bin-hadoop3/",
        urls = ["https://github.com/y0psolo/spark-build/releases/download/3.2.1/spark-3.2.1-bin-hadoop3.tgz"],
    )

    http_archive(
        name = "spark_hadoop_3.3",
        build_file = "//ext/spark:BUILD",
        sha256 = "8b874e5831aa550f2605f93155d56e34c4bf7eb6d351468b99acfb1cfa1433c2",
        strip_prefix = "spark-3.3.0-bin-hadoop3/",
        urls = ["https://github.com/y0psolo/spark-build/releases/download/3.3.0/spark-3.3.0-bin-hadoop3.tgz"],
    )

    http_archive(
        name = "spark_hadoop_2.4",
        build_file = "//ext/spark:BUILD",
        sha256 = "",
        strip_prefix = "spark-2.4.8-bin-hadoop2/",
        urls = ["https://github.com/y0psolo/spark-build/releases/download/2.4.8/spark-2.4.8-bin-hadoop2.tgz"],
    )
