load("@rules_foreign_cc//foreign_cc:defs.bzl", "configure_make")
package(default_visibility = ["//visibility:public"])

config_setting(
    name = "aarch64_cpu",
    values = {"cpu": "aarch64"},
)

config_setting(
    name = "x86_64_cpu",
    values = {"cpu": "x86_64"},
)

filegroup(
    name = "openssl_files",
    srcs = glob(["**"]),
)

configure_make(
    name = "openssl",
    configure_options = select({
        "aarch64_cpu": ["linux-aarch64",],
        "x86_64_cpu": ["linux-x86_64",],
    }),
    copts = [
        "-O3",
    ],
    configure_command = "Configure",
    lib_source = ":openssl_files",
    out_shared_libs = [
        "libcrypto.so",
        "libcrypto.so.1.1",
        "libssl.so",
        "libssl.so.1.1",
    ],
)