"""Rule to render a os-release file

Render a os-release file
Args:
  distribution: Name of the distribution (Ubuntu, Debian, ...)
  version: Numerical ID of the distroibution (20.04, ...)
  release: Name of the release of the distribution (Focal Fossa, ...)
  distribution_like: Name of the distribution to fill in ID_LIKE (Debian, ...)
Outputs:
  osrelease_file: name of the rule suffixed with ".osrelease"
"""

# Label of the os-release template file to use.
_TEMPLATE = "//util:os-release.tpl"

def gen_osrelease(**kwargs):
    _gen_osrelease(
        osrelease_file = "os-release",
        **kwargs
    )

def _gen_osrelease_impl(ctx):
    ctx.actions.expand_template(
        template = ctx.file._template,
        output = ctx.outputs.osrelease_file,
        substitutions = {
            "{ID_LIKE}": ctx.attr.distribution_like.lower(),
            "{ID}": ctx.attr.distribution.lower(),
            "{NAME}": ctx.attr.distribution,
            "{UBUNTU_CODENAME}": ctx.attr.release.split(" ", 1)[0].lower(),
            "{VERSION_CODENAME}": ctx.attr.release.split(" ", 1)[0].lower(),
            "{VERSION_ID}": ctx.attr.version[0:5],
            "{VERSION}": ctx.attr.version + ", (" + ctx.attr.release + ")",
        },
    )

_gen_osrelease = rule(
    implementation = _gen_osrelease_impl,
    attrs = {
        "distribution": attr.string(
            mandatory = True,
        ),
        "distribution_like": attr.string(
            default = "",
        ),
        "osrelease_file": attr.output(
            mandatory = True,
        ),
        "release": attr.string(
            mandatory = True,
        ),
        "version": attr.string(
            mandatory = True,
        ),
        "_template": attr.label(
            default = Label(_TEMPLATE),
            allow_single_file = True,
        ),
    },
)
