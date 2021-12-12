# load("@ubuntu_focal_amd64//debs:deb_packages.bzl", "ubuntu_focal_amd64")
# load("@ubuntu_focal_arm64//debs:deb_packages.bzl", "ubuntu_focal_arm64")
# load("@ubuntu_bionic_amd64//debs:deb_packages.bzl", "ubuntu_bionic_amd64")
# load("@ubuntu_bionic_arm64//debs:deb_packages.bzl", "ubuntu_bionic_arm64")

# def ubuntu(package):
#     return select({
#         "//platforms:k8_cpu_focal": ubuntu_focal_amd64[package],
#         "//platforms:aarch64_cpu_focal": ubuntu_focal_arm64[package],
#         "//platforms:k8_cpu_bionic": ubuntu_bionic_amd64[package],
#         "//platforms:aarch64_cpu_bionic": ubuntu_bionic_arm64[package],
#     })

# def ubuntu_debs(packages):
#     return select({
#         "//platforms:k8_cpu_focal": [ubuntu_focal_amd64[p] for p in packages],
#         "//platforms:aarch64_cpu_focal": [ubuntu_focal_arm64[p] for p in packages],
#         "//platforms:k8_cpu_bionic": [ubuntu_bionic_amd64[p] for p in packages],
#         "//platforms:aarch64_cpu_bionic": [ubuntu_bionic_arm64[p] for p in packages],
#     })
