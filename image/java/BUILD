load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("//util:constants.bzl", "BASE_ARCHITECTURES", "JRE_VERSIONS", "NONROOT")

# Iteration over all java versions
[
    container_image(
        name = arch + "_" + jre + "_" + weight + "_" + version,
        architecture = arch,
        entrypoint = [
            "/usr/bin/tini",
            "--",
            "/usr/bin/java",
            "-jar",
        ],
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/common:" + arch,
            "//layer/java:" + arch + "_" + weight,
            "//layer/java:" + arch + "_" + jre + "_" + version,
        ],
        user = "%d" % NONROOT,
        visibility = ["//:__subpackages__"],
        workdir = "/home/nonroot",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
    for jre in [
        "openjdk",
        "azul",
    ]
    for weight in [
        "fat",
        "slim",
    ]
]

[
    container_image(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_sh",
        architecture = arch,
        entrypoint = [
            "/bin/sh",
        ],
        layers = [
            "//layer/static:" + arch,
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/common:" + arch,
            "//layer/java:" + arch + "_" + weight,
            "//layer/java:" + arch + "_" + jre + "_" + version,
            "//layer/common:" + arch + "_sh",
        ],
        user = "%d" % NONROOT,
        visibility = ["//:__subpackages__"],
        workdir = "/home/nonroot",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
    for jre in [
        "openjdk",
        "azul",
    ]
    for weight in [
        "fat",
        "slim",
    ]
]

[
    container_image(
        name = arch + "_" + jre + "_" + weight + "_" + version + "_debug",
        architecture = arch,
        entrypoint = ["/bin/sh"],
        layers = [
            "//layer/static:" + arch,
            "//layer/static:" + arch + "_debug",
            "//layer/base:" + arch,
            "//layer/cc:" + arch,
            "//layer/common:" + arch,
            "//layer/java:" + arch + "_" + weight,
            "//layer/java:" + arch + "_" + jre + "_" + version,
        ],
        user = "%d" % NONROOT,
        visibility = ["//:__subpackages__"],
        workdir = "/home/nonroot",
    )
    for version in JRE_VERSIONS
    for arch in BASE_ARCHITECTURES
    for jre in [
        "openjdk",
        "azul",
    ]
    for weight in [
        "fat",
        "slim",
    ]
]
