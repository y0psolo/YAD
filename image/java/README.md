# Cc image

This image is designed for running java application.

## Package and application list

| Name                    | type                                                         |   Layer    |           Tag            |
| ----------------------- | :----------------------------------------------------------- | :--------: | :----------------------: |
| base-files              | Ubuntu package                                               |   static   | 8, 8_debug, 11, 11_debug |
| net-base                | Ubuntu package                                               |   static   | 8, 8_debug, 11, 11_debug |
| tzdata                  | Ubuntu package                                               |   static   | 8, 8_debug, 11, 11_debug |
| ca-certificates         | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages |   static   | 8, 8_debug, 11, 11_debug |
| libc6                   | Ubuntu package                                               |    base    | 8, 8_debug, 11, 11_debug |
| libssl                  | Ubuntu package                                               |    base    | 8, 8_debug, 11, 11_debug |
| openssl                 | Ubuntu package                                               |    base    | 8, 8_debug, 11, 11_debug |
| tini                    | application                                                  |    base    | 8, 8_debug, 11, 11_debug |
| libgcc1                 | Ubuntu package                                               |     cc     | 8, 8_debug, 11, 11_debug |
| libgomp1                | Ubuntu package                                               |     cc     | 8, 8_debug, 11, 11_debug |
| linstdc++6              | Ubuntu package                                               |     cc     | 8, 8_debug, 11, 11_debug |
| libjpeg-turbo8          | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| libpng16-16             | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| liblcms2-2              | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| libfreetype6            | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| fonts-dejavu-core       | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| fontconfig-config       | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| libfontconfig1          | Ubuntu package                                               |    java    | 8, 8_debug, 11, 11_debug |
| openjdk-8-jre-headless  | Ubuntu package                                               | openjdk 8  |        8, 8_debug        |
| openjdk-11-jre-headless | Ubuntu package                                               | openjdk 11 |       11, 11_debug       |
| aaul-8-jre-headless     | Azul package                                                 |   azul 8   |        8, 8_debug        |
| azul-11-jre-headless    | Azul package                                                 |  azul 11   |       11, 11_debug       |
| busybox                 | Application                                                  |   debug    |    8_debug, 11_debug     |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/java", "-jar"]
```

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```