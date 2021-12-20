"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def mariadb_10_5_focal_amd64():
    deb_packages(
        name = "mariadb_10_5_focal_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.13+maria~focal_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.13+maria~focal_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.13+maria~focal_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.13+maria~focal_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "4d593c131b246bd0ece14260119d26168ade107b187a1ddfb3678fb041ea7775",
            "libmariadb3": "4fa038404a1c1e3db0c341f507fb67e0c496e4bf390c47ce9e789fa86f059adf",
            "mariadb-client-10.5": "927c5d3ca5433ec143124541ad024da76fdb3a5fd30b95be9819728b64e11705",
            "mariadb-client-core-10.5": "6bd36f89a3e3f32704814f7a5b9352f54aad820ba602b2ebd26c31bec441ae78",
            "mariadb-server-core-10.5": "8e9c642a912aadb2b0e6eb075a7cb8ef32fd21bf049d93720a28c5978834e98b",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_focal_arm64():
    deb_packages(
        name = "mariadb_10_5_focal_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-focal_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.13+maria~focal_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.13+maria~focal_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.13+maria~focal_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.13+maria~focal_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "2692bd17e3a0cbcf59d1d66ff89e04cddbc71af81414757426329509639fd019",
            "libmariadb3": "b078575a2eba56644d76bdf518210f1444c606fbd0815ec45bc398b118432751",
            "mariadb-client-10.5": "956c6545e2398e8585d4c04e739c602014dc85995dd50742e75975559d70b4e5",
            "mariadb-client-core-10.5": "396557d953f4f6b2ab477a831b2d62044b14f98d880423c92c814fc8c710e5ff",
            "mariadb-server-core-10.5": "98451e973daf41653425d5d1a55899e4612f048ca14e3c3a5ceaf99ee73aae63",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/ focal main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_bionic_amd64():
    deb_packages(
        name = "mariadb_10_5_bionic_amd64",
        arch = "amd64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_amd64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.13+maria~bionic_amd64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.13+maria~bionic_amd64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.13+maria~bionic_amd64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.13+maria~bionic_amd64.deb",
        },
        packages_sha256 = {
            "galera-4": "3940d610a99a7a342ba6ac614f153d3f3c3d0066df3d2f2da540c25f8db227d3",
            "libmariadb3": "fd85687a981d42250c6dbd92f83c5fb40d022503a1eaaf7d4e16e398ef20abeb",
            "mariadb-client-10.5": "ece77251a333f2e55dbbdd06e9b5c4f63ced5972385938b5067fd4c6d64ccd9c",
            "mariadb-client-core-10.5": "57c82a1ab6fde0b361e7d7f6439b055fbdde64c83d6f6c7f04553837ebfd9b9b",
            "mariadb-server-core-10.5": "8e9f595808649459b627d03d924b1065c755584915dce9519713e5001bf2c935",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )

def mariadb_10_5_bionic_arm64():
    deb_packages(
        name = "mariadb_10_5_bionic_arm64",
        arch = "arm64",
        packages = {
            "galera-4": "pool/main/g/galera-4/galera-4_26.4.9-bionic_arm64.deb",
            "libmariadb3": "pool/main/m/mariadb-10.5/libmariadb3_10.5.13+maria~bionic_arm64.deb",
            "mariadb-client-10.5": "pool/main/m/mariadb-10.5/mariadb-client-10.5_10.5.13+maria~bionic_arm64.deb",
            "mariadb-client-core-10.5": "pool/main/m/mariadb-10.5/mariadb-client-core-10.5_10.5.13+maria~bionic_arm64.deb",
            "mariadb-server-core-10.5": "pool/main/m/mariadb-10.5/mariadb-server-core-10.5_10.5.13+maria~bionic_arm64.deb",
        },
        packages_sha256 = {
            "galera-4": "29bf4a198a420d20e346665afe1a049c22d57a396f08f6907191d531b4c820eb",
            "libmariadb3": "c8c3443bd49515640d22699550067b0002a9aa78e00bf3db701995f83367710e",
            "mariadb-client-10.5": "0c17488da5245ef2168c3d70e7ec515821e3055994933a3c29bdb8bea82732f8",
            "mariadb-client-core-10.5": "7983c8d08188645ce911491118c8f60cb5c52fa8b79e61f35d2c0badc6398580",
            "mariadb-server-core-10.5": "84da79a9e367e1eecd7d9958aa0967d4ef9bbe814c14c8016c1759732e3a8387",
        },
        sources = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/ bionic main",
        ],
        urls = [
            "https://mirror.rackspace.com/mariadb/repo/10.5/ubuntu/$(package_path)",
        ],
    )
