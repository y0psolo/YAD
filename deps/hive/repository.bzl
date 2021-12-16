load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def hive_repository():
    http_archive(
        name = "hive_metastore_3",
        build_file = "//ext/hivemetastore:BUILD",
        sha256 = "a2e9fb781e1b86c066d2f9c71f0210ad161bc0bd791e5999c325ffbd4354c190",
        strip_prefix = "apache-hive-metastore-3.1.2-bin/",
        urls = ["https://repo1.maven.org/maven2/org/apache/hive/hive-standalone-metastore/3.1.2/hive-standalone-metastore-3.1.2-bin.tar.gz"],
    )

    http_file(
        name = "mysql",
        downloaded_file_path = "mysql-connector-java.jar",
        sha256 = "d670e85fa1075a80d91b8f17dbd620d76717bc20c74ab4aea8356e37a8545ffe",
        urls = ["https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar"],
    )

    http_file(
        name = "postgresql",
        downloaded_file_path = "postgresql.jar",
        sha256 = "8370570857da86eb4a76dd3d8505d34bac0c18186741fa83a6820a10fa441cb4",
        urls = ["https://repo1.maven.org/maven2/org/postgresql/postgresql/42.3.1/postgresql-42.3.1.jar"],
    )
