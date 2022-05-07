load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def redis_repository():
    http_archive(
        name = "redis",
        build_file = "//ext/redis:BUILD",
        patches = ["//ext/redis:container_redis.patch"],
        sha256 = "284d8bd1fd85d6a55a05ee4e7c31c31977ad56cbf344ed83790beeb148baa720",
        strip_prefix = "redis-7.0.0/",
        urls = ["http://download.redis.io/releases/redis-7.0.0.tar.gz"],
    )

    http_archive(
        name = "openssl",
        build_file = "//ext/openssl:BUILD",
        sha256 = "0f745b85519aab2ce444a3dcada93311ba926aea2899596d01e7f948dbd99981",
        strip_prefix = "openssl-OpenSSL_1_1_1o/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1o.tar.gz"],
    )
