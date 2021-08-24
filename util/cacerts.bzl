"""A rule to unpack ca certificates from the debian package."""

def cacerts(**kwargs):
    name = kwargs["name"]
    _cacerts(
        tar = "%s.tar" % name,
        **kwargs
    )

def cacerts_impl(ctx):
    ctx.actions.run_shell(
        inputs = [ctx.file.deb],
        outputs = [ctx.outputs.tar],
        tools = [] + ctx.files._build_tar + ctx.files._deb_extract,
        arguments = [
            ctx.file.deb.path,
            ctx.outputs.tar.path,
        ],
        env = {
            "BUILD_TAR": ctx.executable._build_tar.path,
            "EXTRACT_DEB": ctx.executable._deb_extract.path,
        },
        command = """
            set -o errexit
            $EXTRACT_DEB "$1" ./usr/share/ca-certificates ./usr/share/doc/ca-certificates/copyright
            CERT_FILE=./etc/ssl/certs/ca-certificates.crt
            mkdir -p $(dirname $CERT_FILE)
            CERTS=$(find usr/share/ca-certificates -type f | sort)
            for cert in $CERTS; do
              cat $cert >> $CERT_FILE
            done
            $BUILD_TAR  --output "$2" \
                        --file $CERT_FILE=$CERT_FILE \
                        --file ./usr/share/doc/ca-certificates/copyright=./usr/share/doc/ca-certificates/copyright
        """,
    )

_cacerts = rule(
    attrs = {
        "deb": attr.label(
            allow_single_file = [".deb"],
            mandatory = True,
        ),
        "tar": attr.output(
            mandatory = True,
        ),
        # Implicit dependencies.
        "_build_tar": attr.label(
            default = Label("@rules_pkg//:build_tar"),
            cfg = "host",
            executable = True,
        ),
        "_deb_extract": attr.label(
            default = Label("//util:deb_extract"),
            cfg = "host",
            executable = True,
        ),
    },
    executable = False,
    implementation = cacerts_impl,
)
