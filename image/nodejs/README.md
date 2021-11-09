# Nodejs image

This image is designed for running javascript application.

## Package and application list

| Name            | type                                                         |   Layer   |      Tag      |
| --------------- | :----------------------------------------------------------- | :-------: | :-----------: |
| base-files      | Ubuntu package                                               |  static   | latest, debug |
| net-base        | Ubuntu package                                               |  static   | latest, debug |
| tzdata          | Ubuntu package                                               |  static   | latest, debug |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages |  static   | latest, debug |
| libc6           | Ubuntu package                                               |   base    | latest, debug |
| libssl          | Ubuntu package                                               |   base    | latest, debug |
| openssl         | Ubuntu package                                               |   base    | latest, debug |
| tini            | application                                                  |   base    | latest, debug |
| libgcc1         | Ubuntu package                                               |   cc   | latest, debug |
| libgcc-s1       | Ubuntu package                                               |   cc   | latest, debug |
| libgomp1        | Ubuntu package                                               |   cc   | latest, debug |
| libstdc++6      | Ubuntu package                                               |   cc   | latest, debug |
| nodejs 14       | Nodejs application                                           | nodejs 14 | latest, debug |
| nodejs 16       | Nodejs application                                           | nodejs 16 | latest, debug |
| busybox         | Application                                                  |   debug   |     debug     |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/node"]
```

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```

## Security

Security scan of the image updated daily : [14](../../security/table/nodejs_14) [14_debug](../../security/table/nodejs_14_debug) [16](../../security/table/nodejs_16) [16_debug](../../security/table/nodejs_16_debug)

Security scan for Nodejs tar.gz archive installation is not supported by Trivy. See https://github.com/nodejs/node/blob/master/SECURITY.md for more information on security issue related to Nodejs.

