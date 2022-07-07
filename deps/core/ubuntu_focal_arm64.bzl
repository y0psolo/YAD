"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_focal_arm64():
    deb_packages(
        name = "ubuntu_focal_arm64",
        arch = "arm64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_11ubuntu5.5_arm64.deb",
            "bash": "pool/main/b/bash/bash_5.0-6ubuntu1.2_arm64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20211016~20.04.1_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.30-3ubuntu2_arm64.deb",
            "dash": "pool/main/d/dash/dash_0.5.10.2-6_arm64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-2ubuntu3_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.10-0ubuntu4.1_arm64.deb",
            "less": "pool/main/l/less/less_551-1ubuntu0.1_arm64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.2.53-6_arm64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.112-5_arm64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.4.48-5_arm64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-2_arm64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.31-0ubuntu9.9_arm64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.31-0ubuntu9.9_arm64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.10-10ubuntu4_arm64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.6ubuntu2_arm64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.9-1ubuntu0.4_arm64.deb",
            "libffi7": "pool/main/libf/libffi/libffi7_3.3-4_arm64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-2ubuntu3_arm64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.10.1-2ubuntu0.1_arm64.deb",
            "libgcc-s1": "pool/main/g/gcc-10/libgcc-s1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libgcc1": "pool/universe/g/gcc-10/libgcc1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.8.5-5ubuntu1.1_arm64.deb",
            "libgomp1": "pool/main/g/gcc-10/libgomp1_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.37-1_arm64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1.20.04.1_arm64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-4_arm64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_1.9.2-2ubuntu0.20.04.1_arm64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.4-1ubuntu1.1_arm64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-3_arm64.deb",
            "libncurses6": "pool/main/n/ncurses/libncurses6_6.2-0ubuntu2_arm64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.2-0ubuntu2_arm64.deb",
            "libpcre2-8-0": "pool/main/p/pcre2/libpcre2-8-0_10.34-7_arm64.deb",
            "libpmem1": "pool/main/p/pmdk/libpmem1_1.8-1ubuntu1_arm64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-2_arm64.deb",
            "libpython3.9-minimal": "pool/universe/p/python3.9/libpython3.9-minimal_3.9.5-3ubuntu0~20.04.1_arm64.deb",
            "libpython3.9-stdlib": "pool/universe/p/python3.9/libpython3.9-stdlib_3.9.5-3ubuntu0~20.04.1_arm64.deb",
            "libreadline5": "pool/main/r/readline5/libreadline5_5.2+dfsg-3build3_arm64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.0-4_arm64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_3.0-1build2_arm64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.31.1-4ubuntu0.3_arm64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_arm64.deb",
            "libstdc++6": "pool/main/g/gcc-10/libstdc++6_10.3.0-1ubuntu1~20.04_arm64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_245.4-4ubuntu3.17_arm64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.2-0ubuntu2_arm64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.34-0.1ubuntu9.3_arm64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.64ubuntu1_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.2-0ubuntu2_arm64.deb",
            "netbase": "pool/main/n/netbase/netbase_6.1_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.16_arm64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.8.10-0ubuntu1~20.04_all.deb",
            "python3.9-minimal": "pool/universe/p/python3.9/python3.9-minimal_3.9.5-3ubuntu0~20.04.1_arm64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.0-4_all.deb",
            "tar": "pool/main/t/tar/tar_1.30+dfsg-7ubuntu0.20.04.2_arm64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu0.20.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu1.3_arm64.deb",
        },
        packages_sha256 = {
            "base-files": "1cb89161f0d00067e33364f03f89c57269ea9da46ab7ffe71473811f1fb6a652",
            "bash": "f10720b7ac7571f5b9e42a183283e9c901b4f40b8969ab8f5cb20ded35c4bb3f",
            "ca-certificates": "5a7b922d35e328d7d7765a353f1bbc9e14c8476e67606b605c6d0b1186037571",
            "coreutils": "c80c4af2918f4131292b6d865d35bff225142f5e192f161117670e802035a047",
            "dash": "407e6a95be9128c34946392fb57155ac6d6421032d53358de816a756197b7b43",
            "fontconfig-config": "80b090925c52aff3f4681b361c9823b041c42c57cca58b5baf2541bafc25fed9",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "gzip": "48523ad7f3fc64fa108548f6b06897547db9ca3fa71d43a49fe4b87cf6c2af65",
            "less": "53b937a940ea3fad4f50fa620b5444735f024e78e9047ed9f9c874d681bf11b6",
            "libacl1": "218a0cc187a63c95ae3efb886e200f5dab1a9a3600e0e3781953c08acc61eff2",
            "libaio1": "93c18caef30a0519bbb9706bc974b77350a580dfb45c559d52164810c8e1b686",
            "libattr1": "5ef640b8b2c4824eaf564a07f1c39f68ec31334cda474507f427aeb55ea8d183",
            "libbz2-1.0": "6223fe0025beac129e9168be5a5ffc3655c23defd12de86b2f5dc52c3fd8d93b",
            "libc-bin": "608c1e79059cfcaa75ffafe512e9d1bdadc20551c03581af30022b41dba31e09",
            "libc6": "42a89e23ae9c5a906da7b337d3e7860cea7c5c31989afb3d12a0a3eb76d57fec",
            "libcrypt1": "89907b6c1b613c430a53ef10909934b9ce5854a396cd173360495f6f8e5e7ea4",
            "libdb5.3": "c7559b42a507da72f2dcca86d70acca1349407416ea4c485b6fb36335879642a",
            "libexpat1": "b4c9cdcb9a24733d60faa9562486ff759b3efaab4093da7ab6bf853c584eeb7f",
            "libffi7": "a3e7abc48b5b4614fd5f6d1d95019d52be092e40e9b8a05f670905c6abf6eac4",
            "libfontconfig1": "7abc3c68569ebd52e7e27ba1cd1e97004bf5a1641212acd821220a020b713c2f",
            "libfreetype6": "7e5f349e869ebf0b56ef1b5369b61cb830345fe6036bc47c1f59f5a8594a4eb3",
            "libgcc-s1": "9f6263bfc74626f39bc6c589c118688ad5989589342cb9ec5ca86c1b37f7b188",
            "libgcc1": "b4f6da2305a1f704f959150cbeab8d50df666952ce03870c76b8ec59882257ed",
            "libgcrypt20": "30960de1028522bb10bf3ae16d32967cb2ab9a479a26ba2c1d63d828300696d8",
            "libgomp1": "c63fe05da58b65e9420579d86a545ee2cbe1c14babcd8c73e0fc2156e9a78271",
            "libgpg-error0": "3b1364e9125ec484cfc3dd4441b836e111cf99e86274ca5e24a82d6c8343f15f",
            "libjpeg-turbo8": "591d8491efe4df0fdb1ea434ff011bc91681279f0a67f8c650fb23cfb503efdd",
            "liblcms2-2": "a829553cec6d8dfdc5fc22741aaedb180db878ff5de6cec246b97c1c7a2bfc9b",
            "liblz4-1": "d41c5b06e7a79afae062523222029a0cc126d3d9d0eecd5f363bfec06b4d7eeb",
            "liblzma5": "fa5c6beb4390bd9dcca70abbd507573f3aaf637581eb45131ccc5dd147a484cd",
            "libmpdec2": "5a5636b7342921e885a2327826f9331ab65e16f102567b397465ea04491bae4d",
            "libncurses6": "83b26187127d9c4eee113d4cb2264c684d7e24e5adcdcfed6b15d55e134b0b74",
            "libncursesw6": "7dfa81ae99d873cb3478ec577b5e20508e5b6965b36cd5a1b00495b3b93ad6ce",
            "libpcre2-8-0": "741444da6d973b2dcde1c700b0c85cd4a7d308dd016f226e80a007d10964b3de",
            "libpmem1": "b23801d57d72f2ac07f145180aa4429820316a888763d40cfe6cab64274b757b",
            "libpng16-16": "95185d067fcdee1fcc51cb83490720fd2dcee450c55b9cfabcc940ed160879b5",
            "libpython3.9-minimal": "2f33406cbce9585679ce369f371c7302070812d8b1e780b61362cb443dec58ae",
            "libpython3.9-stdlib": "fb689cba24a4da6142743fc79265f4001b3e686023466538a1a976034cbaf1d6",
            "libreadline5": "08ea67537f84b21edbc78b7cdae7a6b8c02a4306af80ff303030ce53836a2d8b",
            "libreadline8": "d017810a798b617f750519537726bdfcd5bca28d3c56598558322250d9012b45",
            "libselinux1": "91006c0db207cb6df4205db9c5a91309db58e7f4eef649093aa89def780e0e66",
            "libsqlite3-0": "efa286d45e4aa3abdb989bc8936ec4a9789c5157d7af6d8156e352f66195ee24",
            "libssl1.1": "2912631da02be7683b277e0cb7d2b05dad5b538260331520d0ba2d298c161a04",
            "libstdc++6": "725dcd4fb79eb1e6afb3d9eba9086b7c9e30255bcbc7b6cef8e4bab9860683e4",
            "libsystemd0": "9bea2a9df60129eb214f33fd3f398c335e98670d2931101c988ab7969833f957",
            "libtinfo6": "65ae83568c287ec310ffd601cc34c07df5e86c91f4ea55742ba16db029b607fa",
            "libuuid1": "a0b7a632690ff8343fd8f0352ec89a378bc625051d9623b82955e2f246ed24e4",
            "mime-support": "b4f73c76fa2abc24562466ec814eb9b6cfe5e030628187bb71b3da1422bda901",
            "ncurses-bin": "9fd4628481fda4001d580800a4eb6a23cee59aaa6f3343d9ae5d9fa0d67621e2",
            "netbase": "acd59678ca4791458468369724b72ccf981603308cb2959668c8487a954f9af4",
            "openssl": "1096be6f4ee218a572d1a23b84299bf62ea251b1e43f3f54173206d35d01c473",
            "python3-distutils": "08a0058ef8615e43ef1122907dbbc6aadbd132b2385e212f814f4ec9116efcfb",
            "python3.9-minimal": "25a4db479a38bbf2827e1e90f2568d0936f818ef40b62a1230acad13d11851de",
            "readline-common": "38c3ac67e2dab4122a2f948f433c4cb5d5653d82b323f3ff30599797b7adee9f",
            "tar": "1c527019a01126cd788d16b19e78ccb864ed83734150249901b07f0e4dfa910e",
            "tzdata": "572f3754bda8487bfe7c1a9372cce185b8609f0dcbbd44f4a4813acd8c3d06c6",
            "zlib1g": "78df924cdc53ce61ff02211be2a3cef1627984abf20744220066c76786bcc3a5",
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
