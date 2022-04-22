load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def java_repository():
    # Get Java Azul package
    http_archive(
        name = "jre-8-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_8_amd64",
        sha256 = "81e2feef66b1886788da36309e7de5adcb4e0d53c6c31ed40cd3801495a0fe93",
        strip_prefix = "zulu8.60.0.21-ca-jre8.0.322-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu8.60.0.21-ca-jre8.0.322-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_11_amd64",
        sha256 = "ddc9c3aa34dc87d872ca2f4a909db20c6a388abdf5b87220cb21cf1434d4630b",
        strip_prefix = "zulu11.54.25-ca-jre11.0.14.1-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu11.54.25-ca-jre11.0.14.1-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_17_amd64",
        sha256 = "5edd8b1f7f702a273d72219178b2803cab6a5d137299a729e2551feac2ae1e65",
        strip_prefix = "zulu17.32.13-ca-jre17.0.2-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jre17.0.2-linux_x64.tar.gz"],
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
        sha256 = "889ad19ac1e3a73186eeaaf0ac0dce4a7b6c2473ef23c6fdc6e3abde3ef8c150",
        strip_prefix = "zulu17.32.13-ca-jre17.0.2-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jre17.0.2-linux_aarch64.tar.gz"],
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
        sha256 = "43fb84f8063ad9bf6b6d694a67b8f64c8827552b920ec5ce794dfe5602edffe7",
        strip_prefix = "jdk-11.0.14.1+1/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.14.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.14.1_1.tar.gz"],
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
        sha256 = "302caf29f73481b2b914ba2b89705036010c65eb9bc8d7712b27d6e9bedf6200",
        strip_prefix = "jdk-17.0.2+8/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.2%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.2_8.tar.gz"],
    )
