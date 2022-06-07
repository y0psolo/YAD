# Java image

This image is designed for running java application.

## Package and application list

| Name                 | type                                                         | Layer       | 
| -------------------- | :----------------------------------------------------------- | :---------: | 
| base-files           | Ubuntu package                                               | static      | 
| net-base             | Ubuntu package                                               | static      | 
| tzdata               | Ubuntu package                                               | static      | 
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| libc6                | Ubuntu package                                               |  base       | 
| libssl               | Ubuntu package                                               |  base       | 
| openssl              | Ubuntu package                                               |  base       | 
| tini                 | application                                                  |  base       | 
| libgcc1              | Ubuntu package                                               |   cc        | 
| libgcc-s1            | Ubuntu package                                               |   cc        | 
| libgomp1             | Ubuntu package                                               |   cc        | 
| libstdc++6           | Ubuntu package                                               |   cc        | 
| libjpeg-turbo8       | Ubuntu package                                               | java        |
| libpng16-16          | Ubuntu package                                               | java        |
| liblcms2-2           | Ubuntu package                                               | java        | 
| libfreetype6         | Ubuntu package                                               | java        | 
| fonts-dejavu-core    | Ubuntu package                                               | java        | 
| fontconfig-config    | Ubuntu package                                               | java        | 
| libfontconfig1       | Ubuntu package                                               | java        | 
| openjdk-8-jre        | Adoptium package                                             | adoptium 8  |
| openjdk-11-jre       | Adoptium package                                             | adoptium 11 |
| openjdk-17-jre       | Adoptium package                                             | adoptium 17 |
| azul-8-jre           | Azul package                                                 | azul 8      |
| azul-11-jre          | Azul package                                                 | azul 11     |
| azul-17-jre          | Azul package                                                 | azul 17     |

## Default Entrypoint

The default Entrypoint is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/java", "-jar"]
```

## Security

Security scan of the image updated daily.

| Name     | Java 8   | Java 11  |  Java 17   |
| -------- | :------: | :------: | :--------: |
| Adoptium | [bionic](../../security/table/adoptium_8_bionic) / [focal](../../security/table/adoptium_8_focal) / [jammy](../../security/table/adoptium_8_jammy) | [bionic](../../security/table/adoptium_11_bionic) / [focal](../../security/table/adoptium_11_focal) / [jammy](../../security/table/adoptium_11_jammy) | [bionic](../../security/table/adoptium_17_bionic) / [focal](../../security/table/adoptium_17_focal) / [jammy](../../security/table/adoptium_17_jammy)
| Azul     | [bionic](../../security/table/azul_8_bionic) / [focal](../../security/table/azul_8_focal) / [jammy](../../security/table/azul_8_jammy) | [bionic](../../security/table/azul_11_bionic) / [focal](../../security/table/azul_11_focal) / [jammy](../../security/table/azul_11_jammy) | [bionic](../../security/table/azul_17_bionic) / [focal](../../security/table/azul_17_focal) / [jammy](../../security/table/azul_17_jammy)

Security scan for Adoptium and Azul tar.gz archive installation is not supported by Trivy. To list CVE on Azul disctirbution see https://docs.azul.com/core/cve.