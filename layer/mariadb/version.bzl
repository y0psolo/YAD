load("@mariadb_10_5_focal_amd64//debs:deb_packages.bzl", "mariadb_10_5_focal_amd64")
load("@mariadb_10_5_focal_arm64//debs:deb_packages.bzl", "mariadb_10_5_focal_arm64")
load("@mariadb_10_5_bionic_amd64//debs:deb_packages.bzl", "mariadb_10_5_bionic_amd64")
load("@mariadb_10_5_bionic_arm64//debs:deb_packages.bzl", "mariadb_10_5_bionic_arm64")
load("@mariadb_10_6_focal_amd64//debs:deb_packages.bzl", "mariadb_10_6_focal_amd64")
load("@mariadb_10_6_focal_arm64//debs:deb_packages.bzl", "mariadb_10_6_focal_arm64")
load("@mariadb_10_6_bionic_amd64//debs:deb_packages.bzl", "mariadb_10_6_bionic_amd64")
load("@mariadb_10_6_bionic_arm64//debs:deb_packages.bzl", "mariadb_10_6_bionic_arm64")
load("@mariadb_10_7_focal_amd64//debs:deb_packages.bzl", "mariadb_10_7_focal_amd64")
load("@mariadb_10_7_focal_arm64//debs:deb_packages.bzl", "mariadb_10_7_focal_arm64")
load("@mariadb_10_7_bionic_amd64//debs:deb_packages.bzl", "mariadb_10_7_bionic_amd64")
load("@mariadb_10_7_bionic_arm64//debs:deb_packages.bzl", "mariadb_10_7_bionic_arm64")

def mariadb_package(version, package):
    return select({
            "//platforms:k8_cpu_focal": [
                mariadb_10_5_focal_amd64[package] if (version == "10.5")
                else mariadb_10_6_focal_amd64[package] if (version == "10.6")
                else mariadb_10_7_focal_amd64[package] if version == "10.7" else "",
            ],
            "//platforms:aarch64_cpu_focal": [
                mariadb_10_5_focal_arm64[package] if (version == "10.5") 
                else mariadb_10_6_focal_arm64[package] if (version == "10.6")
                else mariadb_10_7_focal_arm64[package] if version == "10.7" else "",
            ],
            "//platforms:k8_cpu_bionic": [
                mariadb_10_5_bionic_amd64[package] if (version == "10.5")
                else mariadb_10_6_bionic_amd64[package] if (version == "10.6")
                else mariadb_10_7_bionic_amd64[package] if version == "10.7" else "",
            ],
            "//platforms:aarch64_cpu_bionic": [
                mariadb_10_5_bionic_arm64[package] if (version == "10.5")
                else mariadb_10_6_bionic_arm64[package] if (version == "10.6")
                else mariadb_10_7_bionic_arm64[package] if version == "10.7" else "",
            ]
        })