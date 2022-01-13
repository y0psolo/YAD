load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("//update:constant.bzl", "PROMETHEUS_VERSION", "NODE_EXPORTER_VERSION")


container_layer(
    name = "prometheus",
    env = {
        "PROMETHEUS_VERSION": PROMETHEUS_VERSION,
    },
    symlinks = {
        "/etc/prometheus/console_libraries" : "/usr/share/prometheus/console_libraries",
        "/etc/prometheus/consoles" : "/usr/share/prometheus/consoles" ,
    },
    tars =  select({
        "//platforms:k8_cpu": ["@prometheus_amd64//:bin_tar", "@prometheus_amd64//:share_tar", "@prometheus_amd64//:etc_tar",],
        "//platforms:aarch64_cpu": ["@prometheus_arm64//:bin_tar", "@prometheus_arm64//:share_tar", "@prometheus_arm64//:etc_tar",],
    }),
    visibility = ["//:__subpackages__"],
)

container_layer(
    name = "node",
    env = {
        "NODE_EXPORTER_VERSION": NODE_EXPORTER_VERSION,
    },
    tars =  select({
        "//platforms:k8_cpu": ["@node-exporter_amd64//:bin_tar", "@node-exporter_amd64//:share_tar",],
        "//platforms:aarch64_cpu": ["@node-exporter_arm64//:bin_tar", "@node-exporter_arm64//:share_tar",],
    }),
    visibility = ["//:__subpackages__"],
)