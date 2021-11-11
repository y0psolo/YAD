# Copyright 2016 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This becomes the BUILD file for @local_config_cc// under non-BSD unixes.

package(default_visibility = ["//visibility:public"])

load("@local_config_cc//:cc_toolchain_config.bzl", "cc_toolchain_config")
load("@local_config_cc//:armeabi_cc_toolchain_config.bzl", "armeabi_cc_toolchain_config")
load("@rules_cc//cc:defs.bzl", "cc_toolchain", "cc_toolchain_suite")

licenses(["notice"])  # Apache 2.0

cc_library(
    name = "malloc",
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "compiler_deps_aarch64",
    srcs = glob(["extra_tools/**"], allow_empty = True) + [":builtin_include_directory_paths_aarch64"],
)

filegroup(
    name = "compiler_deps_k8",
    srcs = glob(["extra_tools/**"], allow_empty = True) + [":builtin_include_directory_paths_k8"],
)

# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# the "${CPU}" entry in the toolchains attribute.
cc_toolchain_suite(
    name = "ubuntu_toolchain",
    toolchains = {
        "k8|compiler": ":cc-compiler-k8",
        "k8": ":cc-compiler-k8",
        "aarch64|compiler": ":cc-compiler-aarch64",
        "aarch64": ":cc-compiler-aarch64",
    },
)

cc_toolchain(
    name = "cc-compiler-k8",
    toolchain_identifier = "local-k8",
    toolchain_config = ":local_k8",
    all_files = ":compiler_deps_k8",
    ar_files = ":compiler_deps_k8",
    as_files = ":compiler_deps_k8",
    compiler_files = ":compiler_deps_k8",
    dwp_files = ":empty",
    linker_files = ":compiler_deps_k8",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 1,
    module_map = None,
)

cc_toolchain_config(
    name = "local_k8",
    cpu = "k8",
    compiler = "compiler",
    toolchain_identifier = "local-k8",
    host_system_name = "local",
    target_system_name = "local",
    target_libc = "local",
    abi_version = "local",
    abi_libc_version = "local",
    cxx_builtin_include_directories = [
        "/usr/lib/gcc/x86_64-linux-gnu/9/include",
        "/usr/local/include",
        "/usr/include/x86_64-linux-gnu",
        "/usr/include"
    ],
    tool_paths = {
        "ar": "/usr/bin/ar",
        "ld": "/usr/bin/ld",
        "llvm-cov": "None",
        "cpp": "/usr/bin/cpp",
        "gcc": "/usr/bin/gcc",
        "dwp": "/usr/bin/dwp",
        "gcov": "/usr/bin/gcov",
        "nm": "/usr/bin/nm",
        "objcopy": "/usr/bin/objcopy",
        "objdump": "/usr/bin/objdump",
        "strip": "/usr/bin/strip"
    },
    compile_flags = [
        # "-U_FORTIFY_SOURCE",
        "-fstack-protector",
        "-Wall",
        "-Wunused-but-set-parameter",
        "-Wno-free-nonheap-object",
        "-fno-omit-frame-pointer"
    ],
    opt_compile_flags = [
        "-g0",
        "-O2",
        "-D_FORTIFY_SOURCE=2",
        "-DNDEBUG",
        "-ffunction-sections",
        "-fdata-sections",
    ],
    dbg_compile_flags = ["-g"],
    cxx_flags = ["-std=c++0x"],
    link_flags = [
        "-Wl,-no-as-needed",
        "-Wl,-z,relro,-z,now",
        # "-B/usr/bin",
        "-pass-exit-codes",
    ],
    link_libs = [
        # "-lstdc++",
        "-lm",
    ],
    opt_link_flags = ["-Wl,--gc-sections"],
    unfiltered_compile_flags = [
        "-fno-canonical-system-headers",
        "-Wno-builtin-macro-redefined",
        "-D__DATE__=\"redacted\"",
        "-D__TIMESTAMP__=\"redacted\"",
        "-D__TIME__=\"redacted\""
    ],
    coverage_compile_flags = ["--coverage"],
    coverage_link_flags = ["--coverage"],
    supports_start_end_lib = False,
)

cc_toolchain(
    name = "cc-compiler-aarch64",
    toolchain_identifier = "local-aarch64",
    toolchain_config = ":local_aarch64",
    all_files = ":compiler_deps_aarch64",
    ar_files = ":compiler_deps_aarch64",
    as_files = ":compiler_deps_aarch64",
    compiler_files = ":compiler_deps_aarch64",
    dwp_files = ":empty",
    linker_files = ":compiler_deps_aarch64",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 1,
    module_map = None,
)

cc_toolchain_config(
    name = "local_aarch64",
    cpu = "aarch64",
    compiler = "compiler",
    toolchain_identifier = "local-aarch64",
    host_system_name = "local",
    target_system_name = "local",
    target_libc = "local",
    abi_version = "local",
    abi_libc_version = "local",
    cxx_builtin_include_directories = [
        "/usr/aarch64-linux-gnu/include/",
        "/usr/lib/gcc-cross/aarch64-linux-gnu/9/include/", 
    ],
    tool_paths = {
        "ar": "/usr/bin/aarch64-linux-gnu-ar",
        "ld": "/usr/bin/aarch64-linux-gnu-ld",
        "llvm-cov": "None",
        "cpp": "/usr/bin/aarch64-linux-gnu-cpp",
        "gcc": "/usr/bin/aarch64-linux-gnu-gcc",
        "dwp": "/usr/bin/aarch64-linux-gnu-dwp",
        "gcov": "/usr/bin/aarch64-linux-gnu-gcov",
        "nm": "/usr/bin/aarch64-linux-gnu-nm",
        "objcopy": "/usr/bin/aarch64-linux-gnu-objcopy",
        "objdump": "/usr/bin/aarch64-linux-gnu-objdump",
        "strip": "/usr/bin/aarch64-linux-gnu-strip"
    },
    compile_flags = [
        # "-U_FORTIFY_SOURCE",
        "-fstack-protector",
        "-Wall",
        # "-Wunused-but-set-parameter",
        # "-Wno-free-nonheap-object",
        "-fno-omit-frame-pointer"
    ],
    opt_compile_flags = [
        "-g0",
        "-O2",
        "-D_FORTIFY_SOURCE=2",
        "-DNDEBUG",
        "-ffunction-sections",
        "-fdata-sections",
    ],
    dbg_compile_flags = ["-g"],
    cxx_flags = ["-std=c++0x"],
    link_flags = [
        "-Wl,-no-as-needed",
        "-Wl,-z,relro,-z,now",
        # "-B/usr/bin",
        "-pass-exit-codes"
    ],
    link_libs = [
        # "-lstdc++",
        "-lm",
    ],
    opt_link_flags = ["-Wl,--gc-sections"],
    unfiltered_compile_flags = ["-fno-canonical-system-headers",
    "-Wno-builtin-macro-redefined",
    "-D__DATE__=\"redacted\"",
    "-D__TIMESTAMP__=\"redacted\"",
    "-D__TIME__=\"redacted\""],
    coverage_compile_flags = ["--coverage"],
    coverage_link_flags = ["--coverage"],
    supports_start_end_lib = False,
)
