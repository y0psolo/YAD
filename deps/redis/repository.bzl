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
        sha256 = "90185593ec54b8c304f41a65fd9e5a05c3f584485d5b4b1cf90adb602abb6b22",
        strip_prefix = "openssl-openssl-3.0.4/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.4.tar.gz"],
    )

    http_archive(
        name = "openssl1",
        build_file = "//ext/openssl1:BUILD",
        sha256 = "cd0cce1de6c9a6da8f83ba7ae210a3662eab21c4df7aff30149597797b2ceac9",
        strip_prefix = "openssl-OpenSSL_1_1_1p/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1p.tar.gz"],
    )
