load("@bazel_skylib//lib:selects.bzl", "selects")
package(default_visibility = ["//:__subpackages__"])

config_setting(
    name = "aarch64_cpu",
    values = {"cpu": "aarch64"},
)

config_setting(
    name = "k8_cpu",
    values = {"cpu": "k8"},
)

config_setting(
    name = "debug",
    values = {"compilation_mode": "dbg"},
)

config_setting(
    name = "opt",
    values = {"compilation_mode": "opt"},
)

config_setting(
    name = "fastbuild",
    values = {"compilation_mode": "fastbuild"},
)

selects.config_setting_group(
    name = "opt_or_fastbuild",
    match_any = [":fastbuild", ":opt"],
)

selects.config_setting_group(
    name = "amd64_debug",
    match_all = [":k8_cpu", ":debug"],
)

selects.config_setting_group(
    name = "arm64_debug",
    match_all = [":aarch64_cpu", ":debug"],
)

selects.config_setting_group(
    name = "amd64",
    match_all = [":k8_cpu", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "arm64",
    match_all = [":aarch64_cpu", ":opt_or_fastbuild"],
)