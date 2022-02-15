"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def mariadb_10_5_focal_amd64():
    deb_packages(
        name = "mariadb_10_5_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~focal_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~focal_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~focal_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "37f5e397419df3bace1e1923d1d14d358476e94373be752d341bb199fa08a84a",
            "mariadb-client-10.5": "abec745778eed4d0cdb4efd87c48a22ba1bc8c99549ae40cf941f3fe8305feb1",
            "mariadb-client-core-10.5": "0b143bb5a172653113d824eff38dbc15f8cd21019d8c3c4991607d01cccb817f",
            "mariadb-server-core-10.5": "78addd34233a3ab2141c59fb41efc248e9502842abbcac742f38d64943061093",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_focal_arm64():
    deb_packages(
        name = "mariadb_10_5_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~focal_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~focal_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~focal_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "ed8cee6d935183729f2f2e29f2ad4d319c721999aef4cc2876411414598b919f",
            "mariadb-client-10.5": "a436c9ce0fe6034d2965b28552ff5bbf57446fa168b15a81a46ec528f56a869f",
            "mariadb-client-core-10.5": "66c614fee3bbb85c9281bc1a6fff5b8449bab4b3463e15daa2a5937ea792d0e9",
            "mariadb-server-core-10.5": "fdea3e617e21df0d751950e4ac4478f20a267a9a00617c848d4dae4d6ab2cafb",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ focal main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_bionic_amd64():
    deb_packages(
        name = "mariadb_10_5_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~bionic_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~bionic_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~bionic_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "16a4cd7115ec33e9b67bc4da54c6fc4fb4809b3afdb61af8417c636381ffa4ed",
            "mariadb-client-10.5": "4842776c527cb0a72600efc121e837844ebc339feed33dfe5a3f5de79c37b6bc",
            "mariadb-client-core-10.5": "333b8819be7e22d95d9bc4cbc155f3eaf64bad13819b2f1e5e2f968b8c327e9d",
            "mariadb-server-core-10.5": "e87755a9fd14a3e893e44e6c666251a9c7a0925c22482a1125ddd93063cc1c0a",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_bionic_arm64():
    deb_packages(
        name = "mariadb_10_5_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~bionic_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~bionic_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~bionic_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "e3f91cb101ae4893d0b6dc9b4133097d6faefbc6b316f7821a095e0045b9979b",
            "mariadb-client-10.5": "b5787a21dd241f3d1170ab3121f61d30ce5f9506beabc240642067050d36e9d4",
            "mariadb-client-core-10.5": "5f44e783d89e49ac91905934a761546a73e12dc68f7a85b1055bc706065095e9",
            "mariadb-server-core-10.5": "7017cef61dae48eade353273dedff3ce9ea37e411945cf25ba556dbccff35083",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )
