"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_focal_arm64():
    deb_packages(
        name = "ubuntu_focal_arm64",
        arch = "arm64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_11ubuntu5.4_arm64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20210119~20.04.2_all.deb",
            "dash": "pool/main/d/dash/dash_0.5.10.2-6_arm64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-2ubuntu3_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-2_arm64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.31-0ubuntu9.2_arm64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.31-0ubuntu9.2_arm64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.10-10ubuntu4_arm64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.6ubuntu2_arm64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.9-1build1_arm64.deb",
            "libffi7": "pool/main/libf/libffi/libffi7_3.3-4_arm64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-2ubuntu3_arm64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.10.1-2ubuntu0.1_arm64.deb",
            "libgcc-s1": "pool/main/g/gcc-10/libgcc-s1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libgcc1": "pool/universe/g/gcc-10/libgcc1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libgomp1": "pool/main/g/gcc-10/libgomp1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1.20.04.1_arm64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-4_arm64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.4-1ubuntu1_arm64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-3_arm64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.2-0ubuntu2_arm64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-2_arm64.deb",
            "libpython3.8-minimal": "pool/main/p/python3.8/libpython3.8-minimal_3.8.10-0ubuntu1~20.04.2_arm64.deb",
            "libpython3.8-stdlib": "pool/main/p/python3.8/libpython3.8-stdlib_3.8.10-0ubuntu1~20.04.2_arm64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.0-4_arm64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.31.1-4ubuntu0.2_arm64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.10_arm64.deb",
            "libstdc++6": "pool/main/g/gcc-10/libstdc++6_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.2-0ubuntu2_arm64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.34-0.1ubuntu9.1_arm64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.64ubuntu1_all.deb",
            "netbase": "pool/main/n/netbase/netbase_6.1_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.10_arm64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.8.10-0ubuntu1~20.04_all.deb",
            "python3.8-minimal": "pool/main/p/python3.8/python3.8-minimal_3.8.10-0ubuntu1~20.04.2_arm64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.0-4_all.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2021e-0ubuntu0.20.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu1.2_arm64.deb",
        },
        packages_sha256 = {
            "base-files": "74d8c19196fc93e0d9d93882880b5e196d2d16b6f59545eb87c6e0892373c02f",
            "ca-certificates": "8179442c9c582fd71fd3817a579bf5fe9503412c1e879d3ba4f0ed9a761e54f4",
            "dash": "407e6a95be9128c34946392fb57155ac6d6421032d53358de816a756197b7b43",
            "fontconfig-config": "80b090925c52aff3f4681b361c9823b041c42c57cca58b5baf2541bafc25fed9",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "libbz2-1.0": "6223fe0025beac129e9168be5a5ffc3655c23defd12de86b2f5dc52c3fd8d93b",
            "libc-bin": "0a951a8ce3d39e98ec12673bc03fe2b0c47578f3dea2dd71f85fdd1ee4eea290",
            "libc6": "0f22a04308eb83420c73b6e575cb96cff75ebba0be40d762a1ac4cd32daa81ab",
            "libcrypt1": "89907b6c1b613c430a53ef10909934b9ce5854a396cd173360495f6f8e5e7ea4",
            "libdb5.3": "c7559b42a507da72f2dcca86d70acca1349407416ea4c485b6fb36335879642a",
            "libexpat1": "d1b5c8750b1ba09cfe97e6dea4afb5ad73bb464d89544d790892562b49d9de13",
            "libffi7": "a3e7abc48b5b4614fd5f6d1d95019d52be092e40e9b8a05f670905c6abf6eac4",
            "libfontconfig1": "7abc3c68569ebd52e7e27ba1cd1e97004bf5a1641212acd821220a020b713c2f",
            "libfreetype6": "7e5f349e869ebf0b56ef1b5369b61cb830345fe6036bc47c1f59f5a8594a4eb3",
            "libgcc-s1": "9f6263bfc74626f39bc6c589c118688ad5989589342cb9ec5ca86c1b37f7b188",
            "libgcc1": "b4f6da2305a1f704f959150cbeab8d50df666952ce03870c76b8ec59882257ed",
            "libgomp1": "c63fe05da58b65e9420579d86a545ee2cbe1c14babcd8c73e0fc2156e9a78271",
            "libjpeg-turbo8": "591d8491efe4df0fdb1ea434ff011bc91681279f0a67f8c650fb23cfb503efdd",
            "liblcms2-2": "a829553cec6d8dfdc5fc22741aaedb180db878ff5de6cec246b97c1c7a2bfc9b",
            "liblzma5": "87cf41bd91a28e5cff15d2eda8015c6918ffd065d9274cf64e2b70fedc35d163",
            "libmpdec2": "5a5636b7342921e885a2327826f9331ab65e16f102567b397465ea04491bae4d",
            "libncursesw6": "7dfa81ae99d873cb3478ec577b5e20508e5b6965b36cd5a1b00495b3b93ad6ce",
            "libpng16-16": "95185d067fcdee1fcc51cb83490720fd2dcee450c55b9cfabcc940ed160879b5",
            "libpython3.8-minimal": "fc2b0de0220ca73d2f2540edb2577876484457ef8530002ddc8db6958f58912e",
            "libpython3.8-stdlib": "7b5bb222d4da4f7775b7a6a60bb68f13d554d7455c0f2b5ee588e53fde16a77a",
            "libreadline8": "d017810a798b617f750519537726bdfcd5bca28d3c56598558322250d9012b45",
            "libsqlite3-0": "c105f9e408ecff9a1225dc126a730c866a41d88fa20ed5ef55ea06dab6b5bf3f",
            "libssl1.1": "afe2880e0d5f82b2b9ce81dfcabe960c893b28384ea1bd28cdc0e996db3ffafc",
            "libstdc++6": "725dcd4fb79eb1e6afb3d9eba9086b7c9e30255bcbc7b6cef8e4bab9860683e4",
            "libtinfo6": "65ae83568c287ec310ffd601cc34c07df5e86c91f4ea55742ba16db029b607fa",
            "libuuid1": "e1989a341e3db85b02644cf74563ecee7280d91372738e85a844cc3453b1b6f8",
            "mime-support": "b4f73c76fa2abc24562466ec814eb9b6cfe5e030628187bb71b3da1422bda901",
            "netbase": "acd59678ca4791458468369724b72ccf981603308cb2959668c8487a954f9af4",
            "openssl": "58d6260f54f456d14e34e277b76c7c24700aec0a715e9be16ee8e745550a65c3",
            "python3-distutils": "08a0058ef8615e43ef1122907dbbc6aadbd132b2385e212f814f4ec9116efcfb",
            "python3.8-minimal": "18e700ca3969ecf688f85df597b93511fc5f7c86d9955ef64418e2fb135568e0",
            "readline-common": "38c3ac67e2dab4122a2f948f433c4cb5d5653d82b323f3ff30599797b7adee9f",
            "tzdata": "68056b19545c87987802e7f4e416a19bfece7257f274854c9790ae9dedcfeac6",
            "zlib1g": "abd976c6e1e28403bb02ef2122e420a46d48c5bf82d92a6bc595e247fca6d581",
        },
        sources = [
            "http://ports.ubuntu.com/ubuntu-ports focal main universe",
            "http://ports.ubuntu.com/ubuntu-ports focal-updates main universe",
            "http://ports.ubuntu.com/ubuntu-ports focal-backports main universe",
            "http://ports.ubuntu.com/ubuntu-ports focal-security main universe",
        ],
        urls = [
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
