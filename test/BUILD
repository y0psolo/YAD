load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("//util:constants.bzl", "NODEJS_VERSIONS", "JRE_VERSIONS")

exports_files(["core.yaml", "debug.yaml", "base.yaml"])

container_test(
    name = "static_test",
    configs = select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/static:static",
)

container_test(
    name = "base_test",
    configs = ["base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/base:base",
)

container_test(
    name = "cc_test",
    configs = ["base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["core.yaml"],
    }),
    image = "//image/cc:cc",
)

container_test(
    name = "python_test",
    configs = ["python.yaml", "base.yaml"] + select({
        "//platforms:debug": ["debug.yaml"],
        "//conditions:default": ["sh.yaml"],
    }),
    image = "//image/python:python",
)

test_suite(
    name = "images",
    tests = [":static_test", ":base_test", ":cc_test", ":python_test",] 
        + ["//test/nodejs:" + version + "_typescript_test" for version in NODEJS_VERSIONS]
        + ["//test/nodejs:" + version + "_test" for version in NODEJS_VERSIONS]
        + ["//test/java:adoptium_" + version + "_test" for version in JRE_VERSIONS]
        + ["//test/java:azul_" + version + "_test" for version in JRE_VERSIONS]
        + ["//test/java:adoptium_" + version + "_checkcerts_test" for version in JRE_VERSIONS]
        + ["//test/java:azul_" + version + "_checkcerts_test" for version in JRE_VERSIONS]
        + ["//test/java:adoptium_" + version + "_checkencoding_test" for version in JRE_VERSIONS]
        + ["//test/java:azul_" + version + "_checkencoding_test" for version in JRE_VERSIONS]
)

test_suite(
    name = "images_amd64_only",
    tests = [
        "//test/deno:image_test",
        "//test/deno:typescript_test",
    ],
)