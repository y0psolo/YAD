workspace(name = "yad")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Download the Go rules.
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
    ],
)

# Download Gazelle.
http_archive(
    name = "bazel_gazelle",
    sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

go_rules_dependencies()

go_register_toolchains(version = "1.17.2")

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
    sha256 = "59536e6ae64359b716ba9c46c39183403b01eabfbd57578e84398b4829ca499a",
    strip_prefix = "rules_docker-0.22.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.22.0/rules_docker-v0.22.0.tar.gz"],
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

load("//deps/core:repository.bzl", "core_repository")

core_repository()

load("//deps/nodejs:repository.bzl", "nodejs_repository")

nodejs_repository()

load("//deps/java:repository.bzl", "java_repository")

java_repository()

load("//deps/deno:repository.bzl", "deno_repository")

deno_repository()

load("//deps/hadoop:repository.bzl", "hadoop_repository")

hadoop_repository()

load("//deps/hive:repository.bzl", "hive_repository")

hive_repository()

load("//deps/spark:repository.bzl", "spark_repository")

spark_repository()

load("//deps/trino:repository.bzl", "trino_repository")

trino_repository()
