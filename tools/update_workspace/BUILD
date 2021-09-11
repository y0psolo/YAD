load(
    "@io_bazel_rules_go//go:def.bzl",
    "go_binary",
    "go_library",
)

go_library(
    name = "go_default_library",
    srcs = ["update_workspace.go"],
    importpath = "github.com/y0psolo/YAD/util/update_workspace",
    visibility = ["//visibility:private"],
    deps = ["@bazelbuild_buildtools//build:go_default_library"],
)

go_binary(
    name = "update_workspace",
    embed = [":go_default_library"],
    visibility = [
        "//visibility:public",
    ],
)