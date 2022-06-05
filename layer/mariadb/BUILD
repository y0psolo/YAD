load("@io_bazel_rules_docker//container:container.bzl", "container_layer")
load("@ubuntu_jammy_amd64//debs:deb_packages.bzl", "ubuntu_jammy_amd64")
load("@ubuntu_jammy_arm64//debs:deb_packages.bzl", "ubuntu_jammy_arm64")
load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")
load(':version.bzl', "mariadb_package")
load("//update:constants.bzl", "MARIADB_VERSIONS" , "MARIADB_VERSIONS_MAPPING")

[
    container_layer(
        name = "common_" + version,
        debs = select({
            "//platforms:k8_cpu_jammy": [
                ubuntu_jammy_amd64["zlib1g"],
            ],
            "//platforms:aarch64_cpu_jammy": [
                ubuntu_jammy_arm64["zlib1g"],
            ],
            "//platforms:k8_cpu_focal": [
                ubuntu_focal_amd64["zlib1g"],
            ],
            "//platforms:aarch64_cpu_focal": [
                ubuntu_focal_arm64["zlib1g"],
            ],
            "//platforms:k8_cpu_bionic": [
                ubuntu_bionic_amd64["zlib1g"],
            ],
            "//platforms:aarch64_cpu_bionic": [
                ubuntu_bionic_arm64["zlib1g"],
            ],
        }),
        env = {
            "MARIADB_MAJOR" : version,
            "MARIADB_VERSION" : MARIADB_VERSIONS_MAPPING[version],
        },
        tars = [
            "common.tgz",
        ],
        visibility = ["//:__subpackages__"],
    )
    for version in MARIADB_VERSIONS
]

[
    container_layer(
        name = "server_" + version,
        debs = mariadb_package(version, "galera-4")
            + mariadb_package(version, "mariadb-server-core-" + version)
            + select({
                 "//platforms:k8_cpu_jammy": [
                    ubuntu_jammy_amd64["libaio1"],
                    ubuntu_jammy_amd64["libcrypt1"],
                    ubuntu_jammy_amd64["liblz4-1"],
                    ubuntu_jammy_amd64["libpcre2-8-0"],
                    ubuntu_jammy_amd64["libpmem1"],
                    ubuntu_jammy_amd64["libsystemd0"],
                    ubuntu_jammy_amd64["liblzma5"],
                    ubuntu_jammy_amd64["libgcrypt20"],
                    ubuntu_jammy_amd64["libgpg-error0"],
                ],
                "//platforms:aarch64_cpu_jammy": [
                    ubuntu_jammy_arm64["libaio1"],
                    ubuntu_jammy_arm64["libcrypt1"],
                    ubuntu_jammy_arm64["liblz4-1"],
                    ubuntu_jammy_arm64["libpcre2-8-0"],
                    ubuntu_jammy_arm64["libpmem1"],
                    ubuntu_jammy_arm64["libsystemd0"],
                    ubuntu_jammy_arm64["liblzma5"],
                    ubuntu_jammy_arm64["libgcrypt20"],
                    ubuntu_jammy_arm64["libgpg-error0"],
                ],
                "//platforms:k8_cpu_focal": [
                    ubuntu_focal_amd64["libaio1"],
                    ubuntu_focal_amd64["libcrypt1"],
                    ubuntu_focal_amd64["liblz4-1"],
                    ubuntu_focal_amd64["libpcre2-8-0"],
                    ubuntu_focal_amd64["libpmem1"],
                    ubuntu_focal_amd64["libsystemd0"],
                    ubuntu_focal_amd64["liblzma5"],
                    ubuntu_focal_amd64["libgcrypt20"],
                    ubuntu_focal_amd64["libgpg-error0"],
                ],
                "//platforms:aarch64_cpu_focal": [
                    ubuntu_focal_arm64["libaio1"],
                    ubuntu_focal_arm64["libcrypt1"],
                    ubuntu_focal_arm64["liblz4-1"],
                    ubuntu_focal_arm64["libpcre2-8-0"],
                    ubuntu_focal_arm64["libpmem1"],
                    ubuntu_focal_arm64["libsystemd0"],
                    ubuntu_focal_arm64["liblzma5"],
                    ubuntu_focal_arm64["libgcrypt20"],
                    ubuntu_focal_arm64["libgpg-error0"],
                ],
                "//platforms:k8_cpu_bionic": [
                    ubuntu_bionic_amd64["libaio1"],
                    ubuntu_bionic_amd64["liblz4-1"],
                    ubuntu_bionic_amd64["libpcre2-8-0"],
                    ubuntu_bionic_amd64["libsystemd0"],
                    ubuntu_bionic_amd64["liblzma5"],
                    ubuntu_bionic_amd64["libgcrypt20"],
                    ubuntu_bionic_amd64["libgpg-error0"],
                ],
                "//platforms:aarch64_cpu_bionic": [
                    ubuntu_bionic_arm64["libaio1"],
                    ubuntu_bionic_arm64["liblz4-1"],
                    ubuntu_bionic_arm64["libpcre2-8-0"],
                    ubuntu_bionic_arm64["libsystemd0"],
                    ubuntu_bionic_arm64["liblzma5"],
                    ubuntu_bionic_arm64["libgcrypt20"],
                    ubuntu_bionic_arm64["libgpg-error0"],
                ],
            }),
        visibility = ["//:__subpackages__"],
    )
    for version in MARIADB_VERSIONS
]

[
    container_layer(
        name = "cli_" + version,
        debs = mariadb_package(version, "libmariadb3")
            + mariadb_package(version, "mariadb-client-core-" + version)
            + mariadb_package(version, "mariadb-client-" + version)
            + select({
                "//platforms:k8_cpu_focal": [
                    ubuntu_focal_amd64["libreadline5"],
                    ubuntu_jammy_amd64["libncurses6"],
                    ubuntu_jammy_amd64["libtinfo6"],
                ],
                "//platforms:aarch64_cpu_focal": [
                    ubuntu_focal_arm64["libreadline5"],
                    ubuntu_jammy_arm64["libncurses6"],
                    ubuntu_jammy_arm64["libtinfo6"],
                ],
                "//platforms:k8_cpu_focal": [
                    ubuntu_focal_amd64["libreadline5"],
                    ubuntu_focal_amd64["libncurses6"],
                    ubuntu_focal_amd64["libtinfo6"],
                ],
                "//platforms:aarch64_cpu_focal": [
                    ubuntu_focal_arm64["libreadline5"],
                    ubuntu_focal_arm64["libncurses6"],
                    ubuntu_focal_arm64["libtinfo6"],
                ],
                "//platforms:k8_cpu_bionic": [
                    ubuntu_bionic_amd64["libreadline5"],
                    ubuntu_bionic_amd64["libncurses5"],
                    ubuntu_bionic_amd64["libtinfo5"],
                ],
                "//platforms:aarch64_cpu_bionic": [
                    ubuntu_bionic_arm64["libreadline5"],
                    ubuntu_bionic_arm64["libncurses5"],
                    ubuntu_bionic_arm64["libtinfo5"],
                ],
            }),
        visibility = ["//:__subpackages__"],
    )
    for version in MARIADB_VERSIONS
]