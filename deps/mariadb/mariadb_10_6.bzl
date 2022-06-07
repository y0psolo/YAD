"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

# def mariadb_10_6_jammy_amd64():
#     deb_packages(
#         name = "mariadb_10_6_jammy_amd64",
#         arch = "amd64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.7+maria~focal_amd64.deb",
#             "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.7+maria~focal_amd64.deb",
#             "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.7+maria~focal_amd64.deb",
#             "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.7+maria~focal_amd64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
#             "libmariadb3": "6cdc5661d57b9758d5f5cb7d1791e9514be535b9f3daac169ec6f8ec93c5cd5f",
#             "mariadb-client-10.6": "1558bf99a6a4a74da38ae0741769ed42e99397349f97416e4727fb6552c8f49b",
#             "mariadb-client-core-10.6": "95803e4e6e00efca8279b6147052a22305f84536081e268e641361ff7e8dd9d7",
#             "mariadb-server-core-10.6": "23f2116a8a523177c06000d1a1b37e04ea804c9a1e5b5d181b3f09c834f2a707",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
#         ],
#     )

# def mariadb_10_6_jammy_arm64():
#     deb_packages(
#         name = "mariadb_10_6_jammy_arm64",
#         arch = "arm64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.7+maria~focal_arm64.deb",
#             "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.7+maria~focal_arm64.deb",
#             "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.7+maria~focal_arm64.deb",
#             "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.7+maria~focal_arm64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
#             "libmariadb3": "23cf1ea07b5f84821aa5ab067072449516558b9eac98119f6906d673ce89a8a9",
#             "mariadb-client-10.6": "04e5ce70b7a82acab8d75c17b37f23fa4405e160252a73f2118a90bce1c056fc",
#             "mariadb-client-core-10.6": "2b9d6f4ca1c3253281190c84ef0a22fad15215be7e196129ed4c7701f05f3e3c",
#             "mariadb-server-core-10.6": "a291a01249e35cc8572f311cfdbbdd5870df4abf665f15208b8da5d23f9abd59",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
#         ],
#     )

def mariadb_10_6_focal_amd64():
    deb_packages(
        name = "mariadb_10_6_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.7+maria~focal_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.7+maria~focal_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.7+maria~focal_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.7+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "6cdc5661d57b9758d5f5cb7d1791e9514be535b9f3daac169ec6f8ec93c5cd5f",
            "mariadb-client-10.6": "1558bf99a6a4a74da38ae0741769ed42e99397349f97416e4727fb6552c8f49b",
            "mariadb-client-core-10.6": "95803e4e6e00efca8279b6147052a22305f84536081e268e641361ff7e8dd9d7",
            "mariadb-server-core-10.6": "23f2116a8a523177c06000d1a1b37e04ea804c9a1e5b5d181b3f09c834f2a707",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_focal_arm64():
    deb_packages(
        name = "mariadb_10_6_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.7+maria~focal_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.7+maria~focal_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.7+maria~focal_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.7+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "23cf1ea07b5f84821aa5ab067072449516558b9eac98119f6906d673ce89a8a9",
            "mariadb-client-10.6": "04e5ce70b7a82acab8d75c17b37f23fa4405e160252a73f2118a90bce1c056fc",
            "mariadb-client-core-10.6": "2b9d6f4ca1c3253281190c84ef0a22fad15215be7e196129ed4c7701f05f3e3c",
            "mariadb-server-core-10.6": "a291a01249e35cc8572f311cfdbbdd5870df4abf665f15208b8da5d23f9abd59",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_bionic_amd64():
    deb_packages(
        name = "mariadb_10_6_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.7+maria~bionic_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.7+maria~bionic_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.7+maria~bionic_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.7+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "900fd634738fe05dcc5fa57f1114ea06d41958dd26c673e28806172d44c534a6",
            "mariadb-client-10.6": "bc764df14edf463a28877246321da047e10470c2517e8e3cba0a337750204452",
            "mariadb-client-core-10.6": "cb1d9eb23db0bee9a9dc0888d1b56659308a5dc3400b1b792f50bdac7900e6ea",
            "mariadb-server-core-10.6": "6cb0fae861b97d50ee65e42e4f5cbdbd9d7228fe3d00aba063ba7c78995bd5d3",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_6_bionic_arm64():
    deb_packages(
        name = "mariadb_10_6_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.5+maria~bionic_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.5+maria~bionic_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.5+maria~bionic_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.5+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "12fd92f14de0d04c401b14e39bf5ed7daaf85c83721c2a49d80038f2d3aa535c",
            "mariadb-client-10.6": "ea1e3275cf612af1494cf0049e40cd69378da6dd456e6b4b2025bad51ab41b1f",
            "mariadb-client-core-10.6": "7a437318baa0618d6cb90b8f38609e0484723db9df2f66f817e98a1c7f27063e",
            "mariadb-server-core-10.6": "7fc03b93fb65634c121c9eea466550c955254606a63159dc04db9a2863a8d33b",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )
