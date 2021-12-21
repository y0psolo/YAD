load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "consul-template-amd64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "db340b7555105d004caf8fad10e1d53ee0bd2320572c4560387279e92490f807",
        urls = ["https://releases.hashicorp.com/consul-template/0.27.1/consul-template_0.27.1_linux_amd64.zip"],
    )

    http_archive(
        name = "consul-template-arm64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "210ddabf1c02e0cc45ceaf0d0e0918a33704ea6c20fa9de8b5e3806e3dd35729",
        urls = ["https://releases.hashicorp.com/consul-template/0.27.1/consul-template_0.27.1_linux_arm64.zip"],
    )