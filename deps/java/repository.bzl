load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def java_repository():
    # Get Java Azul package
    http_archive(
        name = "jre-8-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_8_amd64",
        sha256 = "87b46ddc541d53ff402d123ad2ee8019f60ba83cd56bba26f4d247c415b4c6d8",
        strip_prefix = "zulu8.62.0.19-ca-jre8.0.332-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu8.62.0.19-ca-jre8.0.332-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_11_amd64",
        sha256 = "a98ab0d16a282e00f1417462414b14befd148e0e5af6d92e3273c54a99efd4ac",
        strip_prefix = "zulu11.56.19-ca-jre11.0.15-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu11.56.19-ca-jre11.0.15-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_17_amd64",
        sha256 = "90ff9c5916c56f402da7ebbf9f8d8ef228f5b3a6b1ba02e69f52b11f2a5fe74c",
        strip_prefix = "zulu17.34.19-ca-jre17.0.3-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.34.19-ca-jre17.0.3-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-8-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_8_arm64",
        sha256 = "c4519172d6f5323192561108ee25c2cdef2b7ab0d7f9c807d95a7cf5d4209e84",
        strip_prefix = "zulu8.62.0.19-ca-jdk8.0.332-linux_aarch64/jre/",
        urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu8.62.0.19-ca-jdk8.0.332-linux_aarch64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_11_arm64",
        sha256 = "fc7c41a0005180d4ca471c90d01e049469e0614cf774566d4cf383caa29d1a97",
        strip_prefix = "zulu11.56.19-ca-jdk11.0.15-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu11.56.19-ca-jdk11.0.15-linux_aarch64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_17_arm64",
        sha256 = "22c3ee790a8fc12a231351c8e359d00add1a79d02acf4704b5d36ab8d1815f00",
        strip_prefix = "zulu17.34.19-ca-jre17.0.3-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.34.19-ca-jre17.0.3-linux_aarch64.tar.gz"],
    )

    # Get Adoptium package
    http_archive(
        name = "jre-8-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_8_amd64",
        sha256 = "3d62362a78c9412766471b05253507a4cfc212daea5cdf122860173ce902400e",
        strip_prefix = "jdk8u322-b06/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u322-b06/OpenJDK8U-jdk_x64_linux_hotspot_8u322b06.tar.gz"],
    )

    http_archive(
        name = "jre-11-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_11",
        sha256 = "5fdb4d5a1662f0cca73fec30f99e67662350b1fa61460fa72e91eb9f66b54d0b",
        strip_prefix = "jdk-11.0.15+10/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.15%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.15_10.tar.gz"],
    )

    http_archive(
        name = "jre-17-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_17_amd64",
        sha256 = "81f5bed21077f9fbb04909b50391620c78b9a3c376593c0992934719c0de6b73",
        strip_prefix = "jdk-17.0.3+7/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.3%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.3_7.tar.gz"],
    )

    http_archive(
        name = "jre-8-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_8_arm64",
        sha256 = "42ed3ff5a859f9015a1362fb7e650026b913d688eab471714f795651120be173",
        strip_prefix = "jdk8u322-b06/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u322-b06/OpenJDK8U-jdk_aarch64_linux_hotspot_8u322b06.tar.gz"],
    )

    http_archive(
        name = "jre-11-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_11",
        sha256 = "79572f5172c6a040591d34632f98a20ed148702bbce2f57649e8ac01c0d2e3db",
        strip_prefix = "jdk-11.0.14.1+1/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.14.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.14.1_1.tar.gz"],
    )

    http_archive(
        name = "jre-17-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_17_arm64",
        sha256 = "2e3c19c1707205c6b90cc04b416e8d83078ed98417d5a69dce3cf7dc0d7cfbca",
        strip_prefix = "jdk-17.0.3+7/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.3%2B7/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.3_7.tar.gz"],
    )
