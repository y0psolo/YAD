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
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.8+maria~focal_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.8+maria~focal_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.8+maria~focal_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.8+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "e6323c10ee4796aa2efe8645c740b7f35818f31c2e192f3df2d0b460a7ace328",
            "mariadb-client-10.6": "5c78fb9eae705359ea0799b4d889a52a091b6a3423c29aa3776e5616f046662a",
            "mariadb-client-core-10.6": "c52eb25645788337b463530d692733d2f861e25a9d56cc18d317e5b5a171adeb",
            "mariadb-server-core-10.6": "80fc533a48455afa9e231054dd4eab68e6caa158a77eaa61c6e1bc47e4726db5",
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
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.8+maria~focal_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.8+maria~focal_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.8+maria~focal_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.8+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "4e17cfa73d6aa521e48cb07953cdba7ec0c6f4b383e3cda3cd723e37d1e1caf7",
            "mariadb-client-10.6": "5aeed6aa43eacc598441cb088f46932f400347e1a020531e810b8c9c918a13af",
            "mariadb-client-core-10.6": "dd85efe0d0846ec7924565502ba78ccd86fad9527566c901551ed6c98277427e",
            "mariadb-server-core-10.6": "21f0331afe4e91749411f0dabe4e21ab8ea4f50c0cdd0b87daacae912606c366",
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
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.8+maria~bionic_amd64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.8+maria~bionic_amd64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.8+maria~bionic_amd64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.8+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "a3d43a761452a3e4fe32650ebf47cfe7370fa9563141e75de5825fd76106ebea",
            "mariadb-client-10.6": "9ce684f23b962bb2019e81cdeecf1e5d10d156faa4a5d13bb830745fb7944001",
            "mariadb-client-core-10.6": "5409b909433779831943a2899a8e24e5353043084573cc8c6fd8e873c6ad5fa7",
            "mariadb-server-core-10.6": "fd50e0c4e479ac29e1f6b60621bd7cbd8adbdd2819b2ec8e66961d99d16e22b5",
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
            "libmariadb3": "pool/main/m/mariadb-10.6/libmariadb3_10.6.8+maria~bionic_arm64.deb",
            "mariadb-client-10.6": "pool/main/m/mariadb-10.6/mariadb-client-10.6_10.6.8+maria~bionic_arm64.deb",
            "mariadb-client-core-10.6": "pool/main/m/mariadb-10.6/mariadb-client-core-10.6_10.6.8+maria~bionic_arm64.deb",
            "mariadb-server-core-10.6": "pool/main/m/mariadb-10.6/mariadb-server-core-10.6_10.6.8+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "f63f201260d293a9bb9bdcf4d36e45c7c45b855c4a21e4f52080f385654bd706",
            "mariadb-client-10.6": "c681d5a849b6f23ab7f06cb443221433476a3f3a6e2e82f4e1e5ac6896608d00",
            "mariadb-client-core-10.6": "5497f9715f9fb3b5ab491be11161f35b4e131db5a1f3ed312c4cf403efdbc0fa",
            "mariadb-server-core-10.6": "0c2bfc019cd396b8497a356e36a45c666348eb05fab277feec128f6042a2c371",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.6/ubuntu/$(package_path)",
        ],
    )
