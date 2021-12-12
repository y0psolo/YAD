load("@bazel_skylib//lib:selects.bzl", "selects")
load("@bazel_skylib//rules:common_settings.bzl", "string_flag")

package(default_visibility = ["//:__subpackages__"])

string_flag(
    name = "distro",
    values = ["18.04", "20.04", "22.04"],
    build_setting_default = "20.04",
)

config_setting(
    name = "focal",
    flag_values  = {":distro" : "20.04"},
)

config_setting(
    name = "bionic",
    flag_values  = {":distro" : "18.04"},
)

config_setting(
    name = "jammy",
    flag_values  = {":distro" : "22.04"},
)

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

# CPU & distro combination
selects.config_setting_group(
    name = "k8_cpu_jammy",
    match_all = [":k8_cpu", ":jammy"],
)

# CPU & distro combination
selects.config_setting_group(
    name = "aarch64_cpu_jammy",
    match_all = [":aarch64_cpu", ":jammy"],
)

selects.config_setting_group(
    name = "k8_cpu_focal",
    match_all = [":k8_cpu", ":focal"],
)

selects.config_setting_group(
    name = "aarch64_cpu_focal",
    match_all = [":aarch64_cpu", ":focal"],
)

selects.config_setting_group(
    name = "k8_cpu_bionic",
    match_all = [":k8_cpu", ":bionic"],
)

# CPU & distro combination
selects.config_setting_group(
    name = "aarch64_cpu_bionic",
    match_all = [":aarch64_cpu", ":bionic"],
)

# CPU and compile mode combination
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