load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "NODEJS_VERSIONS", "NODEJS_VERSIONS_MAPPINGS")

[
    pkg_tar(
        name = arch + "_" + version + "_tar",
        srcs = [
            "@nodejs-" + version + "-" + arch + "//:files",
        ],
        owner = "0.0",
        package_dir = "/usr/lib/nodejs",
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = {
            "../nodejs-" + version + "-" + arch + "/": "./",
        },
        strip_prefix = ".",
    )
    for version in NODEJS_VERSIONS
    for arch in BASE_ARCHITECTURES
]

[
    container_layer(
        name = arch + "_" + version,
        env = {
            "NODEJS_VERSION": NODEJS_VERSIONS_MAPPINGS[version],
        },
        symlinks = {
            "/usr/bin/node": "/usr/lib/nodejs/bin/node",
            "/usr/bin/npm": "/usr/lib/nodejs/lib/node_modules/npm/bin/npm-cli.js",
            "/usr/bin/npx": "/usr/lib/nodejs/lib/node_modules/npm/bin/npx-cli.js",
        },
        tars = [
            ":" + arch + "_" + version + "_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in NODEJS_VERSIONS
    for arch in BASE_ARCHITECTURES
]
