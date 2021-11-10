load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//util:constants.bzl", "NODEJS_VERSIONS", "NODEJS_VERSIONS_MAPPINGS")

[
    pkg_tar(
        name = version + "_tar",
        srcs = select ({
            "//platforms:k8_cpu": ["@nodejs-" + version + "-amd64//:files"],
            "//platforms:aarch64_cpu": ["@nodejs-" + version + "-arm64//:files"],
        }),
        owner = "0.0",
        package_dir = "/usr/lib/nodejs",
        # bug with pkg_tar : resource name is included in the filegroup
        remap_paths = select ({
            "//platforms:k8_cpu": {"../nodejs-" + version + "-amd64/": "./"},
            "//platforms:aarch64_cpu": {"../nodejs-" + version + "-arm64/": "./"},
        }),
        strip_prefix = ".",
    )
    for version in NODEJS_VERSIONS
]

[
    container_layer(
        name = version,
        env = {
            "NODEJS_VERSION": NODEJS_VERSIONS_MAPPINGS[version],
        },
        symlinks = {
            "/usr/bin/node": "/usr/lib/nodejs/bin/node",
            "/usr/bin/npm": "/usr/lib/nodejs/lib/node_modules/npm/bin/npm-cli.js",
            "/usr/bin/npx": "/usr/lib/nodejs/lib/node_modules/npm/bin/npx-cli.js",
        },
        tars = [
            ":" + version + "_tar",
        ],
        visibility = ["//visibility:public"],
    )
    for version in NODEJS_VERSIONS
]
