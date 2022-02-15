"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def mariadb_10_7_focal_amd64():
    deb_packages(
        name = "mariadb_10_7_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.11-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.3+maria~focal_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.3+maria~focal_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.3+maria~focal_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.3+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "530c109bbcc66a92ed2e06beb42722df14652d6c8ee3ed8ee6195147aeb53cf8",
            "libmariadb3": "b78aaa49aa2a485f78704aaf18d20495e30f7538b661bd621efa1b0451a521f2",
            "mariadb-client-10.7": "442b12c1762c93368eadee2cbe77939ee18e24d1b80464a156de55d78f93b6ee",
            "mariadb-client-core-10.7": "36f5d6930f9336ad2cd831c71607e4bba4010f38f0c00a85dca0e0550a5c6d3a",
            "mariadb-server-core-10.7": "e950a377c5ec44424a4a1515bbc1c7812a37566026435176df707a327acb08b3",
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
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.3+maria~focal_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.3+maria~focal_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.3+maria~focal_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.3+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "d335c8d1b4bd46d83acef34a4d7b6d470c2267850c0e164a80e1a3e341cfd32a",
            "libmariadb3": "a4fca3d684b708ee8830045d6cd15998c3b200d197490b176d9057b40ea638cb",
            "mariadb-client-10.7": "13b5842a807c89fb82397bc29373d9c2e9feb3e66b1d69be5a670a0f7e681800",
            "mariadb-client-core-10.7": "a9eb3e6b9ed9519901379f7922e76fe21f3c40da6a82edd54edbfaa3a020cd84",
            "mariadb-server-core-10.7": "9c440b805f1a1d383ff5c2c734ec358a5862be6a7302325c32f8b6e97236ff2c",
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
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.3+maria~bionic_amd64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.3+maria~bionic_amd64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.3+maria~bionic_amd64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.3+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "b5620cb7fe9286d28c525b3263d99ceccff58819f542769a198d9c3e4676fcc9",
            "libmariadb3": "58d50067ae1c57dc6457c32307300426439b8460675161c60ca85e305b2a981e",
            "mariadb-client-10.7": "ac8ce6508f8537b6ec9ce9b926dd0d941ec4d0c8f874ad53ac31cb159bec7d66",
            "mariadb-client-core-10.7": "d06bea0ed5517a504d37e4dfe022e90e582a004043dd17119368c262b0a6f943",
            "mariadb-server-core-10.7": "b5ee4aa6d6e0e08b29e69efc76b7c351d78db41ed7a7161a46ccd18b860fb3f8",
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
            "libmariadb3": "pool/main/m/mariadb-10.7/libmariadb3_10.7.1+maria~bionic_arm64.deb",
            "mariadb-client-10.7": "pool/main/m/mariadb-10.7/mariadb-client-10.7_10.7.1+maria~bionic_arm64.deb",
            "mariadb-client-core-10.7": "pool/main/m/mariadb-10.7/mariadb-client-core-10.7_10.7.1+maria~bionic_arm64.deb",
            "mariadb-server-core-10.7": "pool/main/m/mariadb-10.7/mariadb-server-core-10.7_10.7.1+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "797cca276529507b9e578fc8250272eb7ebdff5c5f71aade2a1a09c3c11ea372",
            "libmariadb3": "9e7953f1cca9d7fc990693bf622149bb1d52e0eb192930aa2c08afe2f81a7f4c",
            "mariadb-client-10.7": "6cc7f581138a0fc1b67466695b44a716f8ebf8d066bfe223fa95c5318e32993a",
            "mariadb-client-core-10.7": "794a03a718c2ab3409849068a2d7c00bb50e8db2b2f7200ef18f2f0e2c52e881",
            "mariadb-server-core-10.7": "40761bc21f1cc4efd4eb200aece4e4ef73b72724354fb6f523ff164ed0d79eaa",
        },
        sources = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirrors.xtom.nl/mariadb/repo/10.7/ubuntu/$(package_path)",
        ],
    )
