load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def java_repository():
    # Get Java Azul package
    http_archive(
        name = "jre-8-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_8_amd64",
        sha256 = "661024a0bc3aa43d51886ae48a6866e7f81239f7e9ff205d57caf3d005b75633",
        strip_prefix = "zulu8.64.0.15-ca-jre8.0.342-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu8.64.0.15-ca-jre8.0.342-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-11-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_11_amd64",
        sha256 = "42c5533cb579e96de456ce7fcabbc64c08bc15f029cf122bc1c436cb8bc35eab",
        strip_prefix = "zulu11.58.15-ca-jre11.0.16-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu11.58.15-ca-jre11.0.16-linux_x64.tar.gz"],
    )

    http_archive(
        name = "jre-17-azul-amd64",
        build_file = "//ext/azul:BUILD.azul_17_amd64",
        sha256 = "7e7b989f23d318dd5665ee35e2f70d4dd5b8d723f1e823bcef1e0c65112923f3",
        strip_prefix = "zulu17.36.13-ca-jre17.0.4-linux_x64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.36.13-ca-jre17.0.4-linux_x64.tar.gz"],
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
        sha256 = "270ebd0eab67f705782f66ab6a8e4b7e4cc00a8c62416242d11fc5199e704469",
        strip_prefix = "zulu17.36.13-ca-jre17.0.4-linux_aarch64/",
        urls = ["https://cdn.azul.com/zulu/bin/zulu17.36.13-ca-jre17.0.4-linux_aarch64.tar.gz"],
    )

    # Get Adoptium package
    http_archive(
        name = "jre-8-adoptium-amd64",
        build_file = "//ext/adoptium:BUILD.adoptium_8_amd64",
        sha256 = "adc13a0a0540d77f0a3481b48f10d61eb203e5ad4914507d489c2de3bd3d83da",
        strip_prefix = "jdk8u332-b09/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u332-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u332b09.tar.gz"],
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
        sha256 = "d10efb2afad3ed3d7bac9d3249cea77928aca6acb973cac0f90a2dd3606a3533",
        strip_prefix = "jdk8u332-b09/jre/",
        urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u332-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u332b09.tar.gz"],
    )

    http_archive(
        name = "jre-11-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_11",
        sha256 = "999fbd90b070f9896142f0eb28354abbeb367cbe49fd86885c626e2999189e0a",
        strip_prefix = "jdk-11.0.15+10/",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.15%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.15_10.tar.gz"],
    )

    http_archive(
        name = "jre-17-adoptium-arm64",
        build_file = "//ext/adoptium:BUILD.adoptium_17_arm64",
        sha256 = "2e3c19c1707205c6b90cc04b416e8d83078ed98417d5a69dce3cf7dc0d7cfbca",
        strip_prefix = "jdk-17.0.3+7/",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.3%2B7/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.3_7.tar.gz"],
    )
