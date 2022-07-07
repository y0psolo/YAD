"""This module defines Ubuntu Bionic dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_bionic_arm64():
    deb_packages(
        name = "ubuntu_bionic_arm64",
        arch = "arm64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_10.1ubuntu2.11_arm64.deb",
            "bash": "pool/main/b/bash/bash_4.4.18-2ubuntu1.3_arm64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20211016~18.04.1_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.28-1ubuntu1_arm64.deb",
            "dash": "pool/main/d/dash/dash_0.5.8-2.10_arm64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.12.6-0ubuntu2_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.6-5ubuntu1.2_arm64.deb",
            "less": "pool/main/l/less/less_487-0.1_arm64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.2.52-3build1_arm64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.110-5ubuntu0.1_arm64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.4.47-2build1_arm64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.6-8.1ubuntu0.2_arm64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.27-3ubuntu1.6_arm64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.27-3ubuntu1.6_arm64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28-13.1ubuntu1.1_arm64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.5-3ubuntu0.7_arm64.deb",
            "libffi6": "pool/main/libf/libffi/libffi6_3.2.1-8_arm64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.12.6-0ubuntu2_arm64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.8.1-2ubuntu2.1_arm64.deb",
            "libgcc1": "pool/main/g/gcc-8/libgcc1_8.4.0-1ubuntu1~18.04_arm64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3_arm64.deb",
            "libgomp1": "pool/main/g/gcc-8/libgomp1_8.4.0-1ubuntu1~18.04_arm64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.27-6_arm64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_arm64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-1ubuntu0.1_arm64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_0.0~r131-2ubuntu3.1_arm64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.2-1.3ubuntu0.1_arm64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-1ubuntu1_arm64.deb",
            "libncurses5": "pool/main/n/ncurses/libncurses5_6.1-1ubuntu1.18.04_arm64.deb",
            "libncursesw5": "pool/main/n/ncurses/libncursesw5_6.1-1ubuntu1.18.04_arm64.deb",
            "libpcre2-8-0": "pool/universe/p/pcre2/libpcre2-8-0_10.31-2_arm64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.34-1ubuntu0.18.04.2_arm64.deb",
            "libpython3.6-minimal": "pool/main/p/python3.6/libpython3.6-minimal_3.6.9-1~18.04ubuntu1.7_arm64.deb",
            "libpython3.6-stdlib": "pool/main/p/python3.6/libpython3.6-stdlib_3.6.9-1~18.04ubuntu1.7_arm64.deb",
            "libreadline5": "pool/main/r/readline5/libreadline5_5.2+dfsg-3build1_arm64.deb",
            "libreadline7": "pool/main/r/readline/libreadline7_7.0-3_arm64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_2.7-2build2_arm64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.22.0-1ubuntu0.5_arm64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.20_arm64.deb",
            "libstdc++6": "pool/main/g/gcc-8/libstdc++6_8.4.0-1ubuntu1~18.04_arm64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_237-3ubuntu10.53_arm64.deb",
            "libtinfo5": "pool/main/n/ncurses/libtinfo5_6.1-1ubuntu1.18.04_arm64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.31.1-0.4ubuntu3.7_arm64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.60ubuntu1_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.1-1ubuntu1.18.04_arm64.deb",
            "netbase": "pool/main/n/netbase/netbase_5.4_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1~18.04.20_arm64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.6.9-1~18.04_all.deb",
            "python3.6-minimal": "pool/main/p/python3.6/python3.6-minimal_3.6.9-1~18.04ubuntu1.7_arm64.deb",
            "readline-common": "pool/main/r/readline/readline-common_7.0-3_all.deb",
            "tar": "pool/main/t/tar/tar_1.29b-2ubuntu0.3_arm64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu0.18.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-0ubuntu2.1_arm64.deb",
        },
        packages_sha256 = {
            "base-files": "bb22b743421fcd6f53510b21f005014994a55109b99224b90043b370c682e833",
            "bash": "482ed9e721a80458f74723760e6c7e3dffb2b646d081dcdb12a6408cd9612d6b",
            "ca-certificates": "9ff3370ad8f32436cbd664be33f63ff5b517f5e4e93d465d94ace8fa67370592",
            "coreutils": "2972298f16f66882b816a707cae5f85b26c74d1c77cbaa96183728e0144b26fb",
            "dash": "35b0c7df45124852ed5980db1d2c5aea91b7f876e61e066a5bbd80bac79aa84b",
            "fontconfig-config": "ba4dbb3b4c173c1d97b6112d736da25d2dc7fab0c7408eb3cb49207f43dd5630",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "gzip": "ad5159b131ad3d1c59d1fac48502f1cf1e3493351e0c4c79e327e9a30b8a19c3",
            "less": "0a92cd179681201de75666c1569355fc57dc46416bb499af67e5d3addc4c839f",
            "libacl1": "208e1331e0c1a5189495cd1bc213e1bde11b0ae8a639f8eb63cbf7a7beb987da",
            "libaio1": "a85871d7800d03b124598080fd1a1ca62ff5f88585b11d6e5886594c3e6099a4",
            "libattr1": "50243c012ce8a1426a7f96e4abf2944dfac3a1ae231ee171597cd3f9a7cfa937",
            "libbz2-1.0": "81c8aab6b536404e7f8662a536765279d9cbb6b17db8988131421a946cc47b7f",
            "libc-bin": "ea6dd0329107fb2b67fe86cdc188eadd07a72cf0709fb1e7eb5a05ed0ef7a5f6",
            "libc6": "0b4348723ff763cb5d256283a362fb1f4db0658df9331c19b29c63a94cbb00dc",
            "libdb5.3": "f4ef7e43f7d8c0ff7dbcdcf66bf840f4123885d08c769d6e1015e0294cc929f7",
            "libexpat1": "bba717ca1b0ac01725ccb08e05610d104e0098fd82aa4897bf9ab1807aebf2ae",
            "libffi6": "d0f8d2b7613167317ec4f9bf65125a2e13c5f357e5acb5cc1fa9ed488c3c88b0",
            "libfontconfig1": "de5942257801f0d344cc55c95cc190aae4e434b3d8d0d77a029f210da755fdc3",
            "libfreetype6": "b40ffafae2249ae503e2376f04bdde772a4d0ae649f20e688f3322c870104831",
            "libgcc1": "6e5afc6293e54fd4a11136b46dccf24c55989af7eccff9ecb3ba5a0b2069b3be",
            "libgcrypt20": "4c3e44879c76b03ea573a3f20e364581dba88761456d8cac0042dfa5469c5538",
            "libgomp1": "21a3008f99e165557c8d9e697a6fa2b8792e66243b294d7565dcca9c3ec0da82",
            "libgpg-error0": "3d59ccb34f992739043e544c45c2c7c026088485169bd1ed7384ff4503af8801",
            "libjpeg-turbo8": "7bdd1f6578bae5ecf09d51d36c9e9247802b4588963dd3ea8709711466031f4b",
            "liblcms2-2": "a63ee3a7d032e59ca775edaff46e21bc665a03e0c1dd94349d2138f3433e8379",
            "liblz4-1": "7842d9d20b1f2d8c1db8c5c516c68a208eeb6d2a532465615dded9f890ac0231",
            "liblzma5": "d02fc96ab963f97bab55c27aef83d51c025840a0e02a16ad1cf6ab70f20e20c9",
            "libmpdec2": "cd260412f7d86bb845ddf28840ad1d5c12257a98c0b227a11222d17e9d6daf46",
            "libncurses5": "3e7852b0494ea6015e7b816e2840bfc76cd91cacd7e57d36f2c03febcc7a91d4",
            "libncursesw5": "7fc183b6c8dbaf49c42f0618a3e8001b153e78b77207870b5a5b00b0134032a5",
            "libpcre2-8-0": "4eea46ce8904e80fd52a6189355b7cc58c5e0b7614390ef36c408252a6d332a0",
            "libpng16-16": "a759b2cc09e30dc943f78e7a2bdd2dd89605775478f99c6bba5299ad929dcd5a",
            "libpython3.6-minimal": "9c2efe4a9b76838c588d09a7b9f28aeb2099d4ef42b5b84933fb281b1042deb0",
            "libpython3.6-stdlib": "d754b75edac661ef8966e5bb45f5c99828307cafefab777c48e7b7933c6f32a2",
            "libreadline5": "931c3010a9661d13a7f19ea64bd25d6a7035013aaf7df9b83e4f27b3da95d407",
            "libreadline7": "59cd3f326ace13f6b090d20f1e9738caab16261d1c86e0850234288dcbb885bd",
            "libselinux1": "36d1f6c896c0f5f16aef380e56531261063c75a37b51b5c39bb62b06293b4d37",
            "libsqlite3-0": "ec6cf58b35585ecbe63d52e529e6a9f4ce37aa6a2a3e68cab8211a31f69d0096",
            "libssl1.1": "b89e8281f7314dbb257f78c39cb1542572b17f6fa57d9c742abdcc3528ac4721",
            "libstdc++6": "ef673418b89e9c0b029e2fea9416847745e1a6cd0925169e3ef7682a36d075d1",
            "libsystemd0": "15271d7f463a627d42adfa22d30a4802bd621995d6ae7eae5f0f6e4b593dbd5f",
            "libtinfo5": "e5421b5aaff5c0bd43319c1d8667b10b666089c0b75fae53e45de17c387b69ae",
            "libuuid1": "c2e834196638a2f71a9d71f451f35fa99667b9201d539b21063ac6da30dc74a8",
            "mime-support": "98e05aa03538c5f182ed14cbb59cfe64b30592d77e602abd2442a9f1c72532b3",
            "ncurses-bin": "5b5be97134b09815b66e9cef7eabc9b6208179c3206fc927413459ffb28b1ccc",
            "netbase": "cbda1c8035cd1fe0b1fb09b456892c0bb868657bfe02da82f0b16207d391145e",
            "openssl": "c17c5cf731507a60b058b2fef84bc26b4e96c88f3221cbe559c3068dab1a97a4",
            "python3-distutils": "f836b1e22923fa175c1968b9dbd916ae5639c9250e21bcfb88f9df2dc289f65c",
            "python3.6-minimal": "af8a67bf3702188c825909cde0b51d3def3ce2a4844fe630ffaac0715e013dc4",
            "readline-common": "84cb3642c82114496d2fc17011db13655bd661cf4641098c03c168ddde367908",
            "tar": "c3e609428d5539670b2063e7fa3fd2df1bff90504016b9fc4e3a9b27231669e1",
            "tzdata": "ad6ea19c1e3c3318bb94aa65b387ae235e72f031bd8898a1f6fc7b4c1373d483",
            "zlib1g": "6dce4b588985efa9d295029c6706aea672df9d16fc60f8d8f862b95329b33a51",
        },
        sources = [
            "http://ports.ubuntu.com/ubuntu-ports bionic main universe",
            "http://ports.ubuntu.com/ubuntu-ports bionic-updates main universe",
            "http://ports.ubuntu.com/ubuntu-ports bionic-backports main universe",
            "http://ports.ubuntu.com/ubuntu-ports bionic-security main universe",
        ],
        urls = [
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
