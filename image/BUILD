load("@io_bazel_rules_docker//container:container.bzl", "container_bundle")
load("@io_bazel_rules_docker//contrib:push-all.bzl", "container_push")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "JRE_VERSIONS")

package(default_visibility = ["//visibility:public"])

IMAGES = {}

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":latest": "//image/" + kind + ":" + arch
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
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":debug": "//image/" + kind + ":" + arch + "_debug"
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
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":sh": "//image/" + kind + ":" + arch + "_sh"
        for arch in BASE_ARCHITECTURES
        for kind in ["python"]
    },
)

IMAGES.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + jre + "/java_" + weight + "_" + arch + ":" + version + mode: "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version + mode
        for arch in BASE_ARCHITECTURES
        for jre in [
            "azul",
            "openjdk",
        ]
        for version in JRE_VERSIONS
        for weight in [
            "fat",
            "slim",
        ]
        for mode in [
            "_debug",
            "_sh",
            "",
        ]
    },
)

IMAGES_BRANCH = {}

IMAGES_BRANCH.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":latest_{BRANCH}": "//image/" + kind + ":" + arch
        for arch in BASE_ARCHITECTURES
        for kind in [
            "static",
            "base",
            "cc",
            "python",
        ]
    },
)

IMAGES_BRANCH.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":debug_{BRANCH}": "//image/" + kind + ":" + arch + "_debug"
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
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + kind + "_" + arch + ":sh_{BRANCH}": "//image/" + kind + ":" + arch + "_sh"
        for arch in BASE_ARCHITECTURES
        for kind in ["python"]
    },
)

IMAGES_BRANCH.update(
    {
        "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/{STABLE_PROJECT_NAME}/" + jre + "/java_" + weight + "_" + arch + ":" + version + mode + "_{BRANCH}": "//image/java:" + arch + "_" + jre + "_" + weight + "_" + version + mode
        for arch in BASE_ARCHITECTURES
        for jre in [
            "azul",
            "openjdk",
        ]
        for version in JRE_VERSIONS
        for weight in [
            "fat",
            "slim",
        ]
        for mode in [
            "_debug",
            "_sh",
            "",
        ]
    },
)

container_bundle(
    name = "all",
    images = IMAGES,
)

container_bundle(
    name = "all_branch",
    images = IMAGES_BRANCH,
)

container_push(
    name = "publish",
    bundle = ":all",
    format = "OCI",
    # Push images sequentially, to avoid a bug in rules_docker related to
    # pushing many images in parallel.
    # https://github.com/bazelbuild/rules_docker/issues/525
    sequential = True,
)

container_push(
    name = "publish_branch",
    bundle = ":all_branch",
    format = "OCI",
    # Push images sequentially, to avoid a bug in rules_docker related to
    # pushing many images in parallel.
    # https://github.com/bazelbuild/rules_docker/issues/525
    sequential = True,
)
