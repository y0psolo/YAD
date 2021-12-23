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
        sha256 = "36ae24ad7cf0a824d0b76ac08861262e47ec541e5d0f20e6d94bab90b2dab360",
        strip_prefix = "openssl-OpenSSL_1_1_1m/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1m.tar.gz"],
    )
