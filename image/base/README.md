# Base image

This image is designed for running application depending only on libc and libssl.

## Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| libc6           | Ubuntu package                                               |  base  |
| libssl          | Ubuntu package                                               |  base  |
| openssl         | Ubuntu package                                               |  base  |
| tini            | application                                                  |  base  |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

## Security

Security scan of the image updated daily : [bionic](../../security/table/base_bionic) [focal](../../security/table/base_focal) [jammy](../../security/table/base_jammy)
