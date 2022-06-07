"""This module defines Ubuntu jammy dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_jammy_arm64():
    deb_packages(
        name = "ubuntu_jammy_arm64",
        arch = "arm64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_12ubuntu4.1_arm64.deb",
            "bash": "pool/main/b/bash/bash_5.1-6ubuntu1_arm64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20211016_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1_arm64.deb",
            "dash": "pool/main/d/dash/dash_0.5.11+git20210903+057cd650a4ed-3build1_arm64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-4.2ubuntu5_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-2build1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.10-4ubuntu4_arm64.deb",
            "less": "pool/main/l/less/less_590-1build1_arm64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.3.1-1_arm64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.112-13build1_arm64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.5.1-1build1_arm64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-5build1_arm64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.35-0ubuntu3_arm64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.35-0ubuntu3_arm64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.27-1_arm64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.8ubuntu3_arm64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.4.7-1_arm64.deb",
            "libffi7": "pool/universe/libf/libffi7/libffi7_3.3-5ubuntu1_arm64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-4.2ubuntu5_arm64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.11.1+dfsg-1build1_arm64.deb",
            "libgcc-s1": "pool/main/g/gcc-12/libgcc-s1_12-20220319-1ubuntu1_arm64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3_arm64.deb",
            "libgomp1": "pool/main/g/gcc-12/libgomp1_12-20220319-1ubuntu1_arm64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.43-3_arm64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.1.2-0ubuntu1_arm64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.12~rc1-2build2_arm64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_1.9.3-2build2_arm64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.5-2ubuntu1_arm64.deb",
            "libmpdec3": "pool/main/m/mpdecimal/libmpdec3_2.5.1-2build2_arm64.deb",
            "libncurses6": "pool/main/n/ncurses/libncurses6_6.3-2_arm64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.3-2_arm64.deb",
            "libpcre2-8-0": "pool/main/p/pcre2/libpcre2-8-0_10.39-3build1_arm64.deb",
            "libpmem1": "pool/main/p/pmdk/libpmem1_1.11.1-3build1_arm64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-3build5_arm64.deb",
            "libpython3.10-minimal": "pool/main/p/python3.10/libpython3.10-minimal_3.10.4-3_arm64.deb",
            "libpython3.10-stdlib": "pool/main/p/python3.10/libpython3.10-stdlib_3.10.4-3_arm64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.1.2-1_arm64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_3.3-1build2_arm64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.37.2-2_arm64.deb",
            "libssl3": "pool/main/o/openssl/libssl3_3.0.2-0ubuntu1.2_arm64.deb",
            "libstdc++6": "pool/main/g/gcc-12/libstdc++6_12-20220319-1ubuntu1_arm64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_249.11-0ubuntu3.1_arm64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.3-2_arm64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.37.2-4ubuntu3_arm64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.66_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.3-2_arm64.deb",
            "netbase": "pool/main/n/netbase/netbase_6.3_all.deb",
            "openssl": "pool/main/o/openssl/openssl_3.0.2-0ubuntu1.2_arm64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.10.4-0ubuntu1_all.deb",
            "python3.10-minimal": "pool/main/p/python3.10/python3.10-minimal_3.10.4-3_arm64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.1.2-1_all.deb",
            "tar": "pool/main/t/tar/tar_1.34+dfsg-1build3_arm64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu1_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu9_arm64.deb",
        },
        packages_sha256 = {
            "base-files": "b6c77e904346a98489231f8a913830fa6f8b21d951b66f5888fa6e5d40306fed",
            "bash": "a12687dbb1c51a0228da3a67548ae6a956c2447d46051006a5a8fa5958f01dbb",
            "ca-certificates": "1eb968fb717640d4661f777a3e1ffb4c4fef956bcd24e1084ff1a7e5ee2f4a03",
            "coreutils": "9191f297b303511c2a49fec75410e163ebe77721a271d1328425d6f25b4abd55",
            "dash": "f0fbe9c11fc95291a6f9db517f94fec56a6534461d1d70c0da402ac2e89d8389",
            "fontconfig-config": "c40405fa036d1732e269fabd4c5b40076b973a226da1df6921d4b7e7a1e2ff72",
            "fonts-dejavu-core": "c33fe8bf33b50d99d6448804a090123b1bbba37d7a8703c630695676d110a47d",
            "gzip": "d0fe3e3f4539c8f81b7b12f825c87fbce7a4be100def8e6b743d823aa6f84cb2",
            "less": "47d9d1bf67203feb67275e61c5e9584ce690bd341ca00c107643435b7ad8c216",
            "libacl1": "328e91b2d6e8ee44ad669fc7276b74f208bc781baf1ecdd7dbf5f092f8b41712",
            "libaio1": "1bcb0d9c08aa35298741b1c68904844e9b71ebf64f15b3e05e6ec6f3fa01d93b",
            "libattr1": "31e67357107cfbbc56ddcce75aacc119c1ab4e41c7f769e4818a185f88aef207",
            "libbz2-1.0": "30fe3f2d662bb1c87a4b77e5b8f17a67dfcadfec319d0da2ece6cba98f9f8cb5",
            "libc-bin": "7a192ee1572c98e15c385c96854fa8c0a674577311325fc7520859fbc94f73c8",
            "libc6": "b1206b51690a810efc701e1d311e0ac5fd9a9f0f8e216585362512d805d261af",
            "libcrypt1": "fb5f8d59de95bbb118a635e83e2a92077e13c6d297980dae3119df057bf88111",
            "libdb5.3": "e5b672aeaca690b3b7ee97b03dbc07ddb49be7b6ea0a770fa6707666ca1cef59",
            "libexpat1": "7aab56ea57441c814123cc78e64dce0de8e14e95d00371e1e0acfcc6e0c9ee86",
            "libffi7": "ff10c3e93fae17cb1a5201a3df2e4315bf35849177fa2bcd40b2f5590d76f40c",
            "libfontconfig1": "4acdc48678549bfd1b7b0cc3b976d754fc08dea0643ca6806ffc913fb0e9ade4",
            "libfreetype6": "0a2da2b583bb461adcc4c1b5d1dff3c3f1156ffd302f5cfd873656a6c8ae3853",
            "libgcc-s1": "b6e9a39b0ef3302053734e3a5e52ef12151566bb42d625feab7a502b3071c13b",
            "libgcrypt20": "874132c1265159f0914848390eca9597bd79b9d57cd157a8543264650290e808",
            "libgomp1": "c1719335234ccdef7558e97b37b1f6baf069911ce2f26d2789336051a7c929cd",
            "libgpg-error0": "ffa9029cdeb2786e0db1f614f3d2205f75f466a66b25e22aa89ecdf814491875",
            "libjpeg-turbo8": "1c47447261097e6a2105f4ae6f0bf2c7b1e8c6b8209c8ea40286c69c20f43818",
            "liblcms2-2": "e34426e78f9835b5231aaa582843bd8b9c83afa092630b6bc986f015e5754b83",
            "liblz4-1": "3e2274893e0963c758f0d18ba80d033736909373247a7deb211e9ff590a09133",
            "liblzma5": "21f64a20db61954e19ecdd2641d9aace2617b2bf3d55267184e2405d4bd65fdb",
            "libmpdec3": "e5dcef803ee13a0ef22d5970e7f99e976760d955474b73fd5360b24995a281ee",
            "libncurses6": "5a3c8f2e2f86727e625a66dd622b9d168da48ad72f1d93d9231440761ef51786",
            "libncursesw6": "c0f27d325d4b70a67915c6709ae69aeb6322628adc5c79977f303d03dc88d7de",
            "libpcre2-8-0": "ea4b84517ececbbafb3745a38e5af8af14ad9c993664fd07617c7d3a0e135cae",
            "libpmem1": "34c9904ec7246fe766ffcd67747aba74dd346621f4f60eb50ac0f8e3da710c28",
            "libpng16-16": "4cca4b691f8de97525297f2144bb022d906ad405072bed232bf18531a28548ac",
            "libpython3.10-minimal": "d4389192c5f1f100f0baaee3d25e21bdbeacc677188e0ab572619355b44f439d",
            "libpython3.10-stdlib": "518287a6c474e53aa81df3d00fb7c4ec6128a7bb6421b0916d8a0334b88bcd8f",
            "libreadline8": "54291f2dd185d3a759227b31b7de4269e495a084fdad89e24a9cc4d0d20888a7",
            "libselinux1": "3a0726b2174a40fa28e74712867aa6e40d3d725543e8f668af9e9e59a28c817c",
            "libsqlite3-0": "40bda907175e64ef86c85fe47effed8e3dae83804b4a7ae272ad4e01b4813438",
            "libssl3": "02e7e233938ec53527bd30ff1f0a1c6daaf819ddfca939eb3c522c56de924436",
            "libstdc++6": "d9903f1cf4e3c0a74e0bd2f7c65e673c104833cfaaab370d3f2114ffd06728f3",
            "libsystemd0": "11cc5132f381d16f53d9173de312c9dd7cd4f274a37faf779745a3f9aff2ee10",
            "libtinfo6": "a6411b7fe99672000a5ee51495cbee0d702d04a8bac341c973fbb82d61babc01",
            "libuuid1": "6b98796f3d86375efdc0298702861f44effa3342d6892edbc0a79a90b30896d0",
            "mime-support": "70bdf961f080ce5d8f19ad0d2729e88f86923982fa4c9ae7ed8e6499bad6af31",
            "ncurses-bin": "f4268641cebd580e23ddfa041bcdde5017948ecb18d387191207b2c6c3167f08",
            "netbase": "480bbd894069e5da7a25f070ea0ebaded7f64bdd34a119558cc2fe7137762a79",
            "openssl": "0015d17030cc6efff941340bd51e6afa3f695e797fa3236e844a1c75d2a6eec9",
            "python3-distutils": "5564aab3ba550e0daf7bb4d045e8bd7c7de6ed82eb6bc529e5dbc6e19fa7ebac",
            "python3.10-minimal": "a5d07966dfacc1cdb2ec514fcbdd92dea72f3979e3209effea4956e3200d44ae",
            "readline-common": "a78d02935f6107a12d3d349c25ce4f92fcdcbf6b65e37f1f5a13a9054b5b9e94",
            "tar": "328da7dfc33aafcd410c472410070abd31c9e7acd291cac0f6e03a8396746f33",
            "tzdata": "1fca96a6f5173fa7e448c85b1daae713a7a5e8d2401d189616a20d0d7a807c1d",
            "zlib1g": "597820b01a8b019d04c9f9db2cad80d9d0ed93d39770066bd833e362c526b345",
        },
        sources = [
            "http://ports.ubuntu.com/ubuntu-ports jammy main universe",
            "http://ports.ubuntu.com/ubuntu-ports jammy-updates main universe",
            "http://ports.ubuntu.com/ubuntu-ports jammy-backports main universe",
            "http://ports.ubuntu.com/ubuntu-ports jammy-security main universe",
        ],
        urls = [
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "http://ports.ubuntu.com/ubuntu-ports/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )