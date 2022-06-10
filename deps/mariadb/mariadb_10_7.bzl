"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

# def mariadb_10_7_jammy_amd64():
#     deb_packages(
#         name = "mariadb_10_7_jammy_amd64",
#         arch = "amd64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.3+maria~focal_amd64.deb",
#             "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.3+maria~focal_amd64.deb",
#             "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.3+maria~focal_amd64.deb",
#             "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.3+maria~focal_amd64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
#             "libmariadb3": "b78aaa49aa2a485f78704aaf18d20495e30f7538b661bd621efa1b0451a521f2",
#             "mariadb-client-10.7": "442b12c1762c93368eadee2cbe77939ee18e24d1b80464a156de55d78f93b6ee",
#             "mariadb-client-core-10.7": "36f5d6930f9336ad2cd831c71607e4bba4010f38f0c00a85dca0e0550a5c6d3a",
#             "mariadb-server-core-10.7": "e950a377c5ec44424a4a1515bbc1c7812a37566026435176df707a327acb08b3",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
#         ],
#     )

# def mariadb_10_7_jammy_arm64():
#     deb_packages(
#         name = "mariadb_10_7_jammy_arm64",
#         arch = "arm64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.3+maria~focal_arm64.deb",
#             "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.3+maria~focal_arm64.deb",
#             "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.3+maria~focal_arm64.deb",
#             "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.3+maria~focal_arm64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
#             "libmariadb3": "a4fca3d684b708ee8830045d6cd15998c3b200d197490b176d9057b40ea638cb",
#             "mariadb-client-10.7": "13b5842a807c89fb82397bc29373d9c2e9feb3e66b1d69be5a670a0f7e681800",
#             "mariadb-client-core-10.7": "a9eb3e6b9ed9519901379f7922e76fe21f3c40da6a82edd54edbfaa3a020cd84",
#             "mariadb-server-core-10.7": "9c440b805f1a1d383ff5c2c734ec358a5862be6a7302325c32f8b6e97236ff2c",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
#         ],
#     )

def mariadb_10_7_focal_amd64():
    deb_packages(
        name = "mariadb_10_7_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.4+maria~focal_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.4+maria~focal_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.4+maria~focal_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.4+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "f6a15bc950df73e47d7f317350f66303d7c068258e0696efb5eb1b73b7fbf933",
            "mariadb-client-10.7": "815f6de580654f8bbc30fd79fad35b7bee74ec626e40b0592b0063b8c655b63c",
            "mariadb-client-core-10.7": "227add453a9964ef73264cc5b16ff0157f99353af78806447d70b3ec68fa2e7c",
            "mariadb-server-core-10.7": "94294e6d841339e6dbe7f8fb7841b335d2093c2334b45b4eaf53175ecefc6a57",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_focal_arm64():
    deb_packages(
        name = "mariadb_10_7_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.4+maria~focal_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.4+maria~focal_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.4+maria~focal_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.4+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "6e34d5ea0c8e032bdc9a7cdb126dafbd18ee34696aa9e302aec25e846a42138b",
            "mariadb-client-10.7": "2c993a135267d41c83fc2ffe9e46d0f3e46e6f3b8ad6270b7abbb33857d8a932",
            "mariadb-client-core-10.7": "3dc14cb1e2cdae14c1aeef99faa683c4b2ad71883305dc653cb373d87939c4a2",
            "mariadb-server-core-10.7": "fbafd534c8e44ab48b0ce71ab4c7ea30afa31c1bfab680bbc5b760dc19bdc9b7",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_bionic_amd64():
    deb_packages(
        name = "mariadb_10_7_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.4+maria~bionic_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.4+maria~bionic_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.4+maria~bionic_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.4+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "0b36c08f02c5290ad7c2234a7528ba728ce9df0ff85afa68f6c5bee07d62fd2e",
            "mariadb-client-10.7": "c4782d00e467aab4c09fdb34b4faba80762e82bc1da148c3dfefcba596a0fd3f",
            "mariadb-client-core-10.7": "60709bd1169c2f7a8485b44b959f55e5cfad871a7b416158f32e824d5f011752",
            "mariadb-server-core-10.7": "37226ec30ffac20c8ca8cb77100a401cbc1f40e4e4fa4d8aa6f787258a0aecc2",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_7_bionic_arm64():
    deb_packages(
        name = "mariadb_10_7_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.4+maria~bionic_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.4+maria~bionic_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.4+maria~bionic_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.4+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "5c8a0fd05cae003cafecfc3b9daef298967d1c42a1ab6b1ed2f282638723d150",
            "mariadb-client-10.7": "a253d82b46d465235201dbada82093112179be51256851e4dad04f2a2715675f",
            "mariadb-client-core-10.7": "7c80a7c9610592e061f8f0e14d9d22e3dfcb0a0bcf1233433e48e378187ec42a",
            "mariadb-server-core-10.7": "0e9e20fceeb729122358f1aa1e258ed5c852bb06490a97397f59a52df303df00",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )
