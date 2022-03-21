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
        sha256 = "a00ccdf537ff50e50067b989108c2235197ffb65e197149bbb669db843cd1c3e",
        urls = ["https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.28/mysql-connector-java-8.0.28.jar"],
    )

    http_file(
        name = "postgresql",
        downloaded_file_path = "postgresql.jar",
        sha256 = "eed0604f512ba44817954de99a07e2a5470aa4bfcb481d4e63a93e0ff0e0aede",
        urls = ["https://repo1.maven.org/maven2/org/postgresql/postgresql/42.3.3/postgresql-42.3.3.jar"],
    )
