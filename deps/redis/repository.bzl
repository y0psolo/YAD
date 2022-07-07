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
        sha256 = "b6363cf1bca88f0a46a768883a225e644135432d6a51ab1c4660ab58af541078",
        strip_prefix = "openssl-openssl-3.0.5/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.5.tar.gz"],
    )

    http_archive(
        name = "openssl1",
        build_file = "//ext/openssl1:BUILD",
        sha256 = "0686897afd3a08223760db73d8034550401b53ffc545798d7ca476564f80315e",
        strip_prefix = "openssl-OpenSSL_1_1_1q/",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/OpenSSL_1_1_1q.tar.gz"],
    )
