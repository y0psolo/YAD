"""This module defines Ubuntu Focal dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_focal_amd64():
    deb_packages(
        name = "ubuntu_focal_amd64",
        arch = "amd64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_11ubuntu5.5_amd64.deb",
            "bash": "pool/main/b/bash/bash_5.0-6ubuntu1.2_amd64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20211016~20.04.1_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.30-3ubuntu2_amd64.deb",
            "dash": "pool/main/d/dash/dash_0.5.10.2-6_amd64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-2ubuntu3_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.10-0ubuntu4.1_amd64.deb",
            "less": "pool/main/l/less/less_551-1ubuntu0.1_amd64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.2.53-6_amd64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.112-5_amd64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.4.48-5_amd64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-2_amd64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.31-0ubuntu9.9_amd64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.31-0ubuntu9.9_amd64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.10-10ubuntu4_amd64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.6ubuntu2_amd64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.9-1ubuntu0.4_amd64.deb",
            "libffi7": "pool/main/libf/libffi/libffi7_3.3-4_amd64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-2ubuntu3_amd64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.10.1-2ubuntu0.1_amd64.deb",
            "libgcc-s1": "pool/main/g/gcc-10/libgcc-s1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libgcc1": "pool/universe/g/gcc-10/libgcc1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.8.5-5ubuntu1.1_amd64.deb",
            "libgomp1": "pool/main/g/gcc-10/libgomp1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.37-1_amd64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1.20.04.1_amd64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-4_amd64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_1.9.2-2ubuntu0.20.04.1_amd64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.4-1ubuntu1.1_amd64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-3_amd64.deb",
            "libncurses6": "pool/main/n/ncurses/libncurses6_6.2-0ubuntu2_amd64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.2-0ubuntu2_amd64.deb",
            "libpcre2-8-0": "pool/main/p/pcre2/libpcre2-8-0_10.34-7_amd64.deb",
            "libpmem1": "pool/main/p/pmdk/libpmem1_1.8-1ubuntu1_amd64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-2_amd64.deb",
            "libpython3.9-minimal": "pool/universe/p/python3.9/libpython3.9-minimal_3.9.5-3ubuntu0~20.04.1_amd64.deb",
            "libpython3.9-stdlib": "pool/universe/p/python3.9/libpython3.9-stdlib_3.9.5-3ubuntu0~20.04.1_amd64.deb",
            "libreadline5": "pool/main/r/readline5/libreadline5_5.2+dfsg-3build3_amd64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.0-4_amd64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_3.0-1build2_amd64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.31.1-4ubuntu0.3_amd64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb",
            "libstdc++6": "pool/main/g/gcc-10/libstdc++6_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_245.4-4ubuntu3.17_amd64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.2-0ubuntu2_amd64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.34-0.1ubuntu9.3_amd64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.64ubuntu1_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.2-0ubuntu2_amd64.deb",
            "netbase": "pool/main/n/netbase/netbase_6.1_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.16_amd64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.8.10-0ubuntu1~20.04_all.deb",
            "python3.9-minimal": "pool/universe/p/python3.9/python3.9-minimal_3.9.5-3ubuntu0~20.04.1_amd64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.0-4_all.deb",
            "tar": "pool/main/t/tar/tar_1.30+dfsg-7ubuntu0.20.04.2_amd64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu0.20.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu1.3_amd64.deb",
        },
        packages_sha256 = {
            "base-files": "15256c312ec50bf77dd901a93b2e155230f250ef2f47fb9ca97eeb0e59796603",
            "bash": "58e03b3be46c54eeb22ede348baf2b8251a6f3e0ce4f0bf0191c516f90f1f283",
            "ca-certificates": "5a7b922d35e328d7d7765a353f1bbc9e14c8476e67606b605c6d0b1186037571",
            "coreutils": "99aa50af84de1737735f2f51e570d60f5842aa1d4a3129527906e7ffda368853",
            "dash": "12607b28478fb815952f47c53394b57405244e675ff3220a982a0b8c7d826b0c",
            "fontconfig-config": "80b090925c52aff3f4681b361c9823b041c42c57cca58b5baf2541bafc25fed9",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "gzip": "218a588ffe646e69dcde814634cb85bcaad1486da4fa3060937ab12ef04fed9c",
            "less": "fedc6f0fc9aff05ca7977aedf8585e042f6c55db14b937c3b33e234b56e36ae8",
            "libacl1": "9fa9cc2f8eeccd8d29efcb998111b082432c65de75ca60ad9c333289bb3bb765",
            "libaio1": "0e50c3258f03d6eee671d7106120b450a6f3a546fe343d57bbfe33257d4e3b48",
            "libattr1": "d916bb73d9a160ccaa48d997c823af528cb6b4174c5234c744b40ae5aa85ce98",
            "libbz2-1.0": "f3632ec38402ca0f9c61a6854469f1a0eba9389d3f73827b466033c3d5bbec69",
            "libc-bin": "b7751e6c7797c1254665208423b9acfa9916e6cad0281d8e1fe4f02cfdd25511",
            "libc6": "28c00212f617931dec8f7091708319cd448263dfd65b3dd5a647a988c0602fcd",
            "libcrypt1": "231b4dbbe5865775f118cfa61394f1e16fa7102b6953a327e672499a20876d73",
            "libdb5.3": "330775026b5e31340387fb58e12e40e241ca34cbbb6c0c28331bd83cb47c3656",
            "libexpat1": "b2e7b911ef9aecd368b05fdd10c4d971008f6a78da26ff41a5c889e03e73352e",
            "libffi7": "4584aa8fef1bf5086168ce2f7078cd2ebd78fdc4cc0d86d958d795d4e0b0f50d",
            "libfontconfig1": "7ca5523936a9b8e42f60c0f01c232145809387e5680b05c7bce0bea31844a522",
            "libfreetype6": "02d17bff6ac1faa9832b946f2b3b18a8a563b786b9d865b9cf774096cae11c80",
            "libgcc-s1": "32627db91332d367137a5af725fe677c2e44d3bd0b03159948e3782fa20afaa4",
            "libgcc1": "a181f4e192feb86227c32068b68cdaf8f8e00b434eb8d774a2ced2568627c120",
            "libgcrypt20": "f040f801e2cced9bd82e484c23678cb9b464d04974a9cf4cf25fc9ad09d9e90d",
            "libgomp1": "126c97f6e43cedf656fccc096f45dfb236ad1ce6ef41b8e0c57df8229b97c8f0",
            "libgpg-error0": "4744163850851f60080a8b0fdf3dd3258d93114bd83f8024414737a2826da7fe",
            "libjpeg-turbo8": "4f5cc80a703df5baefce25f5bd93614acb7771571c502cee923754bf8bb59e89",
            "liblcms2-2": "1df587b2223d21382fb1c91c05cc5092ae0175d335cc4188fb3c5354ec5e65e6",
            "liblz4-1": "a9b706941eb8e2a0012869dbe63c7337fc9629aaf919563f63e92baa2a3a7c18",
            "liblzma5": "f545d34c86119802fbae869a09e1077a714e12a01ef6a3ef67fdc745e5db311d",
            "libmpdec2": "4e624c616de0fa1dea3571291b05b3d6fe5f75d8667b278f9503b1eca36ffbcf",
            "libncurses6": "dc32b8b54a84c5ab7c6bad729d2799c455f826e558de361d9b601eb1f935c700",
            "libncursesw6": "7dd1a78af0cbf71a7bbf263e0e829e7e5dd861b6b02c58bc9831f8aebafefe23",
            "libpcre2-8-0": "a6b9aaf8d298da836bae2354a864fe0caba4c1230b3cc9f47b7d56100d7e29d4",
            "libpmem1": "809230a2362e232f80df5c81cf6c02c6fe8798c25a7b4e5a1ff572f519bcf974",
            "libpng16-16": "6c512b7c67eafe0302026fa719f924bb77b39c57e1845a3d8b81cfd607c3b22c",
            "libpython3.9-minimal": "2015bc5d7dec2e14dac9275207c72e118aa483007b69866a9fde589baa430030",
            "libpython3.9-stdlib": "8a03b7bb0fe85c4c25c148d257c7a43baa4f5ec711eb4895216f1922ccae14d1",
            "libreadline5": "e49389b39de229ef056c507eb42c5c80b39d68142ce9221cb344c04456fbb77a",
            "libreadline8": "5c0e982098eeb1b69a1360f4dc20553397d0a41240f3b2fc2812ee3f02274a82",
            "libselinux1": "1b8674b6f9e62fbae768d9ffbd686955d08db889ee4107d15ae02d1ec033cc7b",
            "libsqlite3-0": "7a3565b89da55f6fbb9c30f4f5b3fd9a68597b439e9911191954672c55faf7bc",
            "libssl1.1": "cfdc14ab5603ec4f4810417ef6b53c1508f12c4c8df24e02762c3ade0f0de72b",
            "libstdc++6": "376ade22283228e3bfe8b2571976bda192575a66d0d4bc55190ebe6758d1a5c2",
            "libsystemd0": "4a2925a9a31995ad5ae9438cd56a7a5ed52172d825796517a1c3afc4c64af368",
            "libtinfo6": "87f281a8d5e56dbb259c7ef9f9dead8c52c73982c7bd65b267a71dfc700875fb",
            "libuuid1": "6039a0c7103252702b88c8998263a1214962e95399f1ea561805273371e00394",
            "mime-support": "b4f73c76fa2abc24562466ec814eb9b6cfe5e030628187bb71b3da1422bda901",
            "ncurses-bin": "418ebdb2880c2e5fab03db3e554c292bf700af58184a8ab5ea12015b9a8eb940",
            "netbase": "acd59678ca4791458468369724b72ccf981603308cb2959668c8487a954f9af4",
            "openssl": "c08fd4e16a6ea9c8d3573c3c842afa6761759910c0639abb3cfb7fe173f54b4e",
            "python3-distutils": "08a0058ef8615e43ef1122907dbbc6aadbd132b2385e212f814f4ec9116efcfb",
            "python3.9-minimal": "0a9ddef9a7f45e40530e9b011c2da1794d6cff5ad39e7486b1467ac136d74ed8",
            "readline-common": "38c3ac67e2dab4122a2f948f433c4cb5d5653d82b323f3ff30599797b7adee9f",
            "tar": "efc657dbf10bf0065b379d0607886a525327208fa4f93d9e65e1e95a8c12cc4a",
            "tzdata": "572f3754bda8487bfe7c1a9372cce185b8609f0dcbbd44f4a4813acd8c3d06c6",
            "zlib1g": "3536590c116b801dc7440ad66d682991264824d0b64ff4b6db06a39f78675d18",
        },
        sources = [
            "http://us.archive.ubuntu.com/ubuntu focal main universe",
            "http://us.archive.ubuntu.com/ubuntu focal-updates main universe",
            "http://us.archive.ubuntu.com/ubuntu focal-backports main universe",
            "http://security.ubuntu.com/ubuntu focal-security main universe",
        ],
        urls = [
            "http://us.archive.ubuntu.com/ubuntu/$(package_path)",
            "http://security.ubuntu.com/ubuntu/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
