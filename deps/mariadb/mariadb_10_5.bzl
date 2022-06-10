"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

# def mariadb_10_5_jammy_amd64():
#     deb_packages(
#         name = "mariadb_10_5_jammy_amd64",
#         arch = "amd64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~focal_amd64.deb",
#             "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~focal_amd64.deb",
#             "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~focal_amd64.deb",
#             "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~focal_amd64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
#             "libmariadb3": "37f5e397419df3bace1e1923d1d14d358476e94373be752d341bb199fa08a84a",
#             "mariadb-client-10.5": "abec745778eed4d0cdb4efd87c48a22ba1bc8c99549ae40cf941f3fe8305feb1",
#             "mariadb-client-core-10.5": "0b143bb5a172653113d824eff38dbc15f8cd21019d8c3c4991607d01cccb817f",
#             "mariadb-server-core-10.5": "78addd34233a3ab2141c59fb41efc248e9502842abbcac742f38d64943061093",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
#         ],
#     )

# def mariadb_10_5_jammy_arm64():
#     deb_packages(
#         name = "mariadb_10_5_jammy_arm64",
#         arch = "arm64",
#         packages = {
#             "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_arm64.deb",
#             "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.15+maria~focal_arm64.deb",
#             "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.15+maria~focal_arm64.deb",
#             "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.15+maria~focal_arm64.deb",
#             "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.15+maria~focal_arm64.deb",
#         },
#         packages_sha256 = {
#             "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
#             "libmariadb3": "ed8cee6d935183729f2f2e29f2ad4d319c721999aef4cc2876411414598b919f",
#             "mariadb-client-10.5": "a436c9ce0fe6034d2965b28552ff5bbf57446fa168b15a81a46ec528f56a869f",
#             "mariadb-client-core-10.5": "66c614fee3bbb85c9281bc1a6fff5b8449bab4b3463e15daa2a5937ea792d0e9",
#             "mariadb-server-core-10.5": "fdea3e617e21df0d751950e4ac4478f20a267a9a00617c848d4dae4d6ab2cafb",
#         },
#         sources = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ jammy main",
#         ],
#         urls = [
#             "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
#         ],
#     )

def mariadb_10_5_focal_amd64():
    deb_packages(
        name = "mariadb_10_5_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.16+maria~focal_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.16+maria~focal_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.16+maria~focal_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.16+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "635b52ac4dc8bd7ba523346501b901c90ef1a64416992a33968228aa68802975",
            "mariadb-client-10.5": "64fdedd04967b4c953b5a638da6b17c8bba72d82ff1fcd6ad799c6bbc4832a82",
            "mariadb-client-core-10.5": "2b10562178084dc9aca1b744267b6e82c37c028154105531b9ba468fabc47519",
            "mariadb-server-core-10.5": "94ca7b6648eb24258efe69222d90e0819bb3ab4263054beebca6bb9b2063048c",
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
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.16+maria~focal_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.16+maria~focal_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.16+maria~focal_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.16+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "c0180f55bfd65514fd74d4790d80c066494b9dd4e00cffa614376a2c7135e5e3",
            "mariadb-client-10.5": "92b7ab6c001d2958d0a28fbf0ac735124106f5a440af34df5813a669cfebb8b3",
            "mariadb-client-core-10.5": "d61f9826694efba87bc78ec4ea0d544db0567fbbb17e686e351b4b56fe0345cd",
            "mariadb-server-core-10.5": "9206d75ae7512fd51f5e65b270f81fe780ed5f9a108f5fc23815f718147f729d",
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
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.16+maria~bionic_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.16+maria~bionic_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.16+maria~bionic_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.16+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "8d198f066ddf464084ce7d23b709e21e8fa82eacaa839ec8501d640806cf8c78",
            "mariadb-client-10.5": "2245565a3e80a27ff9cca5a77b71b6b568576140d2522b268aaf414517cbe1ee",
            "mariadb-client-core-10.5": "fb4918d720b7c0a433065b14a9c5231d40734c870a47a62561220a6c147176bb",
            "mariadb-server-core-10.5": "629275ae8b795b399eb7aae2bada8f756928c18867139581fd16be84ce645d36",
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
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.16+maria~bionic_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.16+maria~bionic_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.16+maria~bionic_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.16+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "b5a63d0c46876fffa94f527a2219e31e660804bf46491ab644ac5e784ebc40b8",
            "mariadb-client-10.5": "353f8147dbefc625df6da9e168aac5f25022deef55ee52cec252518aa30c426d",
            "mariadb-client-core-10.5": "94dfe84884a7295820f68f274a2b62095a593b2345eeda7d9eeb3c45eaa2575f",
            "mariadb-server-core-10.5": "12b04d6824e4c336a9fea8886c23f82d1a6e2186d45cbe7929158aa10b11a04f",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )
