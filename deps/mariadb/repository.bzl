load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load(":mariadb_10_5.bzl", "mariadb_10_5_focal_amd64","mariadb_10_5_focal_arm64", "mariadb_10_5_bionic_amd64","mariadb_10_5_bionic_arm64")
load(":mariadb_10_6.bzl", "mariadb_10_6_focal_amd64","mariadb_10_6_focal_arm64", "mariadb_10_6_bionic_amd64","mariadb_10_6_bionic_arm64")
load(":mariadb_10_7.bzl", "mariadb_10_7_focal_amd64","mariadb_10_7_focal_arm64", "mariadb_10_7_bionic_amd64","mariadb_10_7_bionic_arm64")


def mariadb_repository():
    http_file(
        name = "mariadb_key",
        sha256 = "00adb387f4c12e8982cfc28165d225695621494354cd58108c6845063bfb74b5",
        urls = ["https://mariadb.org/mariadb_release_signing_key.asc"],
    )

    # mariadb_10_5_jammy_amd64()
    # mariadb_10_5_jammy_arm64()
    mariadb_10_5_focal_amd64()
    mariadb_10_5_focal_arm64()
    mariadb_10_5_bionic_amd64()
    mariadb_10_5_bionic_arm64()

    # mariadb_10_6_jammy_amd64()
    # mariadb_10_6_jammy_arm64()
    mariadb_10_6_focal_amd64()
    mariadb_10_6_focal_arm64()
    mariadb_10_6_bionic_amd64()
    mariadb_10_6_bionic_arm64()

    # mariadb_10_7_jammy_amd64()
    # mariadb_10_7_jammy_arm64()
    mariadb_10_7_focal_amd64()
    mariadb_10_7_focal_arm64()
    mariadb_10_7_bionic_amd64()
    mariadb_10_7_bionic_arm64()