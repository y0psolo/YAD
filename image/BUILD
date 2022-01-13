load("@io_bazel_rules_docker//container:container.bzl", "container_push")
load("//update:constant.bzl", "JRE_VERSIONS", "NODEJS_VERSIONS", "SPARK_VERSIONS", "MARIADB_VERSIONS")
load(":tag.bzl", "copt_tag", "arch_tag", "dist_tag")

package(default_visibility = ["//visibility:public"])

[
    container_push(
        name = "push_" + name,
        image = "//image/" + name + ":" + name,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/" + name,
        tag = arch_tag() + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for name in ["static", "base", "cc", "python", "deno", "hivemetastore", "consultemplate"]
]

[
    container_push(
        name = "push_java_" + version,
        image = "//image/java:" + version,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/" + select({
            "//platforms:adoptium": "adoptium",
            "//platforms:azul": "azul",
        }),
        tag = arch_tag() + "_" + version + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for version in JRE_VERSIONS
]

[
    container_push(
        name = "push_javapy_" + version,
        image = "//image/javapy:" + version,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/" + select({
            "//platforms:adoptium": "adoptium",
            "//platforms:azul": "azul",
        }) + "py",
        tag = arch_tag() + "_" + version + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for version in JRE_VERSIONS
]

[
    container_push(
        name = "push_nodejs_" + version,
        image = "//image/nodejs:" + version,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/nodejs",
        tag = arch_tag() + "_" + version + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for version in NODEJS_VERSIONS
]

[
    container_push(
        name = "push_" + repo + "_" + version,
        image = "//image/spark:" + repo + "_" + version,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/" + repo,
        tag = arch_tag() + "_" + version + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for version in SPARK_VERSIONS
    for repo in ["spark", "pyspark", "sparkhistoryserver"]
]

[
    container_push(
        name = "push_" + name + "_" + repo ,
        image = "//image/" + name + ":" + repo,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/" + name + ("" if (repo == "server") else repo),
        tag = arch_tag() + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for repo in ["server", "cli"]
    for name in ["trino", "redis"]
]

[
    container_push(
        name = "push_mariadb_" + repo + "_" + version,
        image = "//image/mariadb:" + repo + "_" + version,
        format = "Docker",
        registry = "docker.io",
        repository = "yadist/mariadb" + ("" if (repo == "server") else repo),
        tag = arch_tag() + "_" + version + "_" + dist_tag() + copt_tag(),
        skip_unchanged_digest = True,
    )
    for version in MARIADB_VERSIONS
    for repo in ["server", "init", "cli"]
]
