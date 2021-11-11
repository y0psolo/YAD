load("@io_bazel_rules_docker//container:container.bzl", "container_bundle")
load("@io_bazel_rules_docker//contrib:push-all.bzl", "container_push")
load("//util:constants.bzl", "JRE_VERSIONS", "NODEJS_VERSIONS")

package(default_visibility = ["//visibility:public"])

IMAGES_AMD64 = {
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/static:amd64": "//image/static:static",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/base:amd64": "//image/base:base",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/cc:amd64": "//image/cc:cc",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/python:amd64": "//image/python:python",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:amd64": "//image/deno:deno",
}
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/azul:amd64_" + version : "//image/java:azul_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/adoptium:amd64_" + version : "//image/java:adoptium_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/nodejs:amd64_" + version : "//image/nodejs:" + version for version in NODEJS_VERSIONS},)

IMAGES_ARM64 = {
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/static:arm64": "//image/static:static",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/base:arm64": "//image/base:base",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/cc:arm64": "//image/cc:cc",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/python:arm64": "//image/python:python",
#    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:arm64": "//image/deno:deno",
}
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/azul:arm64_" + version : "//image/java:azul_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/adoptium:arm64_" + version : "//image/java:adoptium_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/nodejs:arm64_" + version : "//image/nodejs:" + version for version in NODEJS_VERSIONS},)

IMAGES_AMD64_DEBUG = {
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/static:amd64_debug": "//image/static:static",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/base:amd64_debug": "//image/base:base",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/cc:amd64_debug": "//image/cc:cc",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/python:amd64_debug": "//image/python:python",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:amd64_debug": "//image/deno:deno",
}
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/azul:amd64_" + version + "_debug": "//image/java:azul_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/adoptium:amd64_" + version + "_debug": "//image/java:adoptium_" + version for version in JRE_VERSIONS},)
IMAGES_AMD64.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/nodejs:amd64_" + version + "_debug": "//image/nodejs:" + version for version in NODEJS_VERSIONS},)

IMAGES_ARM64_DEBUG = {
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/static:arm64_debug": "//image/static:static",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/base:arm64_debug": "//image/base:base",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/cc:arm64_debug": "//image/cc:cc",
    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/python:arm64_debug": "//image/python:python",
#    "{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/deno:arm64_debug": "//image/deno:deno",
}
IMAGES_ARM64_DEBUG.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/azul:arm64_" + version + "_debug": "//image/java:azul_" + version for version in JRE_VERSIONS},)
IMAGES_ARM64_DEBUG.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/adoptium:arm64_" + version + "_debug": "//image/java:adoptium_" + version for version in JRE_VERSIONS},)
IMAGES_ARM64_DEBUG.update({"{REGISTRY}/{STABLE_PROJECT_NAMESPACE}/nodejs:arm64_" + version + "_debug": "//image/nodejs:" + version for version in NODEJS_VERSIONS},)

container_bundle(
    name = "bundle_amd64",
    images = IMAGES_AMD64,
)

container_bundle(
    name = "bundle_arm64",
    images = IMAGES_ARM64,
)

container_bundle(
    name = "bundle_amd64_debug",
    images = IMAGES_AMD64_DEBUG,
)

container_bundle(
    name = "bundle_arm64_debug",
    images = IMAGES_ARM64_DEBUG,
)

alias(
    name = "bundle",
    actual = select({
            "//platforms:amd64": ":bundle_amd64",
            "//platforms:arm64": ":bundle_arm64",
            "//platforms:amd64_debug": ":bundle_amd64_debug",
            "//platforms:arm64_debug": ":bundle_arm64_debug",
            "//conditions:default" : ":bundle_empty"
    }),
)

container_push(
    name = "push",
    bundle = ":bundle",
    format = "Docker",
    # Push images sequentially, to avoid a bug in rules_docker related to
    # pushing many images in parallel.
    # https://github.com/bazelbuild/rules_docker/issues/525
    sequential = True,
)
