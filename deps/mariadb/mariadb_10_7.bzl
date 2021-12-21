"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def mariadb_10_7_focal_amd64():
    deb_packages(
        name = "mariadb_10_7_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.1+maria~focal_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.1+maria~focal_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.1+maria~focal_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.1+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "4d593c131b246bd0ece14260119d26168ade107b187a1ddfb3678fb041ea7775",
            "libmariadb3": "8d62130f94f62534a2f76aece5eacc655e510a335544ffc36d66bc47ef8d6bce",
            "mariadb-client-10.7": "4593060e4cf7fc5733d6c3b625bdf13c755447d5b1aa00509bbdd03be180432c",
            "mariadb-client-core-10.7": "d88996c6264ce0d903cd84fee52d2227aaa74200187a6ae3f43fc0f4a83d8cad",
            "mariadb-server-core-10.7": "2d0f1cbc0d65ce1b9f2f420a56cd6b4c4bbbc2857062ff09f83083b51286e7e3",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_focal_arm64():
    deb_packages(
        name = "mariadb_10_7_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.1+maria~focal_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.1+maria~focal_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.1+maria~focal_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.1+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "2692bd17e3a0cbcf59d1d66ff89e04cddbc71af81414757426329509639fd019",
            "libmariadb3": "aaafd0c336fd2a617dc1c6a929f7ed2b2ed4560c85d5282e218e9b2624ee583c",
            "mariadb-client-10.7": "798daff420115ba9bc235a4e5688f4e2558116dd3dd9b18be9d1037cdebd0c7c",
            "mariadb-client-core-10.7": "b0fa8edb6db08e356b5b192e203e1804bc03be79bdd8ce7b3807af6803c22073",
            "mariadb-server-core-10.7": "db74a8626605d2154b0f5043b6e81c52576e16b419dd10ce44c5c7bda30b0bd9",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_bionic_amd64():
    deb_packages(
        name = "mariadb_10_7_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.1+maria~bionic_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.1+maria~bionic_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.1+maria~bionic_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.1+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "3940d610a99a7a342ba6ac614f153d3f3c3d0066df3d2f2da540c25f8db227d3",
            "libmariadb3": "00de5d00f6a8779f2eab2f74ddf6b212cdbee04b8602fccc4b6a9b225e6c48c1",
            "mariadb-client-10.7": "68894f00abdbe0a218bdba26c0f46be2ec98e9d9fd8481461c699f4be1dbd510",
            "mariadb-client-core-10.7": "f7015183f0169259b969094cc1c578b98a40638c5e82292f46c5736b861f67e9",
            "mariadb-server-core-10.7": "32e7451996a2451c40d40a67dc69446eee2b2b957063ba22a0bb7ae93e208041",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_bionic_arm64():
    deb_packages(
        name = "mariadb_10_7_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.1+maria~bionic_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.1+maria~bionic_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.1+maria~bionic_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.1+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "29bf4a198a420d20e346665afe1a049c22d57a396f08f6907191d531b4c820eb",
            "libmariadb3": "9e7953f1cca9d7fc990693bf622149bb1d52e0eb192930aa2c08afe2f81a7f4c",
            "mariadb-client-10.7": "6cc7f581138a0fc1b67466695b44a716f8ebf8d066bfe223fa95c5318e32993a",
            "mariadb-client-core-10.7": "794a03a718c2ab3409849068a2d7c00bb50e8db2b2f7200ef18f2f0e2c52e881",
            "mariadb-server-core-10.7": "40761bc21f1cc4efd4eb200aece4e4ef73b72724354fb6f523ff164ed0d79eaa",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )
