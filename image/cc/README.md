# Cc image

This image is designed for running application depending on libc, libssl, libstdc++, libgomp and libgcc.

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
| libgcc1         | Ubuntu package                                               |   cc   |
| libgcc-s1       | Ubuntu package                                               |   cc   |
| libgomp1        | Ubuntu package                                               |   cc   |
| libstdc++6      | Ubuntu package                                               |   cc   |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```

## Security

Security scan of the image updated daily : [bionic](../../security/table/cc_18.04) [focal](../../security/table/cc_20.04)

