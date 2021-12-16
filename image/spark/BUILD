load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "SPARK_VERSIONS", "NONROOT")
load(":util.bzl", "java_version")

[
    container_image(
        name = "spark_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        debs = select({
            "//platforms:k8_cpu_focal": [ ubuntu_focal_amd64["libtinfo6"], ],
            "//platforms:aarch64_cpu_focal": [ ubuntu_focal_arm64["libtinfo6"], ],
            "//platforms:k8_cpu_bionic": [ ubuntu_bionic_amd64["libtinfo6"], ],
            "//platforms:aarch64_cpu_bionic": [ ubuntu_bionic_arm64["libtinfo6"], ],
        }),
        entrypoint = [
                "/usr/bin/tini",
                "--",
                "/opt/spark/bin/spark-submit",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/common:common",
            "//layer/java:common",
            "//layer/java:" + java_version(version),
            "//layer/spark:spark" + version,
        ],
        visibility = ["//:__subpackages__"],
        user = "%d" % NONROOT,
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in SPARK_VERSIONS
]

[
    container_image(
        name = "sparkhistoryserver_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        debs = select({
            "//platforms:k8_cpu_focal": [ ubuntu_focal_amd64["libtinfo6"], ],
            "//platforms:aarch64_cpu_focal": [ ubuntu_focal_arm64["libtinfo6"], ],
            "//platforms:k8_cpu_bionic": [ ubuntu_bionic_amd64["libtinfo6"], ],
            "//platforms:aarch64_cpu_bionic": [ ubuntu_bionic_arm64["libtinfo6"], ],
        }),
        entrypoint = [
                "/usr/bin/tini",
                "--",
                "/opt/spark/bin/spark-class",
                "org.apache.spark.deploy.history.HistoryServer",
        ],
        ports = ["18080"],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/common:common",
            "//layer/java:common",
            "//layer/java:" + java_version(version),
            "//layer/spark:spark" + version,
        ],
        visibility = ["//:__subpackages__"],
        user = "%d" % NONROOT,
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in SPARK_VERSIONS
]

[
    container_image(
        name = "pyspark_" + version,
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        env = {
            "PYTHONPATH": "$${SPARK_HOME}/python/lib/pyspark.zip:$${SPARK_HOME}/python/lib/py4j-*.zip",
        },
        entrypoint = [
                "/usr/bin/tini",
                "--",
                "/opt/spark/bin/spark-submit",
        ],
        layers = [
            "//layer/static:static",
            "//layer/base:base",
            "//layer/cc:cc",
            "//layer/common:common",
            "//layer/java:common",
            "//layer/java:" + java_version(version),
            "//layer/python:python",
            "//layer/spark:spark" + version,
            "//layer/spark:pyspark" + version,
        ],
        visibility = ["//:__subpackages__"],
        user = "%d" % NONROOT,
        workdir = "/home/nonroot",
        compression = "gzip",
        compression_options = ["",],
    )
    for version in SPARK_VERSIONS
]