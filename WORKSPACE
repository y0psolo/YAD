workspace(name = "yad")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

http_archive(
    name = "bazel_skylib",
    sha256 = "c6966ec828da198c5d9adbaa94c05e3a1c7f21bd012a0b29ba8ddbccb2c93b0d",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.1.1/bazel-skylib-1.1.1.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

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

# Rule repository
http_archive(
    name = "rules_foreign_cc",
    strip_prefix = "rules_foreign_cc-main",
    url = "https://github.com/bazelbuild/rules_foreign_cc/archive/refs/heads/main.zip",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

# Docker rules
http_archive(
    # Get copy paste instructions for the http_archive attributes from the
    # release notes at https://github.com/bazelbuild/rules_docker/releases
    name = "io_bazel_rules_docker",
    patch_args = ["-p1"],
    patches = ["//:rules_docker.patch"],
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

http_file(
    name = "guava",
    downloaded_file_path = "guava-31.1-jre.jar",
    sha256 = "a42edc9cab792e39fe39bb94f3fca655ed157ff87a8af78e1d6ba5b07c4a00ab",
    urls = ["https://repo1.maven.org/maven2/com/google/guava/guava/31.1-jre/guava-31.1-jre.jar"],
)

http_file(
    name = "aws-java-sdk-bundle",
    downloaded_file_path = "aws-java-sdk-bundle-1.12.247.jar",
    sha256 = "6dce33ddc6d5faf05984111537e0f91da7759e1825c57f819a8056c4e99dd462",
    urls = ["https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.247/aws-java-sdk-bundle-1.12.247.jar"],
)

# Log4j library for spark

http_file(
    name = "log4j-core",
    downloaded_file_path = "log4j-core-2.17.2.jar",
    sha256 = "5adb34ff4197cd16a8d24f63035856a933cb59562a6888dde86e9450fcfef646",
    urls = ["https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.17.2/log4j-core-2.17.2.jar"],
)

http_file(
    name = "log4j-api",
    downloaded_file_path = "log4j-api-2.17.2.jar",
    sha256 = "09351b5a03828f369cdcff76f4ed39e6a6fc20f24f046935d0b28ef5152f8ce4",
    urls = ["https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.17.2/log4j-api-2.17.2.jar"],
)

http_file(
    name = "log4j-1.2-api",
    downloaded_file_path = "log4j-1.2-api-2.17.2.jar",
    sha256 = "dd8c649a46c5d80ad11394d68c133ba8e9a91acf99b7b9920dd5b6ad3f5adfa8",
    urls = ["https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-1.2-api/2.17.2/log4j-1.2-api-2.17.2.jar"],
)

http_file(
    name = "log4j-slf4j-impl",
    downloaded_file_path = "log4j-slf4j-impl-2.17.2.jar",
    sha256 = "77912d47190a5d25d583728e048496a92a2cb32308b71d3439931d7719996637",
    urls = ["https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-slf4j-impl/2.17.2/log4j-slf4j-impl-2.17.2.jar"],
)

http_file(
    name = "log4j-layout-template-json",
    downloaded_file_path = "log4j-layout-template-json-2.17.2.jar",
    sha256 = "32c22efd1c3f468d5b0e2867e9f562d3db64386916d8bb0a57779a33e58d51e7",
    urls = ["https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-layout-template-json/2.17.2/log4j-layout-template-json-2.17.2.jar"],
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

load("//deps/mariadb:repository.bzl", "mariadb_repository")

mariadb_repository()

load("//deps/redis:repository.bzl", "redis_repository")

redis_repository()

load("//deps/consultemplate:repository.bzl", "consultemplate_repository")

consultemplate_repository()

load("//deps/prometheus:repository.bzl", "prometheus_repository")

prometheus_repository()
