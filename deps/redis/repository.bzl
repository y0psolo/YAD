load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def redis_repository():
    http_archive(
        name = "redis",
        build_file = "//ext/redis:BUILD",
        patches = ["//ext/redis:container_redis.patch"],
        sha256 = "5e57eafe7d4ac5ecb6a7d64d6b61db775616dbf903293b3fcc660716dbda5eeb",
        strip_prefix = "redis-7.0.2/",
        urls = ["http://download.redis.io/releases/redis-7.0.2.tar.gz"],
    )

    http_archive(
        name = "openssl3",
        build_file = "//ext/openssl3:BUILD",
        sha256 = "42123dbc4d7f41a2eac0eec250956708fbc2233302464f72ac31b7226aa505f7",
        strip_prefix = "openssl-openssl-3.0.3/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.3.tar.gz"],
    )

    http_archive(
        name = "openssl1",
        build_file = "//ext/openssl1:BUILD",
        sha256 = "0f745b85519aab2ce444a3dcada93311ba926aea2899596d01e7f948dbd99981",
        strip_prefix = "openssl-OpenSSL_1_1_1o/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1o.tar.gz"],
    )
