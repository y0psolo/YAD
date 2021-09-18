# Deno image

This image is designed for running typescript application.

## Package and application list

| Name            | type                                                         | Layer  |      Tag      |
| --------------- | :----------------------------------------------------------- | :----: | :-----------: |
| base-files      | Ubuntu package                                               | static | latest, debug |
| net-base        | Ubuntu package                                               | static | latest, debug |
| tzdata          | Ubuntu package                                               | static | latest, debug |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | latest, debug |
| libc6           | Ubuntu package                                               |  base  | latest, debug |
| libssl          | Ubuntu package                                               |  base  | latest, debug |
| openssl         | Ubuntu package                                               |  base  | latest, debug |
| tini            | application                                                  |  base  | latest, debug |
| libgcc1         | Ubuntu package                                               |   cc   | latest, debug |
| libgomp1        | Ubuntu package                                               |   cc   | latest, debug |
| linstdc++6      | Ubuntu package                                               |   cc   | latest, debug |
| deno            | Deno Application                                             |  deno  | latest, debug |
| busybox         | Application                                                  | debug  |     debug     |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/deno"]
```

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```

