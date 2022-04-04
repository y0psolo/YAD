"""This module defines Ubuntu Bionic dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_bionic_amd64():
    deb_packages(
        name = "ubuntu_bionic_amd64",
        arch = "amd64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_10.1ubuntu2.11_amd64.deb",
            "bash": "pool/main/b/bash/bash_4.4.18-2ubuntu1.2_amd64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20210119~18.04.2_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.28-1ubuntu1_amd64.deb",
            "dash": "pool/main/d/dash/dash_0.5.8-2.10_amd64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.12.6-0ubuntu2_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.6-5ubuntu1.1_amd64.deb",
            "less": "pool/main/l/less/less_487-0.1_amd64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.2.52-3build1_amd64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.110-5ubuntu0.1_amd64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.4.47-2build1_amd64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.6-8.1ubuntu0.2_amd64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.27-3ubuntu1.5_amd64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.27-3ubuntu1.5_amd64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28-13.1ubuntu1.1_amd64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.2.5-3ubuntu0.7_amd64.deb",
            "libffi6": "pool/main/libf/libffi/libffi6_3.2.1-8_amd64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.12.6-0ubuntu2_amd64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.8.1-2ubuntu2.1_amd64.deb",
            "libgcc1": "pool/main/g/gcc-8/libgcc1_8.4.0-1ubuntu1~18.04_amd64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.3_amd64.deb",
            "libgomp1": "pool/main/g/gcc-8/libgomp1_8.4.0-1ubuntu1~18.04_amd64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.27-6_amd64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_1.5.2-0ubuntu5.18.04.4_amd64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.9-1ubuntu0.1_amd64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_0.0~r131-2ubuntu3.1_amd64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.2-1.3_amd64.deb",
            "libmpdec2": "pool/main/m/mpdecimal/libmpdec2_2.4.2-1ubuntu1_amd64.deb",
            "libncurses5": "pool/main/n/ncurses/libncurses5_6.1-1ubuntu1.18.04_amd64.deb",
            "libncursesw5": "pool/main/n/ncurses/libncursesw5_6.1-1ubuntu1.18.04_amd64.deb",
            "libpcre2-8-0": "pool/universe/p/pcre2/libpcre2-8-0_10.31-2_amd64.deb",
            "libpmem1": "pool/universe/p/pmdk/libpmem1_1.4.1-0ubuntu1~18.04.1_amd64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.34-1ubuntu0.18.04.2_amd64.deb",
            "libpython3.6-minimal": "pool/main/p/python3.6/libpython3.6-minimal_3.6.9-1~18.04ubuntu1.7_amd64.deb",
            "libpython3.6-stdlib": "pool/main/p/python3.6/libpython3.6-stdlib_3.6.9-1~18.04ubuntu1.7_amd64.deb",
            "libreadline5": "pool/main/r/readline5/libreadline5_5.2+dfsg-3build1_amd64.deb",
            "libreadline7": "pool/main/r/readline/libreadline7_7.0-3_amd64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_2.7-2build2_amd64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.22.0-1ubuntu0.4_amd64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.15_amd64.deb",
            "libstdc++6": "pool/main/g/gcc-8/libstdc++6_8.4.0-1ubuntu1~18.04_amd64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_237-3ubuntu10.53_amd64.deb",
            "libtinfo5": "pool/main/n/ncurses/libtinfo5_6.1-1ubuntu1.18.04_amd64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.31.1-0.4ubuntu3.7_amd64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.60ubuntu1_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.1-1ubuntu1.18.04_amd64.deb",
            "netbase": "pool/main/n/netbase/netbase_5.4_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1~18.04.15_amd64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.6.9-1~18.04_all.deb",
            "python3.6-minimal": "pool/main/p/python3.6/python3.6-minimal_3.6.9-1~18.04ubuntu1.7_amd64.deb",
            "readline-common": "pool/main/r/readline/readline-common_7.0-3_all.deb",
            "tar": "pool/main/t/tar/tar_1.29b-2ubuntu0.3_amd64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu0.18.04_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-0ubuntu2.1_amd64.deb",
        },
        packages_sha256 = {
            "base-files": "b103b55f80cc703af636cb111d80b733c71ba4c39a138ebe8926356d88173142",
            "bash": "4f95ed6e11435fccaa9731eaeb7688fed8cc1fd8a25d44640e2f7a25f871ae08",
            "ca-certificates": "911c7e57ad1ef49958f28dcc27bb19e0103465486cc7766023a68e78344b8c10",
            "coreutils": "24541a48e25dfb17c98ce77dda61800e6cd68d74c25725753613fbcc00f2418f",
            "dash": "51fe28b98b8e023325ae8868f29807cdb53f6f2eac943723b5e6bd47cde0cb2c",
            "fontconfig-config": "ba4dbb3b4c173c1d97b6112d736da25d2dc7fab0c7408eb3cb49207f43dd5630",
            "fonts-dejavu-core": "f2b3f7f51e23e0493e8e642c82003fe75cf42bc95fda545cc96b725a69adb515",
            "gzip": "46286e914cad985cfe8cb3f196b7fce48146d3b329d45673b6ad62e8ced034cb",
            "less": "00d9c5e56b81c95a14e3fd148ff464acaf3fe757d3e4b4d1e54990b28c54eb57",
            "libacl1": "adbe1a5b37daf02f7bbd645c3a0baf63f6607e207567574c609493c32d5d57a5",
            "libaio1": "01d780036ab15752b939637daa200517bafbd62ff73f91be5f94e77f42f7a7b0",
            "libattr1": "91ef5319ee1f0173a6c5d16ba364e79c90f74b94b5d7daed1a2674a92f4f9c78",
            "libbz2-1.0": "897850ec11aab3280ce2755eb552995a5aa9b16a70453934828c6418591ea87b",
            "libc-bin": "9184f8eebfdab3ea9ea5e0a2ed498d21c658ef2599232e99071b2f0eafec07a9",
            "libc6": "c4af07dc8a2fdc9c4f25f103cd03bcca7231c19d9ac9171fa7eb5eecb7fc46d7",
            "libdb5.3": "abb7f569252604af9b123cd6c73195cbd54d7b7664479a85fd5fd12fe8ba3b5d",
            "libexpat1": "d1b1e0a4a10154ce47752c8b725c2ddae3b6cd0d411e83ccddc891f52cd8afb1",
            "libffi6": "fa26945b0aadfc72ec623c68be9cc59235a7fe42e2388f7015fd131f4fb06dc9",
            "libfontconfig1": "647bb8f09e751a39d488b0260db6015ce1118c56114cc771dd5bf907180f0c80",
            "libfreetype6": "7f4afc6a8e7023ed51f15caf4d082e44e0f3926161afaeb7c4bb6326955255bd",
            "libgcc1": "116dadf4ceaba7150eb46a6598dd3defa62b1b2a6578fb494f4c932878634994",
            "libgcrypt20": "079025d334873844bba2aae474fe78f3eff3e04673302c91e4167916fd03efd2",
            "libgomp1": "2fb511a931d0510d22313fad065c951e04431d75d4e6160e1d80d29e88748c8a",
            "libgpg-error0": "afcf8629c4de6946d73661126ae4e0a28f9718c8720900201d46fd963e0b5ccf",
            "libjpeg-turbo8": "57f9879f3a23128ba3e9c348eb250b83996fa9ef16de947ab8eff74100f898da",
            "liblcms2-2": "a08e5e734bcb5a827772e326dad7c0411bbac9399f0f635edfa6b1f09ad80bdb",
            "liblz4-1": "deed1dc6d2c5b492b136fe23b0c6563f9fe9a9a016bd0c93abdb253cc97cfe67",
            "liblzma5": "92704fce1ad9af92d59052705d2e0e258789a1718afeca9c0fb0a0d37112b27a",
            "libmpdec2": "2962dbb81413ad47fee589bb6663589e38b84d80b4d55d8019f0b305025c5eb6",
            "libncurses5": "928109886a9c8a1a1504e5460632ba49cc0854176a90c16dcd95eb7ebd8d240d",
            "libncursesw5": "d1a7a32fe88181d6f5adf7c52cb981359aa35b01bdbbf7218ddc240a4fdabd87",
            "libpcre2-8-0": "37898dba2cc2cf5b87b47b1efb6cb2fda65f3a556f237bd3c30d5c2a8aa48fdd",
            "libpmem1": "25d3bf2e7c76d8588967e411667f3c2a6d442f6bb4c0bcdb8fa018891e782e06",
            "libpng16-16": "4d484ba67be62e7bb450ff41c88d06e65d564f9180daccc4a2640760493804bc",
            "libpython3.6-minimal": "8a1fd5525e345da56348ac24ded2bcfb40e4d259011afe9eeb75e4d02322c097",
            "libpython3.6-stdlib": "958880644c97ba4d8a7442c6bff92783ccd36e2b72012617c76872b8be1b794c",
            "libreadline5": "dd851f543f3061d07c31fd44917865c3173ae9018ae331716787fbfcf1988bec",
            "libreadline7": "8706403267e95615f1b70db31ff16709361982728b308466346e01c20a743dd5",
            "libselinux1": "6b6c70f809e8b13f0b1f27006e125abb3a8c3195f5c888dce0df1a5d3f211c0d",
            "libsqlite3-0": "cde7a26502ecfeede865ce054763f4b6d3aa151bd8dcc5696e2725cfda5ceb07",
            "libssl1.1": "f719aaaad625b792c65b0af12b3fb0628f1766a4b1ef01c896993c1a1f8b2907",
            "libstdc++6": "4dbd1ffa20011329608f584ff329a10507cfa78c3f76fa34e6f479f9680b64f4",
            "libsystemd0": "12ba25ece07fed5dae27e33daf701786d0b2589df141d751a25a99f136d8c9e2",
            "libtinfo5": "bb4d4d80720149692ea0d5bca1a5dac57737afe447810ce69dd4a95107121da5",
            "libuuid1": "c04350aa8dc1bd73712716f9826b0f02fa10b77058c990a406445020970c2eaa",
            "mime-support": "98e05aa03538c5f182ed14cbb59cfe64b30592d77e602abd2442a9f1c72532b3",
            "ncurses-bin": "336af3c372b6a7d083e6c6053670781369d8ae713fd098c9dab8fc5432458015",
            "netbase": "cbda1c8035cd1fe0b1fb09b456892c0bb868657bfe02da82f0b16207d391145e",
            "openssl": "e2a3e6fae5729b8517ceab3b48f66c941bff3c31739af235aa34ef0bd269e2a4",
            "python3-distutils": "f836b1e22923fa175c1968b9dbd916ae5639c9250e21bcfb88f9df2dc289f65c",
            "python3.6-minimal": "abf3cce4fc9b8f620ad538e9bef47a897f8e9d53c23467b497ad60d09279dcd5",
            "readline-common": "84cb3642c82114496d2fc17011db13655bd661cf4641098c03c168ddde367908",
            "tar": "83b7ee71eb936c983b912267e0289ba3ae7458e29c3e5162696c25de65adb1c2",
            "tzdata": "ad6ea19c1e3c3318bb94aa65b387ae235e72f031bd8898a1f6fc7b4c1373d483",
            "zlib1g": "72f0bec7692ee750102c7d952feb87b111d0b2b9430053cb7f266d6af094d07b",
        },
        sources = [
            "http://us.archive.ubuntu.com/ubuntu bionic main universe",
            "http://us.archive.ubuntu.com/ubuntu bionic-updates main universe",
            "http://us.archive.ubuntu.com/ubuntu bionic-backports main universe",
            "http://security.ubuntu.com/ubuntu bionic-security main universe",
        ],
        urls = [
            "http://us.archive.ubuntu.com/ubuntu/$(package_path)",
            "http://security.ubuntu.com/ubuntu/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
