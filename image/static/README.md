# Static image

This image is designed for running application depending on no shared library.

## Package and application list

| Name            | type                                                         | Layer  |
| --------------- | ------------------------------------------------------------ | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| busybox         | Application                                                  |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

## Security

Security scan of the image updated daily : [bionic](../../security/table/static_bionic) [focal](../../security/table/static_focal) [jammy](../../security/table/static_jammy)
