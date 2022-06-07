# Nodejs image

This image is designed for running javascript application.

## Package and application list

| Name            | type                                                         |   Layer   |
| --------------- | :----------------------------------------------------------- | :-------: |
| base-files      | Ubuntu package                                               |  static   |
| net-base        | Ubuntu package                                               |  static   |
| tzdata          | Ubuntu package                                               |  static   |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages |  static   |
| libc6           | Ubuntu package                                               |   base    |
| libssl          | Ubuntu package                                               |   base    |
| openssl         | Ubuntu package                                               |   base    |
| tini            | application                                                  |   base    |
| libgcc1         | Ubuntu package                                               |   cc      |
| libgcc-s1       | Ubuntu package                                               |   cc      |
| libgomp1        | Ubuntu package                                               |   cc      |
| libstdc++6      | Ubuntu package                                               |   cc      |
| nodejs 14       | Nodejs application                                           | nodejs 14 |
| nodejs 16       | Nodejs application                                           | nodejs 16 |
| busybox         | Application                                                  |   debug   |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/node"]
```

## Security

Security scan of the image updated daily : [14 on bionic](../../security/table/nodejs_14_bionic), [14 on focal](../../security/table/nodejs_14_focal), [16 on bionic](../../security/table/nodejs_16_bionic), [16 on focal](../../security/table/nodejs_16_focal)

Security scan for Nodejs tar.gz archive installation is not supported by Trivy. See https://github.com/nodejs/node/blob/master/SECURITY.md for more information on security issue related to Nodejs.

