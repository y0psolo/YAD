"""This module defines Ubuntu Bionic dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_amd64():
    deb_packages(
        name = "ubuntu_amd64",
        arch = "amd64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_11ubuntu5.4_amd64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20210119~20.04.2_all.deb",
            "dash": "pool/main/d/dash/dash_0.5.10.2-6_amd64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-2ubuntu3_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-2_amd64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.31-0ubuntu9.2_amd64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.31-0ubuntu9.2_amd64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.10-10ubuntu4_amd64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.6ubuntu2_amd64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.9-1build1_amd64.deb",
            "libffi7": "pool/main/libf/libffi/libffi7_3.3-4_amd64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-2ubuntu3_amd64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.10.1-2ubuntu0.1_amd64.deb",
            "libgcc-s1": "pool/main/g/gcc-10/libgcc-s1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libgcc1": "pool/universe/g/gcc-10/libgcc1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libgomp1": "pool/main/g/gcc-10/libgomp1_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1.20.04.1_amd64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-4_amd64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.4-1ubuntu1_amd64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-3_amd64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.2-0ubuntu2_amd64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-2_amd64.deb",
            "libpython3.8-minimal": "pool/main/p/python3.8/libpython3.8-minimal_3.8.10-0ubuntu1~20.04.1_amd64.deb",
            "libpython3.8-stdlib": "pool/main/p/python3.8/libpython3.8-stdlib_3.8.10-0ubuntu1~20.04.1_amd64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.0-4_amd64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.31.1-4ubuntu0.2_amd64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.10_amd64.deb",
            "libstdc++6": "pool/main/g/gcc-10/libstdc++6_10.3.0-1ubuntu1~20.04_amd64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.2-0ubuntu2_amd64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.34-0.1ubuntu9.1_amd64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.64ubuntu1_all.deb",
            "netbase": "pool/main/n/netbase/netbase_6.1_all.deb",
            "openjdk-11-jre-headless": "pool/main/o/openjdk-lts/openjdk-11-jre-headless_11.0.11+9-0ubuntu2~20.04_amd64.deb",
            "openjdk-8-jre-headless": "pool/universe/o/openjdk-8/openjdk-8-jre-headless_8u292-b10-0ubuntu1~20.04_amd64.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1f-1ubuntu2.10_amd64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.8.10-0ubuntu1~20.04_all.deb",
            "python3.8-minimal": "pool/main/p/python3.8/python3.8-minimal_3.8.10-0ubuntu1~20.04.1_amd64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.0-4_all.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2021e-0ubuntu0.20.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu1.2_amd64.deb",
        },
        packages_sha256 = {
            "base-files": "1b1f1e17b424063df231690d7a99949b8c4a119eb1d225b93905eee33ed4d29c",
            "ca-certificates": "8179442c9c582fd71fd3817a579bf5fe9503412c1e879d3ba4f0ed9a761e54f4",
            "dash": "12607b28478fb815952f47c53394b57405244e675ff3220a982a0b8c7d826b0c",
            "fontconfig-config": "80b090925c52aff3f4681b361c9823b041c42c57cca58b5baf2541bafc25fed9",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "libbz2-1.0": "f3632ec38402ca0f9c61a6854469f1a0eba9389d3f73827b466033c3d5bbec69",
            "libc-bin": "e78733b4974c8bfd705b9bba7930ce309267cecc39a6c90ee18bbe44052d0c48",
            "libc6": "be7386ac249db6f5500f483456c135553a7b5b333388afa150a1f2ff3a294bb1",
            "libcrypt1": "231b4dbbe5865775f118cfa61394f1e16fa7102b6953a327e672499a20876d73",
            "libdb5.3": "330775026b5e31340387fb58e12e40e241ca34cbbb6c0c28331bd83cb47c3656",
            "libexpat1": "342720dc6e3c55dee5b863a86dc2090d8c716f5c5116ab55066a5eb0433bd6c1",
            "libffi7": "4584aa8fef1bf5086168ce2f7078cd2ebd78fdc4cc0d86d958d795d4e0b0f50d",
            "libfontconfig1": "7ca5523936a9b8e42f60c0f01c232145809387e5680b05c7bce0bea31844a522",
            "libfreetype6": "02d17bff6ac1faa9832b946f2b3b18a8a563b786b9d865b9cf774096cae11c80",
            "libgcc-s1": "32627db91332d367137a5af725fe677c2e44d3bd0b03159948e3782fa20afaa4",
            "libgcc1": "a181f4e192feb86227c32068b68cdaf8f8e00b434eb8d774a2ced2568627c120",
            "libgomp1": "126c97f6e43cedf656fccc096f45dfb236ad1ce6ef41b8e0c57df8229b97c8f0",
            "libjpeg-turbo8": "4f5cc80a703df5baefce25f5bd93614acb7771571c502cee923754bf8bb59e89",
            "liblcms2-2": "1df587b2223d21382fb1c91c05cc5092ae0175d335cc4188fb3c5354ec5e65e6",
            "liblzma5": "95daeef9f6c34652022d29fb51cb350f9921e7e76639b4e6fdea84fd25605f13",
            "libmpdec2": "4e624c616de0fa1dea3571291b05b3d6fe5f75d8667b278f9503b1eca36ffbcf",
            "libncursesw6": "7dd1a78af0cbf71a7bbf263e0e829e7e5dd861b6b02c58bc9831f8aebafefe23",
            "libpng16-16": "6c512b7c67eafe0302026fa719f924bb77b39c57e1845a3d8b81cfd607c3b22c",
            "libpython3.8-minimal": "dadf7f06cf188717b8909df8c5e871cc3e4acb4b33a49be8b2057b5c8e8a03ce",
            "libpython3.8-stdlib": "f8faed4c79d86839702de61196793d9aeae728d9322df25f95da1f58d87d2214",
            "libreadline8": "5c0e982098eeb1b69a1360f4dc20553397d0a41240f3b2fc2812ee3f02274a82",
            "libsqlite3-0": "1fb5b22f837fc2cba5974ac366982bef4e74f5844cd527b59276b2c47e56c582",
            "libssl1.1": "27dd10246472b66b159069b98aa27b8a308294cebb5497cb4d372840be56dff3",
            "libstdc++6": "376ade22283228e3bfe8b2571976bda192575a66d0d4bc55190ebe6758d1a5c2",
            "libtinfo6": "87f281a8d5e56dbb259c7ef9f9dead8c52c73982c7bd65b267a71dfc700875fb",
            "libuuid1": "6a3a030ff0af9413ecadaf605408426906a629a656a3d31d0b055d8583c939aa",
            "mime-support": "b4f73c76fa2abc24562466ec814eb9b6cfe5e030628187bb71b3da1422bda901",
            "netbase": "acd59678ca4791458468369724b72ccf981603308cb2959668c8487a954f9af4",
            "openjdk-11-jre-headless": "9d469246b988425afdfef1011f72cfc6ece473e4dd35193005a81c7b73d865b6",
            "openjdk-8-jre-headless": "8bf5bd9efc3193fd1637f8e711914d9d00e439eb8f627ae00cbbea3383e862dd",
            "openssl": "89e000938ab7145862ee476223c8344163083187457dc10f647a73c7b9463e33",
            "python3-distutils": "08a0058ef8615e43ef1122907dbbc6aadbd132b2385e212f814f4ec9116efcfb",
            "python3.8-minimal": "5a385a535f10e3c8cddc858f91944e99daeeb5c6f20cbcc45d8af1bf51da026f",
            "readline-common": "38c3ac67e2dab4122a2f948f433c4cb5d5653d82b323f3ff30599797b7adee9f",
            "tzdata": "68056b19545c87987802e7f4e416a19bfece7257f274854c9790ae9dedcfeac6",
            "zlib1g": "ece7e81f9dde20d014691be395907efe38cfe11df14957353c852b96a848cd66",
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
