"""This module defines Ubuntu jammy dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_jammy_amd64():
    deb_packages(
        name = "ubuntu_jammy_amd64",
        arch = "amd64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_12ubuntu4.1_amd64.deb",
            "bash": "pool/main/b/bash/bash_5.1-6ubuntu1_amd64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20211016_all.deb",
            "coreutils": "pool/main/c/coreutils/coreutils_8.32-4.1ubuntu1_amd64.deb",
            "dash": "pool/main/d/dash/dash_0.5.11+git20210903+057cd650a4ed-3build1_amd64.deb",
            "fontconfig-config": "pool/main/f/fontconfig/fontconfig-config_2.13.1-4.2ubuntu5_all.deb",
            "fonts-dejavu-core": "pool/main/f/fonts-dejavu/fonts-dejavu-core_2.37-2build1_all.deb",
            "gzip": "pool/main/g/gzip/gzip_1.10-4ubuntu4_amd64.deb",
            "less": "pool/main/l/less/less_590-1build1_amd64.deb",
            "libacl1": "pool/main/a/acl/libacl1_2.3.1-1_amd64.deb",
            "libaio1": "pool/main/liba/libaio/libaio1_0.3.112-13build1_amd64.deb",
            "libattr1": "pool/main/a/attr/libattr1_2.5.1-1build1_amd64.deb",
            "libbz2-1.0": "pool/main/b/bzip2/libbz2-1.0_1.0.8-5build1_amd64.deb",
            "libc-bin": "pool/main/g/glibc/libc-bin_2.35-0ubuntu3_amd64.deb",
            "libc6": "pool/main/g/glibc/libc6_2.35-0ubuntu3_amd64.deb",
            "libcom-err2": "pool/main/e/e2fsprogs/libcom-err2_1.46.5-2ubuntu1.1_amd64.deb",
            "libcrypt1": "pool/main/libx/libxcrypt/libcrypt1_4.4.27-1_amd64.deb",
            "libdb5.3": "pool/main/d/db5.3/libdb5.3_5.3.28+dfsg1-0.8ubuntu3_amd64.deb",
            "libexpat1": "pool/main/e/expat/libexpat1_2.4.7-1_amd64.deb",
            "libffi8": "pool/main/libf/libffi/libffi8_3.4.2-4_amd64.deb",
            "libfontconfig1": "pool/main/f/fontconfig/libfontconfig1_2.13.1-4.2ubuntu5_amd64.deb",
            "libfreetype6": "pool/main/f/freetype/libfreetype6_2.11.1+dfsg-1build1_amd64.deb",
            "libgcc-s1": "pool/main/g/gcc-12/libgcc-s1_12-20220319-1ubuntu1_amd64.deb",
            "libgcrypt20": "pool/main/libg/libgcrypt20/libgcrypt20_1.9.4-3ubuntu3_amd64.deb",
            "libgomp1": "pool/main/g/gcc-12/libgomp1_12-20220319-1ubuntu1_amd64.deb",
            "libgpg-error0": "pool/main/libg/libgpg-error/libgpg-error0_1.43-3_amd64.deb",
            "libgssapi-krb5-2": "pool/main/k/krb5/libgssapi-krb5-2_1.19.2-2_amd64.deb",
            "libjpeg-turbo8": "pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.1.2-0ubuntu1_amd64.deb",
            "libk5crypto3": "pool/main/k/krb5/libk5crypto3_1.19.2-2_amd64.deb",
            "libkeyutils1": "pool/main/k/keyutils/libkeyutils1_1.6.1-2ubuntu3_amd64.deb",
            "libkrb5-3": "pool/main/k/krb5/libkrb5-3_1.19.2-2_amd64.deb",
            "libkrb5support0": "pool/main/k/krb5/libkrb5support0_1.19.2-2_amd64.deb",
            "liblcms2-2": "pool/main/l/lcms2/liblcms2-2_2.12~rc1-2build2_amd64.deb",
            "liblz4-1": "pool/main/l/lz4/liblz4-1_1.9.3-2build2_amd64.deb",
            "liblzma5": "pool/main/x/xz-utils/liblzma5_5.2.5-2ubuntu1_amd64.deb",
            "libmpdec3": "pool/main/m/mpdecimal/libmpdec3_2.5.1-2build2_amd64.deb",
            "libncurses6": "pool/main/n/ncurses/libncurses6_6.3-2_amd64.deb",
            "libncursesw6": "pool/main/n/ncurses/libncursesw6_6.3-2_amd64.deb",
            "libnsl2": "pool/main/libn/libnsl/libnsl2_1.3.0-2build2_amd64.deb",
            "libpcre2-8-0": "pool/main/p/pcre2/libpcre2-8-0_10.39-3build1_amd64.deb",
            "libpmem1": "pool/main/p/pmdk/libpmem1_1.11.1-3build1_amd64.deb",
            "libpng16-16": "pool/main/libp/libpng1.6/libpng16-16_1.6.37-3build5_amd64.deb",
            "libpython3.10-minimal": "pool/main/p/python3.10/libpython3.10-minimal_3.10.4-3_amd64.deb",
            "libpython3.10-stdlib": "pool/main/p/python3.10/libpython3.10-stdlib_3.10.4-3_amd64.deb",
            "libreadline8": "pool/main/r/readline/libreadline8_8.1.2-1_amd64.deb",
            "libselinux1": "pool/main/libs/libselinux/libselinux1_3.3-1build2_amd64.deb",
            "libsqlite3-0": "pool/main/s/sqlite3/libsqlite3-0_3.37.2-2_amd64.deb",
            "libssl3": "pool/main/o/openssl/libssl3_3.0.2-0ubuntu1.6_amd64.deb",
            "libstdc++6": "pool/main/g/gcc-12/libstdc++6_12-20220319-1ubuntu1_amd64.deb",
            "libsystemd0": "pool/main/s/systemd/libsystemd0_249.11-0ubuntu3.4_amd64.deb",
            "libtinfo6": "pool/main/n/ncurses/libtinfo6_6.3-2_amd64.deb",
            "libtirpc-common": "pool/main/libt/libtirpc/libtirpc-common_1.3.2-2build1_all.deb",
            "libtirpc3": "pool/main/libt/libtirpc/libtirpc3_1.3.2-2build1_amd64.deb",
            "libuuid1": "pool/main/u/util-linux/libuuid1_2.37.2-4ubuntu3_amd64.deb",
            "mime-support": "pool/main/m/mime-support/mime-support_3.66_all.deb",
            "ncurses-bin": "pool/main/n/ncurses/ncurses-bin_6.3-2_amd64.deb",
            "netbase": "pool/main/n/netbase/netbase_6.3_all.deb",
            "openssl": "pool/main/o/openssl/openssl_3.0.2-0ubuntu1.6_amd64.deb",
            "python3-distutils": "pool/main/p/python3-stdlib-extensions/python3-distutils_3.10.4-0ubuntu1_all.deb",
            "python3.10-minimal": "pool/main/p/python3.10/python3.10-minimal_3.10.4-3_amd64.deb",
            "readline-common": "pool/main/r/readline/readline-common_8.1.2-1_all.deb",
            "tar": "pool/main/t/tar/tar_1.34+dfsg-1build3_amd64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2022a-0ubuntu1_all.deb",
            "zlib1g": "pool/main/z/zlib/zlib1g_1.2.11.dfsg-2ubuntu9_amd64.deb",
        },
        packages_sha256 = {
            "base-files": "593469d22be8d52bf1d3a59b7b7d7b7fb720dd6ab2169d1a5ea29f309ebdb64b",
            "bash": "543fc0be88d2cf33ada88fe0cf82e1ec3fdcdd56e411dd2958eb3ef6e1a3d2fa",
            "ca-certificates": "1eb968fb717640d4661f777a3e1ffb4c4fef956bcd24e1084ff1a7e5ee2f4a03",
            "coreutils": "b4bef42afe93036b1010a8b4cb03f0d3e715eed64d0cd88f7a945be40d0316f6",
            "dash": "a539a1fc715f9f52cf9159e1f2c8d254a611d1f2c176a25ca7d99372fa76f4b8",
            "fontconfig-config": "c40405fa036d1732e269fabd4c5b40076b973a226da1df6921d4b7e7a1e2ff72",
            "fonts-dejavu-core": "c33fe8bf33b50d99d6448804a090123b1bbba37d7a8703c630695676d110a47d",
            "gzip": "6d20eef7ea5fdb1e678dc650e5e1068d6d1a09a74274d3f22481c9c9be7a2335",
            "less": "9ddbdd983987a5fe3379f06fdd5cfa78d97fdcefe92dca2eb90eda04d576a3b7",
            "libacl1": "4db2c64ec74f673ed022e92cce7b83d0cbe0b779e02ca60a56ba59ae07754e05",
            "libaio1": "2dcfe0b49d7cccfbf1bd6a3f627cf44bea9f51fb32f7e0e552a0df75698e0d27",
            "libattr1": "bb4448dcade4f169846d6e3dc00b768f39afd16db07877f595a1d3d92d191050",
            "libbz2-1.0": "3bfeaf4259eadbb7faa09feee86cd6cad172cd95907d7465afd0eb5aebb5433f",
            "libc-bin": "0fbbb920bb9b3b24c357cca9035671fcfee5f9ed49175f6145db979406dbc532",
            "libc6": "ea9a27e0ebdd0cfc9c750d94f8074f3a35d1f97dcc77ae04c370fb498a6b6db2",
            "libcom-err2": "0b432aebe830682b1a303c1bb1a48fcb92fc5dc254d067ed7309b5c818d505a5",
            "libcrypt1": "3fa566e9f861a08736cbc5a97562d9d6e4f0c00450fbeafcb6d7583423b04a98",
            "libdb5.3": "ce60e446c9cb0e94bb4b4d0fe4f969e772edec250deb186bacf955e4d196548b",
            "libexpat1": "1bfdea56a97926fb0b21690e3e259bb124e3d761aa10f5c4f2b06b165b9b7c60",
            "libffi8": "b4f88c91fa6f4c942097be6abfc365fb133c5e147640168cbb7704fd855eac10",
            "libfontconfig1": "6be0c141aed23d9eb801658d248fd667bea2b8a9ccab4db7b596a69ffe3393fd",
            "libfreetype6": "ccc186e123790e4425ba5d65684101153031f8838d6daedb0ed3c0e5e1d528da",
            "libgcc-s1": "c9a93721431be07557c810d7e1b24c3b3c51f398334ded104362a68a415b9e61",
            "libgcrypt20": "fe7d7e9f83b280f4fafaaa3852e462f43a9e854bc268e06667da2bf1b3e9d658",
            "libgomp1": "8627999dd5f3d38473774ce7924a62af9a2840b2238bc52611e38257bc140b5d",
            "libgpg-error0": "1fbacdf9bd1e431cee874a697b339f6f925182bc79bba5a112b53669b33265c5",
            "libgssapi-krb5-2": "53b3c8d2599974e378416f3e837b6bf89db7e155a52aaa6761789242fa9098f6",
            "libjpeg-turbo8": "bb9538fa94f06bf6b7907105439f0a0a30e3ec27030832820a6c2cc2dc6578a8",
            "libk5crypto3": "8419e78a643e9414c8c90605829fb492157eac87b87c0edc1cd900f285487385",
            "libkeyutils1": "940daf78ee0229549b4eabc92ffd79dd038ed96a44e2e912305a23540cf22a0a",
            "libkrb5-3": "e0f9cbd7d6e9fccd8559a82a48b1dadbd98889840710546c35067b0269f612ee",
            "libkrb5support0": "4736410375e20692050b7b587113e72d23bb04a6d9beea89282bc9a002629056",
            "liblcms2-2": "082bdc5f5a9f7d5a5060902e74669dc8e0f83263b28e91993971c650f56df4ef",
            "liblz4-1": "ac9b54d0feb840345060c74fb687675c5e1eb2b195effafae38c5f9991041e98",
            "liblzma5": "8f1c46e7d3f5102a5e4fdca7c949728a343ba71c2a7c124118df2c13d4c444f7",
            "libmpdec3": "941ca0b2e73d26522f75a801b1bf529afa5ceb2ac9b00cbf324b59f474cae813",
            "libncurses6": "239fd28cbbda7c69acd680ee2228e3c8726ee811673ec0932951f8ca24de2787",
            "libncursesw6": "6a14772d23e6068d0deea408aa92a2d97f6829e601737586fe3ec416a8e0ba29",
            "libnsl2": "cfeef478f96ace59617f4f93c2497776b98a33c99bf3602af46844ccf9cba9d3",
            "libpcre2-8-0": "166e1162c3e86facf11bd31a3e10ffa67641f9ac295bc8e72e6cdfc494fc64c3",
            "libpmem1": "6824ba30ec4bc8a84ab81a3cd3332666db4570031ab276f3e169dead28a98a93",
            "libpng16-16": "154bbc6b1bfbe4c2753ec15838896ecc16be62c4b42b31e35aa9551284791fc0",
            "libpython3.10-minimal": "e83f695339a6b6b691ccfe11e50a54693606371d294351bdeaaedf2fcc1ba09a",
            "libpython3.10-stdlib": "9f631dd658cf253c4a0016d17072056218d8f839383fb41c28fbba1f860364d4",
            "libreadline8": "51fd16f608efa710c987e4b071ffba0bec63a9ac8e55eddd5770f5e5252edc09",
            "libselinux1": "b96c6b40ee2388bd51341cb11c0f1d5bcca29b9180b6e3a77a06b881f2913f7e",
            "libsqlite3-0": "000a1d5c0df0373c75fadbfea604afb6b1325bf866a3ce637ae0138abe6d556d",
            "libssl3": "91d12df7bb44070f67e32b6e719554c200d01e6b1afb6daf6d0ffcdd8a3107be",
            "libstdc++6": "035cfe195ddf3a091abbc0c323285772ccbdbb2fb75279e44a0915748b4e5726",
            "libsystemd0": "2911f23518b7f8cc3130fe0b068f1f2cc9deb3978733c5efccf0d3e373a662e2",
            "libtinfo6": "5f7618187c6d1924ec758c2d5422c67377af92ecb21695008edf83a2d0c85ecd",
            "libtirpc-common": "a2746e8c1ae8b1ced2312304e8bd5e3aaabd504377480e743b0edff7b96da6fa",
            "libtirpc3": "e5af8cc79ce2cd14a716922f7936d2a7c26d1e90642aaa7810afe4fcdc1cf2dc",
            "libuuid1": "94f24383876c575a85c4fd87226e72fe9c9bbdbb52b6f4d71dade805e0d60d48",
            "mime-support": "70bdf961f080ce5d8f19ad0d2729e88f86923982fa4c9ae7ed8e6499bad6af31",
            "ncurses-bin": "fa218c70bef66be4b309f3c72ca2020f3f9ad8282e6503fd33870ea2157fdf82",
            "netbase": "480bbd894069e5da7a25f070ea0ebaded7f64bdd34a119558cc2fe7137762a79",
            "openssl": "c799eec8b27e77a6f346f3332a6364a0b2c3119613726f027fcb62fb2279b015",
            "python3-distutils": "5564aab3ba550e0daf7bb4d045e8bd7c7de6ed82eb6bc529e5dbc6e19fa7ebac",
            "python3.10-minimal": "beb041e53740a7720e4289f0caf3e418469951cd66bb5efbefb298e6b016a187",
            "readline-common": "a78d02935f6107a12d3d349c25ce4f92fcdcbf6b65e37f1f5a13a9054b5b9e94",
            "tar": "d6e4ef9e5793a271764209047ebb78970404b035fd1490cb513302744cfe9a25",
            "tzdata": "1fca96a6f5173fa7e448c85b1daae713a7a5e8d2401d189616a20d0d7a807c1d",
            "zlib1g": "52449467942cc943d651fd16867014e9339f3657935fc09b75b3347aa5a78066",
        },
        sources = [
            "http://us.archive.ubuntu.com/ubuntu jammy main universe",
            "http://us.archive.ubuntu.com/ubuntu jammy-updates main universe",
            "http://us.archive.ubuntu.com/ubuntu jammy-backports main universe",
            "http://security.ubuntu.com/ubuntu jammy-security main universe",
        ],
        urls = [
            "http://us.archive.ubuntu.com/ubuntu/$(package_path)",
            "http://security.ubuntu.com/ubuntu/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
