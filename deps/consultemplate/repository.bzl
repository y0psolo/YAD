load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "consul-template-amd64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "810c6ada4ac9362838f66cf2312dd53d8d51beed37d1c2fb7c3812e1515a9372",
        urls = ["https://releases.hashicorp.com/consul-template/0.28.0/consul-template_0.28.0_linux_amd64.zip"],
    )

    http_archive(
        name = "consul-template-arm64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "b390f80b448b09896e4d634f5c251e44ab897cf67db0e1b78e091ceef50518a0",
        urls = ["https://releases.hashicorp.com/consul-template/0.28.0/consul-template_0.28.0_linux_arm64.zip"],
    )
