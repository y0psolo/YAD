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
        sha256 = "d4e32d2a6026b5acc00300b73a86c28fb92681ae9629b21048ee67014c911db6",
        urls = ["https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.29/mysql-connector-java-8.0.29.jar"],
    )

    http_file(
        name = "postgresql",
        downloaded_file_path = "postgresql.jar",
        sha256 = "424c9675000020e228ab13f70e99d5d63ff18d2bd0106f0ddb3e2607fcc33af4",
        urls = ["https://repo1.maven.org/maven2/org/postgresql/postgresql/42.3.5/postgresql-42.3.5.jar"],
    )
