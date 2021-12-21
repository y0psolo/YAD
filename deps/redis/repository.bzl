load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def redis_repository():
    http_archive(
        name = "redis",
        build_file = "//ext/redis:BUILD",
        patches = ["//ext/redis:container_redis.patch"],
        sha256 = "5b2b8b7a50111ef395bf1c1d5be11e6e167ac018125055daa8b5c2317ae131ab",
        strip_prefix = "redis-6.2.6/",
        urls = ["http://download.redis.io/releases/redis-6.2.6.tar.gz"],
    )

    http_archive(
        name = "openssl",
        build_file = "//ext/openssl:BUILD",
        sha256 = "dac036669576e83e8523afdb3971582f8b5d33993a2d6a5af87daa035f529b4f",
        strip_prefix = "openssl-OpenSSL_1_1_1l/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1l.tar.gz"],
    )