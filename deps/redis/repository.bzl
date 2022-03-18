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
        sha256 = "6b2d2440ced8c802aaa61475919f0870ec556694c466ebea460e35ea2b14839e",
        strip_prefix = "openssl-OpenSSL_1_1_1n/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1n.tar.gz"],
    )
