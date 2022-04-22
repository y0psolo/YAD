load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def hive_repository():
    http_archive(
        name = "hive_metastore_3",
        build_file = "//ext/hivemetastore:BUILD",
        sha256 = "83ddf76717eeb789091d845c069a631c25cad561c3d31ec0843a1ddf21f29409",
        strip_prefix = "apache-hive-metastore-3.1.3-bin/",
        urls = ["https://repo1.maven.org/maven2/org/apache/hive/hive-standalone-metastore/3.1.3/hive-standalone-metastore-3.1.3-bin.tar.gz"],
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
        sha256 = "5d5ed5716645f19e895152a5dd181c7a1376f81e8dcaab4fff12b008122240ae",
        urls = ["https://repo1.maven.org/maven2/org/postgresql/postgresql/42.3.4/postgresql-42.3.4.jar"],
    )
