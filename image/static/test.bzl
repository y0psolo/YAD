"""Test macro procedure"""

load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

def test_container(arch):
    """ Test macro

    Args:
      arch: cpu architecture (amd64, amr64, ...)
    """

    # Check for common base files.
    container_test(
        name = "nonroot_" + arch + "_test",
        configs = ["test/base.yaml"],
        image = ":nonroot_" + arch,
    )

    # Check that we can invoke openssl in the base image to check certificates.
    # container_test(
    #     name = "openssl_" + arch + "_" + dist + "_test",
    #     configs = ["test/certs.yaml"],
    #     image = ":base_nonroot_" + arch + "_" + dist,
    # )
    # Check the /etc/os-release contents.
    container_test(
        name = "release_" + arch + "_test",
        configs = ["test/os-release.yaml"],
        image = ":nonroot_" + arch,
    )
    # Check busybox is working
    # container_test(
    #     name = "debug_" + arch + "_" + dist + "_test",
    #     configs = ["test/debug.yaml"],
    #     image = ":debug_base_nonroot_" + arch + "_" + dist,
    # )
