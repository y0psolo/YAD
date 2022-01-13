load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "NONROOT")

container_image(
    name = "hivemetastore",
    architecture = select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    }),
    env = {
        "CLASSPATH": "/etc/hive:/opt/hive/lib/*:/opt/hadoop:/opt/hadoop/share/hadoop/common/lib/*:/opt/hadoop/share/hadoop/common/*",
        "JAVA_TOOL_OPTIONS" : "-Dproc_run -Dproc_metastore -Dlog4j.configurationFile=metastore-log4j2.properties -Dyarn.log.dir=/var/logs -Dyarn.log.file=hadoop.log -Dyarn.home.dir=/opt/hadoop -Dyarn.root.logger=INFO,console -Xmx256m -Dhadoop.log.dir=/var/logs -Dhadoop.log.file=hadoop.log -Dhadoop.home.dir=/opt/hadoop -Dhadoop.root.logger=INFO,console -Dhadoop.security.logger=INFO,NullAppender -Dhadoop.id.str=nonroot",
    },
    entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/java",
            "org.apache.hadoop.util.RunJar",
            "/opt/hive/lib/hive-standalone-metastore.jar",
    ],
    ports = ["9083",],
    layers = [        
        "//layer/static:static",
        "//layer/base:base",
        "//layer/cc:cc",
        "//layer/common:common",
        "//layer/java:common",
        "//layer/java:8",
        "//layer/hivemetastore:hivemetastore",
    ] + select({
        "//platforms:debug": ["//layer/static:debug"],
        "//conditions:default": [],
    }),
    user = "%d" % NONROOT,
    visibility = ["//:__subpackages__"],
    workdir = "/home/nonroot",
    compression = "gzip",
    compression_options = ["",],
)