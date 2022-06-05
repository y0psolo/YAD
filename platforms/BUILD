load("@bazel_skylib//lib:selects.bzl", "selects")
load("@bazel_skylib//rules:common_settings.bzl", "string_flag")

package(default_visibility = ["//:__subpackages__"])

# Distro flag definition and settings
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

# Java flag definition and settings
string_flag(
    name = "java",
    values = ["azul", "adoptium"],
    build_setting_default = "azul",
)

config_setting(
    name = "azul",
    flag_values  = {":java" : "azul"},
)

config_setting(
    name = "adoptium",
    flag_values  = {":java" : "adoptium"},
)

# CPU related config
config_setting(
    name = "aarch64_cpu",
    values = {"cpu": "aarch64"},
)

config_setting(
    name = "k8_cpu",
    values = {"cpu": "x86_64"},
)

# Compile related config
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

# CPU & Java combination
selects.config_setting_group(
    name = "k8_cpu_azul",
    match_all = [":k8_cpu", ":azul"],
)

selects.config_setting_group(
    name = "aarch64_cpu_azul",
    match_all = [":aarch64_cpu", ":azul"],
)

selects.config_setting_group(
    name = "k8_cpu_adoptium",
    match_all = [":k8_cpu", ":adoptium"],
)

selects.config_setting_group(
    name = "aarch64_cpu_adoptium",
    match_all = [":aarch64_cpu", ":adoptium"],
)

# Compile Mode & Java combination
selects.config_setting_group(
    name = "opt_azul",
    match_all = [":opt_or_fastbuild", ":azul"],
)

selects.config_setting_group(
    name = "debug_azul",
    match_all = [":debug", ":azul"],
)

selects.config_setting_group(
    name = "opt_adoptium",
    match_all = [":opt_or_fastbuild", ":adoptium"],
)

selects.config_setting_group(
    name = "debug_adoptium",
    match_all = [":debug", ":adoptium"],
)

# CPU & distro combination
selects.config_setting_group(
    name = "k8_cpu_jammy",
    match_all = [":k8_cpu", ":jammy"],
)

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

# CPU distro and compile mode combination
selects.config_setting_group(
    name = "k8_cpu_jammy_opt",
    match_all = [":k8_cpu", ":jammy", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "aarch64_cpu_jammy_opt",
    match_all = [":aarch64_cpu", ":jammy", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "k8_cpu_focal_opt",
    match_all = [":k8_cpu", ":focal", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "aarch64_cpu_focal_opt",
    match_all = [":aarch64_cpu", ":focal", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "k8_cpu_bionic_opt",
    match_all = [":k8_cpu", ":bionic", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "aarch64_cpu_bionic_opt",
    match_all = [":aarch64_cpu", ":bionic", ":opt_or_fastbuild"],
)

selects.config_setting_group(
    name = "k8_cpu_jammy_dbg",
    match_all = [":k8_cpu", ":jammy", ":debug"],
)

selects.config_setting_group(
    name = "aarch64_cpu_jammy_dbg",
    match_all = [":aarch64_cpu", ":jammy", ":debug"],
)

selects.config_setting_group(
    name = "k8_cpu_focal_dbg",
    match_all = [":k8_cpu", ":focal", ":debug"],
)

selects.config_setting_group(
    name = "aarch64_cpu_focal_dbg",
    match_all = [":aarch64_cpu", ":focal", ":debug"],
)

selects.config_setting_group(
    name = "k8_cpu_bionic_dbg",
    match_all = [":k8_cpu", ":bionic", ":debug"],
)

selects.config_setting_group(
    name = "aarch64_cpu_bionic_dbg",
    match_all = [":aarch64_cpu", ":bionic", ":debug"],
)