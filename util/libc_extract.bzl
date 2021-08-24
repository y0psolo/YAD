"""A rule to unpack libc-bin in three different packages.
One for binaries, one for configuration, one for locale."""

def libc_extract(**kwargs):
    name = kwargs["name"]
    _libc_extract(
        locale = "%s_locale.tar" % name,
        bin = "%s_bin.tar" % name,
        conf = "%s_conf.tar" % name,
        **kwargs
    )

def _libc_extract_impl(ctx):
    ctx.actions.run_shell(
        inputs = [ctx.file.deb],
        outputs = [ctx.outputs.locale],
        tools = [] + ctx.files._build_tar + ctx.files._deb_extract,
        arguments = [
            ctx.file.deb.path,
            ctx.outputs.locale.path,
        ],
        env = {
            "BUILD_TAR": ctx.executable._build_tar.path,
            "EXTRACT_DEB": ctx.executable._deb_extract.path,
        },
        command = """
            $EXTRACT_DEB "$1" ./usr/lib/locale/C.UTF-8 ./usr/share/doc/libc-bin/copyright

            $BUILD_TAR  --output "$2" \
                        --mode 0644 \
                        --file ./usr/share/doc/libc-bin/copyright=./usr/share/doc/libc-bin/copyright \
                        --file ./usr/lib/locale/C.UTF-8=./usr/lib/locale/C.UTF-8
        """,
    )

    ctx.actions.run_shell(
        inputs = [ctx.file.deb],
        outputs = [ctx.outputs.bin],
        tools = [] + ctx.files._build_tar + ctx.files._deb_extract,
        arguments = [
            ctx.file.deb.path,
            ctx.outputs.bin.path,
        ],
        env = {
            "BUILD_TAR": ctx.executable._build_tar.path,
            "EXTRACT_DEB": ctx.executable._deb_extract.path,
        },
        command = """
            $EXTRACT_DEB "$1" ./sbin ./usr/bin ./usr/sbin

            $BUILD_TAR  --output "$2" \
                        --mode 0755 \
                        --file ./sbin=./sbin \
                        --file ./usr/bin=./usr/bin \
                        --file ./usr/sbin=./usr/sbin
        """,
    )

    ctx.actions.run_shell(
        inputs = [ctx.file.deb],
        outputs = [ctx.outputs.conf],
        tools = [] + ctx.files._build_tar + ctx.files._deb_extract,
        arguments = [
            ctx.file.deb.path,
            ctx.outputs.conf.path,
        ],
        env = {
            "BUILD_TAR": ctx.executable._build_tar.path,
            "EXTRACT_DEB": ctx.executable._deb_extract.path,
        },
        command = """
            $EXTRACT_DEB "$1" ./etc ./usr/share/libc-bin/nsswitch.conf ./usr/share/lintian/overrides/libc-bin

            $BUILD_TAR  --output "$2" \
                        --mode 0644 \
                        --file ./etc=./etc \
                        --file ./usr/share/libc-bin/nsswitch.conf=./usr/share/libc-bin/nsswitch.conf \
                        --file ./usr/share/lintian/overrides/libc-bin=./usr/share/lintian/overrides/libc-bin
        """,
    )

_libc_extract = rule(
    attrs = {
        "bin": attr.output(
            mandatory = True,
        ),
        "conf": attr.output(
            mandatory = True,
        ),
        "deb": attr.label(
            allow_single_file = [".deb"],
            mandatory = True,
        ),
        "locale": attr.output(
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
    implementation = _libc_extract_impl,
)
