load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "NONROOT")


container_image(
    name = "server",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    env = {
        "CLASSPATH": "/opt/trino/lib/*:/etc/trino:/opt/trino/plugin",
        "JAVA_TOOL_OPTIONS": "-Xmx16G -XX:-UseBiasedLocking -XX:+UseG1GC -XX:G1HeapRegionSize=32M -XX:+ExplicitGCInvokesConcurrent -XX:+ExitOnOutOfMemoryError -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow -XX:ReservedCodeCacheSize=512M -XX:PerMethodRecompilationCutoff=10000 -XX:PerBytecodeRecompilationCutoff=10000 -Djdk.attach.allowAttachSelf=true -Djdk.nio.maxCachedBufferSize=2000000 -Dnode.data-dir=/data/trino -Dplugin.dir=/opt/trino/plugin -Dlog.levels-file=/etc/trino/log.properties -Dconfig=/etc/trino/config.properties",
    },
    entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/java",
            "-server",
            "io.trino.server.TrinoServer",
    ],
    volumes = ["/data/trino",],
    workdir = "/data/trino",
    ports = ["8080",],
    layers = [
        "//layer/static:static",
        "//layer/base:base",
        "//layer/cc:cc",
        "//layer/common:common",
        "//layer/java:common",
        "//layer/java:11",
        "//layer/trino:server",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    compression = "gzip",
    compression_options = ["",],
)

container_image(
    name = "cli",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    entrypoint = [
        "/usr/bin/trino-cli.jar",
    ],
    layers = [
        "//layer/static:static",
        "//layer/base:base",
        "//layer/cc:cc",
        "//layer/common:common",
        "//layer/java:common",
        "//layer/java:11",
        "//layer/trino:cli",
    ],
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)