# Javapy image

This image is designed for running java application with python dependencies.

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
| dash                 | Ubuntu package                                               | python      | 
| libbz2-1.0           | Ubuntu package                                               | python      | 
| libdb5.3             | Ubuntu package                                               | python      | 
| libffi7              | Ubuntu package                                               | python      | 
| liblzma5             | Ubuntu package                                               | python      | 
| libmpdec2            | Ubuntu package                                               | python      | 
| libncursesw6         | Ubuntu package                                               | python      | 
| libpython3.8-minimal | Ubuntu package                                               | python      | 
| libpython3.8-stdlib  | Ubuntu package                                               | python      | 
| libreadline8         | Ubuntu package                                               | python      | 
| libsqlite3-0         | Ubuntu package                                               | python      | 
| libtinfo6            | Ubuntu package                                               | python      | 
| mime-support         | Ubuntu package                                               | python      | 
| python3-distutils    | Ubuntu package                                               | python      | 
| python3.8-minimal    | Ubuntu package                                               | python      | 
| readline-common      | Ubuntu package                                               | python      | 
| libcrypt1            | Ubuntu package                                               | python      | 
| libc-bin             | Ubuntu package                                               | python      | 
| openjdk-8-jre        | Adoptium package                                             | adoptium 8  | 
| openjdk-11-jre       | Adoptium package                                             | adoptium 11 | 
| openjdk-17-jre       | Adoptium package                                             | adoptium 17 | 
| azul-8-jre           | Azul package                                                 | azul 8      | 
| azul-11-jre          | Azul package                                                 | azul 11     | 
| azul-17-jre          | Azul package                                                 | azul 17     | 
| busybox              | Application                                                  | debug       | 

## Default Entrypoint

The default Entrypoint is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/java", "-jar"]
```

## Security

Security scan of the image updated daily.

| Name     | Java 8   | Java 11  |  Java 17   |
| -------- | :------: | :------: | :--------: |
| Adoptium | [bionic](../../security/table/adoptiumpy_8_18.04) / [focal](../../security/table/adoptiumpy_8_20.04) | [bionic](../../security/table/adoptiumpy_11_18.04) / [focal](../../security/table/adoptiumpy_11_20.04) | [bionic](../../security/table/adoptiumpy_17_18.04) / [focal](../../security/table/adoptiumpy_17_20.04)
| Azul     | [bionic](../../security/table/azulpy_8_18.04) / [focal](../../security/table/azulpy_8_20.04) | [bionic](../../security/table/azulpy_11_18.04) / [focal](../../security/table/azulpy_11_20.04) | [bionic](../../security/table/azulpy_17_18.04) / [focal](../../security/table/azulpy_17_20.04)

Security scan for Adoptium and Azul tar.gz archive installation is not supported by Trivy. To list CVE on Azul disctirbution see https://docs.azul.com/core/cve.