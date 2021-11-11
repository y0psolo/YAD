load("@ubuntu_amd64//debs:deb_packages.bzl", "ubuntu_amd64")
load("@ubuntu_amd64//debs:deb_versions.bzl", "ubuntu_amd64_versions")
load("@ubuntu_arm64//debs:deb_packages.bzl", "ubuntu_arm64")
load("@ubuntu_arm64//debs:deb_versions.bzl", "ubuntu_arm64_versions")

def target_cpu():
    return select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    })

def ubuntu(package):
    return select({
        "//platforms:k8_cpu": ubuntu_amd64[package],
        "//platforms:aarch64_cpu": ubuntu_arm64[package],
    })

def ubuntu_debs(packages):
    return select({
        "//platforms:k8_cpu": [ubuntu_amd64[p] for p in packages],
        "//platforms:aarch64_cpu": [ubuntu_arm64[p] for p in packages],
    })
