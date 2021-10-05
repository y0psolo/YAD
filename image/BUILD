load("@io_bazel_rules_docker//container:container.bzl", "container_bundle")
load("@io_bazel_rules_docker//contrib:push-all.bzl", "container_push")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "JRE_VERSIONS", "NODEJS_VERSIONS")

package(default_visibility = ["//visibility:public"])

IMAGES = {}

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/" + kind + ":" + arch: "//image/" + kind + ":" + arch
        for arch in BASE_ARCHITECTURES
        for kind in [
            "static",
            "base",
            "cc",
            "python",
        ]
    },
)

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/" + kind + ":" + arch + "_debug": "//image/" + kind + ":" + arch + "_debug"
        for arch in BASE_ARCHITECTURES
        for kind in [
            "static",
            "base",
            "cc",
            "python",
        ]
    },
)

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/" + jre + ":" + arch + "_" + version + mode: "//image/java:" + arch + "_" + jre + "_" + version + mode
        for arch in BASE_ARCHITECTURES
        for jre in [
            "azul",
            "adoptium",
        ]
        for version in JRE_VERSIONS
        for mode in [
            "_debug",
            "",
        ]
    },
)

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/nodejs:" + arch + "_" + version + mode: "//image/nodejs:" + arch + "_" + version + mode
        for arch in BASE_ARCHITECTURES
        for version in NODEJS_VERSIONS
        for mode in [
            "_debug",
            "",
        ]
    },
)

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:latest" : "//image/deno:amd64",
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:debug" : "//image/deno:amd64_debug",
    },
)

container_bundle(
    name = "all",
    images = IMAGES,
)

container_push(
    name = "publish",
    bundle = ":all",
    format = "Docker",
    # Push images sequentially, to avoid a bug in rules_docker related to
    # pushing many images in parallel.
    # https://github.com/bazelbuild/rules_docker/issues/525
    sequential = True,
    skip_unchanged_digest = True,
)
