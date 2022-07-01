load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load(":ubuntu_jammy_amd64.bzl", "ubuntu_jammy_amd64")
load(":ubuntu_jammy_arm64.bzl", "ubuntu_jammy_arm64")
load(":ubuntu_focal_amd64.bzl", "ubuntu_focal_amd64")
load(":ubuntu_focal_arm64.bzl", "ubuntu_focal_arm64")
load(":ubuntu_bionic_amd64.bzl", "ubuntu_bionic_amd64")
load(":ubuntu_bionic_arm64.bzl", "ubuntu_bionic_arm64")

def core_repository():
    # Ubuntu key
    http_file(
        name = "ubuntu_jammy_key",
        sha256 = "fa6889d252b948269de3674fe9fa9dd50fe04a2804c9ca068b75a89ab8a5273b",
        urls = ["https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xf6ecb3762474eda9d21b7022871920d1991bc93c"],
    )

    http_file(
        name = "ubuntu_focal_key",
        sha256 = "fa6889d252b948269de3674fe9fa9dd50fe04a2804c9ca068b75a89ab8a5273b",
        urls = ["https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xf6ecb3762474eda9d21b7022871920d1991bc93c"],
    )

    # Ubuntu key
    http_file(
        name = "ubuntu_bionic_key",
        sha256 = "0a81ec85f5abd4ff15a51565382e5ca3e0d7dca7fbf853eb2de9519429945e1b",
        urls = ["https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x790bc7277767219c42c86f933b4fe6acc0b21f32"],
    )

    ubuntu_jammy_amd64()
    ubuntu_jammy_arm64()
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
