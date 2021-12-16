load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("//deps/ubuntu:ubuntu_focal_amd64.bzl", "ubuntu_focal_amd64")
load("//deps/ubuntu:ubuntu_focal_arm64.bzl", "ubuntu_focal_arm64")
load("//deps/ubuntu:ubuntu_bionic_amd64.bzl", "ubuntu_bionic_amd64")
load("//deps/ubuntu:ubuntu_bionic_arm64.bzl", "ubuntu_bionic_arm64")

def core_repository():
    # Ubuntu key
    http_file(
        name = "ubuntu_key",
        sha256 = "2b091827ada1affb0670b497dd5613f4d0d054c045690f754f69fa34eb74de1b",
        urls = ["https://keyserver.ubuntu.com/pks/lookup?op=hget&search=12120bd49c566eaf49d31f267ec0b900"],
    )

    ubuntu_focal_amd64()
    ubuntu_focal_arm64()
    ubuntu_bionic_amd64()
    ubuntu_bionic_arm64()

    # Tini executable
    http_file(
        name = "tini_amd64",
        downloaded_file_path = "tini",
        executable = True,
        sha256 = "93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c",
        urls = ["https://github.com/krallin/tini/releases/download/v0.19.0/tini-amd64"],
    )

    http_file(
        name = "tini_arm64",
        downloaded_file_path = "tini",
        executable = True,
        sha256 = "07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81",
        urls = ["https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64"],
    )

    # Get Busybox
    http_file(
        name = "busybox_amd64",
        downloaded_file_path = "busybox",
        executable = True,
        sha256 = "51fcb60efbdf3e579550e9ab893730df56b33d0cc928a2a6467bd846cdfef7d8",
        urls = ["https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64"],
    )

    http_file(
        name = "busybox_arm64",
        downloaded_file_path = "busybox",
        executable = True,
        sha256 = "141adb1b625a6f44c4b114f76b4387b4ea4f7ab802b88eb40e0d2f6adcccb1c3",
        urls = ["https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-armv8l"],
    )