load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def spark_repository():
    http_archive(
        name = "spark_hadoop_3.0",
        build_file = "//ext/spark:BUILD",
        sha256 = "65dbff958be6ac5f22e850d0652544d75f8d8a81ce77b5517060a3606eb848a2",
        strip_prefix = "spark-3.0.3-bin-hadoop3.2/",
        urls = ["https://archive.apache.org/dist/spark/spark-3.0.3/spark-3.0.3-bin-hadoop3.2.tgz"],
    )

    http_archive(
        name = "spark_hadoop_3.1",
        build_file = "//ext/spark:BUILD",
        sha256 = "0d9cf9dbbb3b4215afebe7fa4748b012e406dd1f1ad2a61b993ac04adcb94eaa",
        strip_prefix = "spark-3.1.2-bin-hadoop3.2/",
        urls = ["https://archive.apache.org/dist/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz"],
    )

    http_archive(
        name = "spark_hadoop_3.2",
        build_file = "//ext/spark:BUILD",
        sha256 = "a78c30450ac862338dbc77e6e97bae69569e2c30615efa082d28d47c0781afef",
        strip_prefix = "spark-3.2.0-bin-hadoop3.2/",
        urls = ["https://archive.apache.org/dist/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz"],
    )

    http_archive(
        name = "spark_hadoop_2.4",
        build_file = "//ext/spark:BUILD",
        sha256 = "feedb945ab4906d098d9d71050a4dab1972de489423008489708ecf496ce91cd",
        strip_prefix = "spark-2.4.8-bin-hadoop2.7/",
        urls = ["https://archive.apache.org/dist/spark/spark-2.4.8/spark-2.4.8-bin-hadoop2.7.tgz"],
    )
