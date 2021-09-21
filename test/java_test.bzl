load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "JRE_VERSIONS")

def java_test():
    # Build Test image
    [
        java_image(
            name = arch + "_" + jre + "_" + version + "_checkcerts",
            srcs = ["java/CheckCerts.java"],
            base = "//image/java:" + arch + "_" + jre + "_" + version,
            main_class = "testdata.CheckCerts",
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]

    [
        java_image(
            name = arch + "_" + jre  + "_" + version + "_checkencoding",
            srcs = ["java/CheckEncoding.java"],
            base = "//image/java:" + arch + "_" + jre + "_" + version,
            main_class = "testdata.CheckEncoding",
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]

    # Run test on java image for static, base and java tests plan
    [
        container_test(
            name = arch + "_" + jre  + "_" + version + "_test",
            configs = [
                "java/" + jre + ".yaml",
                "base/base.yaml",
                "static/base.yaml",
            ],
            image = "//image/java:" + arch + "_" + jre + "_" + version,
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]

    [
        container_test(
            name = arch + "_" + jre + "_" + version + "_debug_test",
            configs = [
                "java/" + jre + "_debug.yaml",
                "base/base.yaml",
                "static/debug.yaml",
            ],
            image = "//image/java:" + arch + "_" + jre + "_" + version + "_debug",
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]

    # Run test on java image for program test plan
    [
        container_test(
            name = arch + "_" + jre + "_" + version + "_checkcerts_test",
            configs = ["java/checkCerts.yaml"],
            image = "//test:" + arch + "_" + jre + "_" + version + "_checkcerts",
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]

    [
        container_test(
            name = arch + "_" + jre + "_" + version + "_checkencoding_test",
            configs = ["java/checkEncoding.yaml"],
            image = "//test:" + arch + "_" + jre + "_" + version + "_checkencoding",
        )
        for arch in BASE_ARCHITECTURES
        for jre in [
            "adoptium",
            "azul",
        ]
        for version in JRE_VERSIONS
    ]
