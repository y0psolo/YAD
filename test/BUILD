load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES")

# Run test on static iamges for static test plan
[
    container_test(
        name = arch + "_static_test",
        configs = ["static/base.yaml"],
        image = "//image/static:" + arch,
    )
    for arch in BASE_ARCHITECTURES
]
[
container_test(
        name = arch + "_static_debug_test",
        configs = ["static/debug.yaml"],
        image = "//image/static:" + arch + "_debug",
    )
    for arch in BASE_ARCHITECTURES
]

# Run test on base image for static and base tests plan
[
    container_test(
        name = arch + "_base_test",
        configs = ["base/base.yaml", "static/base.yaml"],
        image = "//image/base:" + arch,
    )
    for arch in BASE_ARCHITECTURES
]
[
    container_test(
        name = arch + "_base_debug_test",
        configs = ["base/base.yaml", "static/debug.yaml"],
        image = "//image/base:" + arch + "_debug",
    )
    for arch in BASE_ARCHITECTURES
]

# Run test on cc image for static and base tests plan
[
    container_test(
        name = arch + "_cc_test",
        configs = ["base/base.yaml", "static/base.yaml"],
        image = "//image/cc:" + arch,
    )
    for arch in BASE_ARCHITECTURES
]
[
    container_test(
        name = arch + "_cc_debug_test",
        configs = ["base/base.yaml", "static/debug.yaml"],
        image = "//image/cc:" + arch + "_debug",
    )
    for arch in BASE_ARCHITECTURES
]

# Build Test image
[
    java_image(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_checkcerts",
        srcs = ["java/CheckCerts.java"],
        base = "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version,
        main_class = "testdata.CheckCerts",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]
[
    java_image(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_checkencoding",
        srcs = ["java/CheckEncoding.java"],
        base = "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version,
        main_class = "testdata.CheckEncoding",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]

# Run test on java image for static, base and java tests plan
[
    container_test(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_test",
        configs = ["java/" + jre + ".yaml", "base/base.yaml", "static/base.yaml"],
        image = "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version,
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]
[
    container_test(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_sh_test",
        configs = ["java/" + jre + "_sh.yaml", "base/base.yaml", "static/sh.yaml"],
        image = "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version + "_sh",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]
[
    container_test(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_debug_test",
        configs = ["java/" + jre + "_debug.yaml", "base/base.yaml", "static/debug.yaml"],
        image = "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version + "_debug",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]
# Run test on java image for program test plan
[
    container_test(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_checkcerts_test",
        configs = ["java/checkCerts.yaml"],
        image = "//test:" + arch + "_" + jre + "_" + weight + "_" + version + "_checkcerts",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]
[
    container_test(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_checkencoding_test",
        configs = ["java/checkEncoding.yaml"],
        image = "//test:" + arch + "_" + jre + "_" + weight + "_" + version + "_checkencoding",
    )
    for arch in BASE_ARCHITECTURES
    for jre in ["openjdk", "azul"]
    for version in ["8", "11"]
    for weight in ["slim", "fat"]
]

# Run test on python image

[
    container_test(
        name = arch + "_python_test",
        configs = ["base/base.yaml", "static/sh.yaml", "python/python.yaml"],
        image = "//image/python:" + arch,
    )
    for arch in BASE_ARCHITECTURES
]
[
    container_test(
        name = arch + "_python_debug_test",
        configs = ["base/base.yaml", "static/debug.yaml", "python/python.yaml"],
        image = "//image/python:" + arch + "_debug",
    )
    for arch in BASE_ARCHITECTURES
]