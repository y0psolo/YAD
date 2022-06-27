load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "consul-template-amd64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "bd051cba75fc86bb1e27a741c69e3f39ea877e15f04e220f8e7e4f2f83127bc3",
        urls = ["https://releases.hashicorp.com/consul-template/0.29.1/consul-template_0.29.1_linux_amd64.zip"],
    )

    http_archive(
        name = "consul-template-arm64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "ea567e47f019d58b4aed8b1a02eb66c9034fb68d140aa2cfa1f63617e90a819a",
        urls = ["https://releases.hashicorp.com/consul-template/0.29.1/consul-template_0.29.1_linux_arm64.zip"],
    )
