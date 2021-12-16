# Deno image

This image is designed for running typescript application.

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
| deno            | Deno Application                                             |  deno  |
| busybox         | Application                                                  | debug  |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/deno"]
```

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```

## Security

Security scan of the image updated daily : [bionic](../../security/table/deno_bionic) [focal](../../security/table/deno_focal)

Security scan for Deno application is not supported by Trivy. See https://github.com/denoland/deno/security/advisories for the full CVE list.

