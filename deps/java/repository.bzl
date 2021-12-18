load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def java_repository():
    # Get Java Azul package
    http_archive(
        name = "jre-8-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_8_amd64",
        sha256 = "e1e893f7b2b2c3574761ee1541aa170809865855c2a0879c97cce0a449297c6f",
        strip_prefix = "zulu8.58.0.13-ca-jre8.0.312-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu8.58.0.13-ca-jre8.0.312-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_11_amd64",
        sha256 = "cf2190407bd07f763479fc3d9e250a10238df1d02d8de389ce3a65921d1298fa",
        strip_prefix = "zulu11.52.13-ca-jre11.0.13-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu11.52.13-ca-jre11.0.13-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_17_amd64",
        sha256 = "1fc247d0482ff5b0a9735bcc4cf617297ae4d606f84fdbcd09774dcf2bbb2fd7",
        strip_prefix = "zulu17.30.15-ca-jre17.0.1-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.30.15-ca-jre17.0.1-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-8-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_8_arm64",
        sha256 = "a3e9f7cfe55eb9ed9dfd87e38d61240c8bbf8543125ff9ae905ffb73bc625e06",
        strip_prefix = "zulu8.58.0.13-ca-jdk8.0.312-linux_aarch64/jre/",
        urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu8.58.0.13-ca-jdk8.0.312-linux_aarch64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_11_arm64",
        sha256 = "6be187379c26506a4b804b4f734c17e554aebe4204bde58a10b429054cc9cf9f",
        strip_prefix = "zulu11.52.13-ca-jdk11.0.13-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu11.52.13-ca-jdk11.0.13-linux_aarch64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-arm64",
        build_file = "//ext/azul:BUILD.azul_17_arm64",
        sha256 = "162a67e76b44c7d8ecfe0150cfc3e8732dd9c6b9b2770dd233feb5b7daf05d8a",
        strip_prefix = "zulu17.30.15-ca-jre17.0.1-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.30.15-ca-jre17.0.1-linux_aarch64.tar.gz"],
    )

    # Get Adoptium package
    http_archive(
        name = "jre-8-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_8_amd64",
        sha256 = "699981083983b60a7eeb511ad640fae3ae4b879de5a3980fe837e8ade9c34a08",
        strip_prefix = "jdk8u312-b07/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u312-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u312b07.tar.gz"],
    )

    http_archive(
        name = "jre-11-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_11",
        sha256 = "3b1c0c34be4c894e64135a454f2d5aaa4bd10aea04ec2fa0c0efe6bb26528e30",
        strip_prefix = "jdk-11.0.13+8/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz"],
    )

    http_archive(
        name = "jre-17-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_17_amd64",
        sha256 = "6ea18c276dcbb8522feeebcfc3a4b5cb7c7e7368ba8590d3326c6c3efc5448b6",
        strip_prefix = "jdk-17.0.1+12/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_x64_linux_hotspot_17.0.1_12.tar.gz"],
    )

    http_archive(
        name = "jre-8-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_8_arm64",
        sha256 = "87ff502eba3008cac71edeb9595398a73dc14883fe3072d152e731bf0877897e",
        strip_prefix = "jdk8u312-b07/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u312-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u312b07.tar.gz"],
    )

    http_archive(
        name = "jre-11-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_11",
        sha256 = "a77013bff10a5e9c59159231dd5c4bd071fc4c24beed42bd49b82803ba9506ef",
        strip_prefix = "jdk-11.0.13+8/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.13_8.tar.gz"],
    )

    http_archive(
        name = "jre-17-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_17_arm64",
        sha256 = "f23d482b2b4ada08166201d1a0e299e3e371fdca5cd7288dcbd81ae82f3a75e3",
        strip_prefix = "jdk-17.0.1+12/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.1_12.tar.gz"],
    )
