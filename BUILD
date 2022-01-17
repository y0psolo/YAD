load("@rules_deb_packages//:update_deb_packages.bzl", "update_deb_packages")
load("@rules-update//:update.bzl", "update_http", "update_version")
 
package(default_visibility = ["//:__subpackages__"])

update_deb_packages(
    name = "update_focal_packages",
    bzl_files = [
        "deps/core/ubuntu_focal_amd64.bzl",
        "deps/core/ubuntu_focal_arm64.bzl",
    ],
    pgp_keys = [
        "@ubuntu_focal_key//file",
    ],
)

update_deb_packages(
    name = "update_bionic_packages",
    bzl_files = [
        "deps/core/ubuntu_bionic_amd64.bzl",
        "deps/core/ubuntu_bionic_arm64.bzl",
    ],
    pgp_keys = [
        "@ubuntu_bionic_key//file",
    ],
)

update_deb_packages(
    name = "update_mariadb",
    bzl_files = [
        "deps/mariadb/mariadb_10_5.bzl",
        "deps/mariadb/mariadb_10_6.bzl",
        "deps/mariadb/mariadb_10_7.bzl",
    ],
    pgp_keys = [
        "@mariadb_key//file",
    ],
)

update_http(
    name = "update_nodejs",
    yaml_files = ["nodejs.yaml"],
    bazel_file = "//deps/nodejs:repository.bzl",
)

update_http(
    name = "update_java",
    yaml_files = ["java.yaml"],
    bazel_file = "//deps/java:repository.bzl",
)

update_http(
    name = "update_deno",
    yaml_files = ["deno.yaml"],
    bazel_file = "//deps/deno:repository.bzl",
)

update_http(
    name = "update_hadoop",
    yaml_files = ["hadoop.yaml"],
    bazel_file = "//deps/hadoop:repository.bzl",
)

update_http(
    name = "update_hive",
    yaml_files = ["hive.yaml"],
    bazel_file = "//deps/hive:repository.bzl",
)

update_http(
    name = "update_spark",
    yaml_files = ["spark.yaml"],
    bazel_file = "//deps/spark:repository.bzl",
)

update_http(
    name = "update_trino",
    yaml_files = ["trino.yaml"],
    bazel_file = "//deps/trino:repository.bzl",
)

update_http(
    name = "update_redis",
    yaml_files = ["redis.yaml"],
    bazel_file = "//deps/redis:repository.bzl",
)

update_http(
    name = "update_consultemplate",
    yaml_files = ["consultemplate.yaml"],
    bazel_file = "//deps/consultemplate:repository.bzl",
)

update_http(
    name = "update_prometheus",
    yaml_files = ["prometheus.yaml"],
    bazel_file = "//deps/prometheus:repository.bzl",
)

update_version(
    name = "update_versions",
    yaml_files = ["versions.yaml"],
    bazel_file = "//update:constants.bzl",
)