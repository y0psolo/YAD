# Java image

This image is designed for running java application.

## Package and application list

| Name                 | type                                                         | Layer       |      Tag      |
| -------------------- | :----------------------------------------------------------- | :---------: | :-----------: |
| base-files           | Ubuntu package                                               | static      | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| net-base             | Ubuntu package                                               | static      | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| tzdata               | Ubuntu package                                               | static      | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libc6                | Ubuntu package                                               |  base       | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libssl               | Ubuntu package                                               |  base       | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| openssl              | Ubuntu package                                               |  base       | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| tini                 | application                                                  |  base       | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libgcc1              | Ubuntu package                                               |   cc        | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libgcc-s1            | Ubuntu package                                               |   cc        | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libgomp1             | Ubuntu package                                               |   cc        | 8, 8_debug, 11, 11_debug, 17, 17_debug |
| libstdc++6           | Ubuntu package                                               |   cc        | 8, 8_debug, 11, 11_debug, 17, 17_debug|
| libjpeg-turbo8       | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| libpng16-16          | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| liblcms2-2           | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| libfreetype6         | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| fonts-dejavu-core    | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| fontconfig-config    | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| libfontconfig1       | Ubuntu package                                               | java        | 8, 8_debug, 11, 11_debug, 17, 17_debug
| openjdk-8-jre        | Adoptium package                                             | adoptium 8  | 8, 8_debug
| openjdk-11-jre       | Adoptium package                                             | adoptium 11 | 11, 11_debug
| openjdk-17-jre       | Adoptium package                                             | adoptium 17 | 17, 17_debug
| azul-8-jre           | Azul package                                                 | azul 8      | 8, 8_debug
| azul-11-jre          | Azul package                                                 | azul 11     | 11, 11_debug
| azul-17-jre          | Azul package                                                 | azul 17     | 17, 17_debug
| busybox              | Application                                                  | debug       | 8_debug, 11_debug, 17_debug

## Default Entrypoint

The default Entrypoint is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/java", "-jar"]
```

## Security

Security scan of the image updated daily.

| Name     | Java 8   | Java 11  |  Java 17   |
| -------- | :------: | :------: | :--------: |
| Adoptium | [8](../../security/table/adoptium_8) / [8_debug](../../security/table/adoptium_8_debug) | [11](../../security/table/adoptium_11) / [11_debug](../../security/table/adoptium_11_debug) | [17](../../security/table/adoptium_17) / [17_debug](../../security/table/adoptium_17_debug)
| Azul     | [8](../../security/table/azul_8) / [8_debug](../../security/table/azul_8_debug) | [11](../../security/table/azul_11) / [11_debug](../../security/table/azul_11_debug) | [17](../../security/table/azul_17) / [17_debug](../../security/table/azul_17_debug)

Security scan for Adoptium and Azul tar.gz archive installation is not supported by Trivy. To list CVE on Azul disctirbution see https://docs.azul.com/core/cve.