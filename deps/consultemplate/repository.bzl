load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def consultemplate_repository():
    http_archive(
        name = "consul-template-amd64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "9178437bde1f0f220010f17806c01b36ccb3814f065d4ebdfba53ade9832012d",
        urls = ["https://releases.hashicorp.com/consul-template/0.29.0/consul-template_0.29.0_linux_amd64.zip"],
    )

    http_archive(
        name = "consul-template-arm64",
        build_file = "//ext/consultemplate:BUILD",
        sha256 = "6bbb36d9a47be9f739452147dc4b042bbebdb8fbbaf9a432f1e2a5454478150b",
        urls = ["https://releases.hashicorp.com/consul-template/0.29.0/consul-template_0.29.0_linux_arm64.zip"],
    )
