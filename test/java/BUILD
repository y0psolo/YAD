load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("//util:constants.bzl", "JRE_VERSIONS")

[
    java_image(
            name = jre + "_" + version + "_checkcerts",
            srcs = ["CheckCerts.java"],
            base = "//image/java:" + jre + "_" + version,
            main_class = "testdata.CheckCerts",
        )
        for jre in [
            "adoptium",
            "azul",
        ]
    for version in JRE_VERSIONS
]

[
    java_image(
        name = jre  + "_" + version + "_checkencoding",
        srcs = ["CheckEncoding.java"],
        base = "//image/java:" + jre + "_" + version,
        main_class = "testdata.CheckEncoding",
    )
    for jre in [
        "adoptium",
        "azul",
    ]
    for version in JRE_VERSIONS
]

[
    container_test(
        name = jre  + "_" + version + "_test",
        configs = ["//test:base.yaml"] + select({
            "//platforms:debug": ["//test:debug.yaml", jre + "_debug.yaml"],
            "//conditions:default": ["//test:core.yaml", jre + ".yaml"],
        }),
        image = "//image/java:" + jre + "_" + version,
        tags = ["java", "amd64", "arm64"],
    )
    for jre in [
        "adoptium",
        "azul",
    ]
    for version in JRE_VERSIONS
]

[
    container_test(
        name = jre + "_" + version + "_checkcerts_test",
        configs = ["checkCerts.yaml"],
        image = ":" + jre + "_" + version + "_checkcerts",
        tags = ["java", "amd64", "arm64"],
    )
    for jre in [
        "adoptium",
        "azul",
    ]
    for version in JRE_VERSIONS
]

[
    container_test(
        name = jre + "_" + version + "_checkencoding_test",
        configs = ["checkEncoding.yaml"],
        image = ":" + jre + "_" + version + "_checkencoding",
        tags = ["java", "amd64", "arm64"],
    )
    for jre in [
        "adoptium",
        "azul",
    ]
    for version in JRE_VERSIONS
]