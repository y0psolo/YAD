workspace(name = "yad")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Download the Go rules.
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "8e968b5fcea1d2d64071872b12737bbb5514524ee5f0a4f54f5920266c261acb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.28.0/rules_go-v0.28.0.zip",
    ],
)

# Download Gazelle.
http_archive(
    name = "bazel_gazelle",
    sha256 = "62ca106be173579c0a167deb23358fdfe71ffa1e4cfdddf5582af26520f1c66f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.23.0/bazel-gazelle-v0.23.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_rules_dependencies()

go_register_toolchains(version = "1.17")

gazelle_dependencies()

go_repository(
    name = "bazelbuild_buildtools",
    importpath = "github.com/bazelbuild/buildtools",
    sum = "h1:NfGBHio8IumqO1h9CcxJywa+z+YMDBG67pmL5KFMjBg=",
    version = "v0.0.0-20210906142420-5f69634d3489",
)

# Docker rules
http_archive(
    # Get copy paste instructions for the http_archive attributes from the
    # release notes at https://github.com/bazelbuild/rules_docker/releases
    name = "io_bazel_rules_docker",
    sha256 = "59d5b42ac315e7eadffa944e86e90c2990110a1c8075f1cd145f487e999d22b3",
    strip_prefix = "rules_docker-0.17.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.17.0/rules_docker-v0.17.0.tar.gz"],
)

# Package manager rules
http_archive(
    name = "rules_deb_packages",
    sha256 = "674ce7b66c345aaa9ab898608618a0a0db857cbed8e8d0794ca46e375fd5ff76",
    urls = ["https://github.com/petermylemans/rules_deb_packages/releases/download/v0.4.0/rules_deb_packages.tar.gz"],
)

# Load Package manager
load("@rules_deb_packages//:repositories.bzl", "deb_packages_dependencies")

deb_packages_dependencies()

# Ubuntu key
http_file(
    name = "ubuntu_key",
    sha256 = "2b091827ada1affb0670b497dd5613f4d0d054c045690f754f69fa34eb74de1b",
    urls = ["https://keyserver.ubuntu.com/pks/lookup?op=hget&search=12120bd49c566eaf49d31f267ec0b900"],
)

load(":ubuntu_amd64.bzl", "ubuntu_amd64")

ubuntu_amd64()

load(":ubuntu_arm64.bzl", "ubuntu_arm64")

ubuntu_arm64()

# Load Docker rules
load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//java:image.bzl", _java_image_repos = "repositories")

_java_image_repos()

# Load the macro that allows you to customize the docker toolchain configuration.
load(
    "@io_bazel_rules_docker//toolchains/docker:toolchain.bzl",
    docker_toolchain_configure = "toolchain_configure",
)

docker_toolchain_configure(
    name = "docker_config",
    # Replace this with an absolute path to a directory which has a custom docker
    # client config.json. Note relative paths are not supported.
    # Docker allows you to specify custom authentication credentials
    # in the client configuration JSON file.
    # See https://docs.docker.com/engine/reference/commandline/cli/#configuration-files
    # for more details.
    client_config = "/root/.docker",
)

# Load update tools rule
http_archive(
    name = "rules-update",
    sha256 = "943aaf6677ca0ea937093a4fbaf1b12af173b6c06c57b07f5b9c030ea9732fc0",
    urls = ["https://github.com/y0psolo/rules_update/releases/download/v0.1.0/rules_update.tar.gz"],
)

# Load update tools
load("@rules-update//:repositories.bzl", "update_dependencies")

update_dependencies()

# Get Busybox
http_file(
    name = "busybox_amd64",
    downloaded_file_path = "busybox",
    executable = True,
    sha256 = "51fcb60efbdf3e579550e9ab893730df56b33d0cc928a2a6467bd846cdfef7d8",
    urls = ["https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64"],
)

http_file(
    name = "busybox_arm64",
    downloaded_file_path = "busybox",
    executable = True,
    sha256 = "141adb1b625a6f44c4b114f76b4387b4ea4f7ab802b88eb40e0d2f6adcccb1c3",
    urls = ["https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-armv8l"],
)

# Get Java Azul package
http_archive(
    name = "jre-8-azul-amd64",
    build_file = "BUILD.azul_8_amd64",
    sha256 = "9a0d0eb753c3592faca48d5e9b84bcf5b92301fd09081b191623cb8e478349d7",
    strip_prefix = "zulu8.56.0.21-ca-jre8.0.302-linux_x64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu8.56.0.21-ca-jre8.0.302-linux_x64.tar.gz"],
)

http_archive(
    name = "jre-11-azul-amd64",
    build_file = "BUILD.azul_11_amd64",
    sha256 = "c4a41ea4b963796d5a105d6ef015003e3a0aaea830733c4755b22a507f17e741",
    strip_prefix = "zulu11.50.19-ca-jre11.0.12-linux_x64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu11.50.19-ca-jre11.0.12-linux_x64.tar.gz"],
)

http_archive(
    name = "jre-17-azul-amd64",
    build_file = "BUILD.azul_17_amd64",
    sha256 = "d33e55f2874eb30d5953b416e0b9b45b54b0ccaa2fed806dd8bc085f3d1a10e5",
    strip_prefix = "zulu17.28.13-ca-jre17.0.0-linux_x64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu17.28.13-ca-jre17.0.0-linux_x64.tar.gz"],
)

http_archive(
    name = "jre-8-azul-arm64",
    build_file = "BUILD.azul_8_arm64",
    sha256 = "cc917670e2622dbbc243b6f96c9c199de4ed9e5d541acc68abcb9b378013a38c",
    strip_prefix = "zulu8.56.0.23-ca-jdk8.0.302-linux_aarch64/jre/",
    urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu8.56.0.23-ca-jdk8.0.302-linux_aarch64.tar.gz"],
)

http_archive(
    name = "jre-11-azul-arm64",
    build_file = "BUILD.azul_11_arm64",
    sha256 = "61254688067454d3ccf0ef25993b5dcab7b56c8129e53b73566c28a8dd4d48fb",
    strip_prefix = "zulu11.50.19-ca-jdk11.0.12-linux_aarch64/",
    urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu11.50.19-ca-jdk11.0.12-linux_aarch64.tar.gz"],
)

http_archive(
    name = "jre-17-azul-arm64",
    build_file = "BUILD.azul_17_arm64",
    sha256 = "432415e6223a22277764bc5917755ff5412920f62156aa9285372e88fee98324",
    strip_prefix = "zulu17.28.13-ca-jre17.0.0-linux_aarch64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu17.28.13-ca-jre17.0.0-linux_aarch64.tar.gz"],
)

# Get Adoptium package
http_archive(
    name = "jre-8-adoptium-amd64",
    build_file = "BUILD.adoptium_8_amd64",
    sha256 = "a74e63657ad04151a8f95202071d2895f1cc9295c910ad3c361ff1cc27395107",
    strip_prefix = "jdk8u302-b08-jre/",
    urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u302-b08/OpenJDK8U-jre_x64_linux_hotspot_8u302b08.tar.gz"],
)

http_archive(
    name = "jre-11-adoptium-amd64",
    build_file = "BUILD.adoptium_11",
    sha256 = "e813e270b7ea0a13f9c400ce5abd4cb811aacbd536b8909e6c7f0e346f78348c",
    strip_prefix = "jdk-11.0.12+7-jre/",
    urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12+7/OpenJDK11U-jre_x64_linux_hotspot_11.0.12_7.tar.gz"],
)

http_archive(
    name = "jre-17-adoptium-amd64",
    build_file = "BUILD.adoptium_17_amd64",
    sha256 = "6f1335d9a7855159f982dac557420397be9aa85f3f7bc84e111d25871c02c0c7",
    strip_prefix = "jdk-17+35/",
    urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17+35/OpenJDK17-jdk_x64_linux_hotspot_17_35.tar.gz"],
)

http_archive(
    name = "jre-8-adoptium-arm64",
    build_file = "BUILD.adoptium_8_arm64",
    sha256 = "9951a36430c14548f78569135956e929db2554bfc706bb3fe0bf9a14acd28055",
    strip_prefix = "jdk8u302-b08-jre/",
    urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u302-b08/OpenJDK8U-jre_aarch64_linux_hotspot_8u302b08.tar.gz"],
)

http_archive(
    name = "jre-11-adoptium-arm64",
    build_file = "BUILD.adoptium_11",
    sha256 = "eebf9b6b515fd139d45410ea4a0e7c18f015acba41e677cd7a57d1fe7a553681",
    strip_prefix = "jdk-11.0.12+7-jre/",
    urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12+7/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.12_7.tar.gz"],
)

http_archive(
    name = "jre-17-adoptium-arm64",
    build_file = "BUILD.adoptium_17_arm64",
    sha256 = "e08e6d8c84da28a2c49ccd511f8835c329fbdd8e4faff662c58fa24cca74021d",
    strip_prefix = "jdk-17+35/",
    urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17+35/OpenJDK17-jdk_aarch64_linux_hotspot_17_35.tar.gz"],
)

# Get Nodejs archive
http_archive(
    name = "nodejs-14-amd64",
    build_file = "BUILD.nodejs",
    sha256 = "088498c67bab31871a1cab40dbc9b7b82c1abf53a2cf740e061bd6033a74839d",
    strip_prefix = "node-v14.18.1-linux-x64/",
    urls = ["https://nodejs.org/dist/v14.18.1/node-v14.18.1-linux-x64.tar.gz"],
)

http_archive(
    name = "nodejs-16-amd64",
    build_file = "BUILD.nodejs",
    sha256 = "48fba5e9d60e12e777994dafba7b04449c3d0cd004340970fd674220e572a39e",
    strip_prefix = "node-v16.11.1-linux-x64/",
    urls = ["https://nodejs.org/dist/v16.11.1/node-v16.11.1-linux-x64.tar.gz"],
)

http_archive(
    name = "nodejs-14-arm64",
    build_file = "BUILD.nodejs",
    sha256 = "3fcd1c6c008c2dfddea60ede3c735696982fb038288e45c2d35ef6b2098c8220",
    strip_prefix = "node-v14.18.1-linux-arm64/",
    urls = ["https://nodejs.org/dist/v14.18.1/node-v14.18.1-linux-arm64.tar.gz"],
)

http_archive(
    name = "nodejs-16-arm64",
    build_file = "BUILD.nodejs",
    sha256 = "d51b372477287ee41e5bf2d90972868ed28b5c5465bc2df14e86c398926916c1",
    strip_prefix = "node-v16.11.1-linux-arm64/",
    urls = ["https://nodejs.org/dist/v16.11.1/node-v16.11.1-linux-arm64.tar.gz"],
)

# Get Deno archive
http_archive(
    name = "deno-amd64",
    build_file = "BUILD.deno",
    sha256 = "4e401609df1700d01c5c6ba9c79fd372c6affcb712c11b9575f9f916f7c6d70b",
    type = "zip",
    urls = ["https://github.com/denoland/deno/releases/download/v1.15.1/deno-x86_64-unknown-linux-gnu.zip"],
)

# Tini executable
http_file(
    name = "tini_amd64",
    downloaded_file_path = "tini",
    executable = True,
    sha256 = "93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c",
    urls = ["https://github.com/krallin/tini/releases/download/v0.19.0/tini-amd64"],
)

http_file(
    name = "tini_arm64",
    downloaded_file_path = "tini",
    executable = True,
    sha256 = "07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81",
    urls = ["https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64"],
)
