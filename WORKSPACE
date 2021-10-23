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
    sha256 = "4ba0974884271a20447ddf15e247175c3c98621a5d57eeaa152150bbf8ca86d9",
    urls = ["https://github.com/y0psolo/rules_update/releases/download/v0.2.0/rules_update.tar.gz"],
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
    sha256 = "e1e893f7b2b2c3574761ee1541aa170809865855c2a0879c97cce0a449297c6f",
    strip_prefix = "zulu8.58.0.13-ca-jre8.0.312-linux_x64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu8.58.0.13-ca-jre8.0.312-linux_x64.tar.gz"],
)

http_archive(
    name = "jre-11-azul-amd64",
    build_file = "BUILD.azul_11_amd64",
    sha256 = "cf2190407bd07f763479fc3d9e250a10238df1d02d8de389ce3a65921d1298fa",
    strip_prefix = "zulu11.52.13-ca-jre11.0.13-linux_x64/",
    urls = ["https://cdn.azul.com/zulu/bin/zulu11.52.13-ca-jre11.0.13-linux_x64.tar.gz"],
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
    sha256 = "a3e9f7cfe55eb9ed9dfd87e38d61240c8bbf8543125ff9ae905ffb73bc625e06",
    strip_prefix = "zulu8.58.0.13-ca-jdk8.0.312-linux_aarch64/jre/",
    urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu8.58.0.13-ca-jdk8.0.312-linux_aarch64.tar.gz"],
)

http_archive(
    name = "jre-11-azul-arm64",
    build_file = "BUILD.azul_11_arm64",
    sha256 = "6be187379c26506a4b804b4f734c17e554aebe4204bde58a10b429054cc9cf9f",
    strip_prefix = "zulu11.52.13-ca-jdk11.0.13-linux_aarch64/",
    urls = ["https://cdn.azul.com/zulu-embedded/bin/zulu11.52.13-ca-jdk11.0.13-linux_aarch64.tar.gz"],
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
    sha256 = "699981083983b60a7eeb511ad640fae3ae4b879de5a3980fe837e8ade9c34a08",
    strip_prefix = "jdk8u312-b07/jre/",
    urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u312-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u312b07.tar.gz"],
)

http_archive(
    name = "jre-11-adoptium-amd64",
    build_file = "BUILD.adoptium_11",
    sha256 = "3b1c0c34be4c894e64135a454f2d5aaa4bd10aea04ec2fa0c0efe6bb26528e30",
    strip_prefix = "jdk-11.0.13+8/",
    urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz"],
)

http_archive(
    name = "jre-17-adoptium-amd64",
    build_file = "BUILD.adoptium_17_amd64",
    sha256 = "6f1335d9a7855159f982dac557420397be9aa85f3f7bc84e111d25871c02c0c7",
    strip_prefix = "jdk-17+35/",
    urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17%2B35/OpenJDK17-jdk_x64_linux_hotspot_17_35.tar.gz"],
)

http_archive(
    name = "jre-8-adoptium-arm64",
    build_file = "BUILD.adoptium_8_arm64",
    sha256 = "f287cdc2a688c2df247ea0d8bfe2863645b73848e4e5c35b02a8a3d2d6b69551",
    strip_prefix = "jdk8u302-b08/jre/",
    urls = ["https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u302-b08/OpenJDK8U-jdk_aarch64_linux_hotspot_8u302b08.tar.gz"],
)

http_archive(
    name = "jre-11-adoptium-arm64",
    build_file = "BUILD.adoptium_11",
    sha256 = "a77013bff10a5e9c59159231dd5c4bd071fc4c24beed42bd49b82803ba9506ef",
    strip_prefix = "jdk-11.0.13+8/",
    urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.13_8.tar.gz"],
)

http_archive(
    name = "jre-17-adoptium-arm64",
    build_file = "BUILD.adoptium_17_arm64",
    sha256 = "e08e6d8c84da28a2c49ccd511f8835c329fbdd8e4faff662c58fa24cca74021d",
    strip_prefix = "jdk-17+35/",
    urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17%2B35/OpenJDK17-jdk_aarch64_linux_hotspot_17_35.tar.gz"],
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
    sha256 = "1f41d5b68ca39eb2e76dad4e5beb8de8b0a1498773e3e53b80c03e42202969fb",
    strip_prefix = "node-v16.12.0-linux-x64/",
    urls = ["https://nodejs.org/dist/v16.12.0/node-v16.12.0-linux-x64.tar.gz"],
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
    sha256 = "2abb224a6d9880d459ed64a02876b5843ca891978b072e7516431b15142a472c",
    strip_prefix = "node-v16.12.0-linux-arm64/",
    urls = ["https://nodejs.org/dist/v16.12.0/node-v16.12.0-linux-arm64.tar.gz"],
)

# Get Deno archive
http_archive(
    name = "deno-amd64",
    build_file = "BUILD.deno",
    sha256 = "dd64ab38c5d0a70f83ad63c0297c8cdbb4ac667d43eb6e48731dce5bd4635bfd",
    type = "zip",
    urls = ["https://github.com/denoland/deno/releases/download/v1.15.2/deno-x86_64-unknown-linux-gnu.zip"],
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
