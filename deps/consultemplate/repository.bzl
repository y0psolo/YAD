load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "consul-template-amd64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "d3d428ede8cb6e486d74b74deb9a7cdba6a6de293f3311f178cc147f1d1837e8",
        urls = ["https://releases.hashicorp.com/consul-template/0.27.2/consul-template_0.27.2_linux_amd64.zip"],
    )

    http_archive(
        name = "consul-template-arm64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "4ea1ac760a4deee9c1297c8c2e57f5a98dd4ecdf75d6e26b1f1105918b23f195",
        urls = ["https://releases.hashicorp.com/consul-template/0.27.2/consul-template_0.27.2_linux_arm64.zip"],
    )
