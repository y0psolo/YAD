"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def mariadb_10_6_focal_amd64():
    deb_packages(
        name = "mariadb_10_6_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.5+maria~focal_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.5+maria~focal_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.5+maria~focal_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.5+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "4d593c131b246bd0ece14260119d26168ade107b187a1ddfb3678fb041ea7775",
            "libmariadb3": "b1ba1cf6b18ec78db4c959e35d664105efa61ba993eec2295a84ca6f8c1ee01a",
            "mariadb-client-10.6": "2140aea261a1ce4a0e925d0458723a40cba81247d10a0c4b2a26d4f4c32455b7",
            "mariadb-client-core-10.6": "0cd3282b1f4d65979c4bee5abaebe88fb87526ce7a4cdc590bc5ede9707cef46",
            "mariadb-server-core-10.6": "ea5dff0fcf3fb09cb1a9fe4849d676ff2cc03ef80a8868adbdfee29bc2b75eac",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_focal_arm64():
    deb_packages(
        name = "mariadb_10_6_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.5+maria~focal_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.5+maria~focal_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.5+maria~focal_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.5+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "2692bd17e3a0cbcf59d1d66ff89e04cddbc71af81414757426329509639fd019",
            "libmariadb3": "345a7706ad847f6b803485a3b15d66f1b7eb9aea610e6ba4906ef3da233dec35",
            "mariadb-client-10.6": "bcfeaa7b5a363a24ad5c0b76f1f06fbf8189fa52714355408d0a2c54d37ebd45",
            "mariadb-client-core-10.6": "640e5ab1894b4b518de6bad02540a6700592f3639960140ecff2268181fb7fd1",
            "mariadb-server-core-10.6": "c35dac3e24be55f6dafbb374218db61860fce33137a3370083e14db2695ccbc3",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_bionic_amd64():
    deb_packages(
        name = "mariadb_10_6_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.5+maria~bionic_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.5+maria~bionic_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.5+maria~bionic_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.5+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "3940d610a99a7a342ba6ac614f153d3f3c3d0066df3d2f2da540c25f8db227d3",
            "libmariadb3": "d54f74b9d912a5a018d200ade6df735e30df334733e49280fb97f61447caed7d",
            "mariadb-client-10.6": "e206b80f49f6425b3dcb71ea917ab06e00a96e47c7d7cf49dbf005fa85011978",
            "mariadb-client-core-10.6": "5b1a0c60e45fdf60355d75044a17601490a6a31899818c88cdcb8b78fadccdc6",
            "mariadb-server-core-10.6": "3a8440aba6fa321bf1abd6a2c6a63611de6a25b25a8f875502f7145f4f6bd0df",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_bionic_arm64():
    deb_packages(
        name = "mariadb_10_6_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.5+maria~bionic_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.5+maria~bionic_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.5+maria~bionic_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.5+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "29bf4a198a420d20e346665afe1a049c22d57a396f08f6907191d531b4c820eb",
            "libmariadb3": "12fd92f14de0d04c401b14e39bf5ed7daaf85c83721c2a49d80038f2d3aa535c",
            "mariadb-client-10.6": "ea1e3275cf612af1494cf0049e40cd69378da6dd456e6b4b2025bad51ab41b1f",
            "mariadb-client-core-10.6": "7a437318baa0618d6cb90b8f38609e0484723db9df2f66f817e98a1c7f27063e",
            "mariadb-server-core-10.6": "7fc03b93fb65634c121c9eea466550c955254606a63159dc04db9a2863a8d33b",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )
