workspace(name = "yad")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

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

# Get Nodejs archive
http_archive(
    name = "nodejs-14-amd64",
    build_file = "BUILD.nodejs",
    sha256 = "19e376214450e93e58687198070b4ab46e42357032ec65f23a7e35b0e86ad6e2",
    strip_prefix = "node-v14.17.6-linux-x64/",
    urls = ["https://nodejs.org/dist/v14.17.6/node-v14.17.6-linux-x64.tar.gz"],
)

http_archive(
    name = "nodejs-16-amd64",
    build_file = "BUILD.nodejs",
    sha256 = "aa1f366b522a9565332096fdc32ed0cd58a2049c0875d839703d3fe58b4c226d",
    strip_prefix = "node-v16.8.0-linux-x64/",
    urls = ["https://nodejs.org/dist/v16.8.0/node-v16.8.0-linux-x64.tar.gz"],
)

http_archive(
    name = "nodejs-14-arm64",
    build_file = "BUILD.nodejs",
    sha256 = "3355eae15582be48f6be0910e279abbf2324f4538d3ccb2da7e66edab6e6b0fe",
    strip_prefix = "node-v14.17.6-linux-arm64/",
    urls = ["https://nodejs.org/dist/v14.17.6/node-v14.17.6-linux-arm64.tar.gz"],
)

http_archive(
    name = "nodejs-16-arm64",
    build_file = "BUILD.nodejs",
    sha256 = "3f8cbdd3165fb9bf499f0e35bbd2ae4b301f2af5e9f349f82beacdb7278539bb",
    strip_prefix = "node-v16.8.0-linux-arm64/",
    urls = ["https://nodejs.org/dist/v16.8.0/node-v16.8.0-linux-arm64.tar.gz"],
)