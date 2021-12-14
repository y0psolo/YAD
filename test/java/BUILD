load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("//util:constants.bzl", "JRE_VERSIONS")

[
    java_image(
        name = version + "_checkcerts",
        srcs = ["CheckCerts.java"],
        base = "//image/java:" + version,
        main_class = "testdata.CheckCerts",
    )
    for version in JRE_VERSIONS
]

[
    java_image(
        name = version + "_checkencoding",
        srcs = ["CheckEncoding.java"],
        base = "//image/java:" + version,
        main_class = "testdata.CheckEncoding",
    )
    for version in JRE_VERSIONS
]

[
    container_test(
        name = version + "_test",
        configs = ["//test:base.yaml"] + select({
            "//platforms:debug_azul": ["//test:debug.yaml", "azul_debug.yaml"],
            "//platforms:debug_adoptium": ["//test:debug.yaml", "adoptium_debug.yaml"],
            "//platforms:opt_azul": ["//test:core.yaml", "azul.yaml"],
            "//platforms:opt_adoptium": ["//test:core.yaml", "adoptium.yaml"],
        }),
        image = "//image/java:" + version,
        tags = ["java", "amd64", "arm64"],
    )
    for version in JRE_VERSIONS
]

[
    container_test(
        name = version + "_checkcerts_test",
        configs = ["checkCerts.yaml"],
        image = ":" + version + "_checkcerts",
        tags = ["java", "amd64", "arm64"],
    )
    for version in JRE_VERSIONS
]

[
    container_test(
        name = version + "_checkencoding_test",
        configs = ["checkEncoding.yaml"],
        image = ":" + version + "_checkencoding",
        tags = ["java", "amd64", "arm64"],
    )
    for version in JRE_VERSIONS
]

test_suite(
    name = "java",
    tags = ["java",],
)