load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//update:constants.bzl", "SPARK_VERSIONS")

[
    container_image(
        name = "spark_" + version + "_image_test",
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        symlinks = {
            "/home/nonroot/examples" : "/opt/spark/examples",
        },
        tars = ["@spark_hadoop_" + version + "//:examples_tar",],
        visibility = ["//:__subpackages__"],
        base = "//image/spark:spark_" + version,
    )
    for version in SPARK_VERSIONS
]

[
    container_image(
        name = "pyspark_" + version + "_image_test",
        architecture = select({
            "//platforms:k8_cpu": "amd64",
            "//platforms:aarch64_cpu": "arm64",
        }),
        symlinks = {
            "/home/nonroot/examples/" : "/opt/spark/examples/",
        },
        env = {
            "SPARK_LOCAL_DIRS" : "/tmp",
        },
        tars = ["@spark_hadoop_" + version + "//:examples_tar"],
        visibility = ["//:__subpackages__"],
        base = "//image/spark:pyspark_" + version,
    )
    for version in SPARK_VERSIONS
]

[
    container_test(
        name = "spark_" + version + "_test",
        configs = ["java_" + version + ".yaml"],
        image = ":spark_" + version + "_image_test",
        tags = ["spark", "amd64", "arm64", version],
    )
    for version in SPARK_VERSIONS
]

[
    container_test(
        name = "pyspark_" + version + "_test",
        configs = ["python_" + version + ".yaml"],
        image = ":pyspark_" + version + "_image_test",
        tags = ["spark", "amd64", "arm64", version],
    )
    for version in SPARK_VERSIONS
]

[
    container_test(
        name = "spark_" + version + "_historyserver_test",
        configs = ["historyserver_" + version + ".yaml"],
        image = "//image/spark:sparkhistoryserver_" + version,
        tags = ["spark", "amd64", "arm64", version],
    )
    for version in SPARK_VERSIONS
]

test_suite(
    name = "spark",
    tags = ["spark"],
)

test_suite(
    name = "spark2",
    tags = ["spark", "2.4"],
)

test_suite(
    name = "spark3",
    tags = ["spark", "-2.4"],
)