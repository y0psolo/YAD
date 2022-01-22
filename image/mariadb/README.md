# Mariadb images

### Mariadb server image

This image is designed for running mariadb server application.

### Package and application list
#### Focal release

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
| zlib1g               | Ubuntu package                                               | mariadb     |
| libaio1              | Ubuntu package                                               | mariadb     |
| libcrypt1            | Ubuntu package                                               | mariadb     |
| libpmem1             | Ubuntu package                                               | mariadb     |
| liblz4-1             | Ubuntu package                                               | mariadb     |
| libpcre2-8-0         | Ubuntu package                                               | mariadb     |
| libsystemd0          | Ubuntu package                                               | mariadb     |
| liblzma5             | Ubuntu package                                               | mariadb     |
| libgcrypt20          | Ubuntu package                                               | mariadb     |
| libgpg-error0        | Ubuntu package                                               | mariadb     |
| galera-4             | Mariadb package                                              | mariadb     |
| mariadb-server-core  | Mariadb package                                              | mariadb     |

#### Bionic release

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
| zlib1g               | Ubuntu package                                               | mariadb     |
| libaio1              | Ubuntu package                                               | mariadb     |
| liblz4-1             | Ubuntu package                                               | mariadb     |
| libpcre2-8-0         | Ubuntu package                                               | mariadb     |
| libsystemd0          | Ubuntu package                                               | mariadb     |
| liblzma5             | Ubuntu package                                               | mariadb     |
| libgcrypt20          | Ubuntu package                                               | mariadb     |
| libgpg-error0        | Ubuntu package                                               | mariadb     |
| galera-4             | Mariadb package                                              | mariadb     |
| mariadb-server-core  | Mariadb package                                              | mariadb     |

### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/sbin/mariadbd",]
```

## Mariadb cli image

This image is designed for running mariadb cli.

### Package and application list

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
| zlib1g               | Ubuntu package                                               | mariadb     |
| libreadline5         | Ubuntu package                                               | mariadb     |
| libncurses6          | Ubuntu package                                               | mariadb     |
| libtinfo6            | Ubuntu package                                               | mariadb     |
| libmariadb3          | Mariadb package                                              | mariadb     |
| mariadb-client-core  | Mariadb package                                              | mariadb     |
| mariadb-client       | Mariadb package                                              | mariadb     |


### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/mariadb"]
```

## Mariadb init image

This image is designed for running init script during the mariadb containe initialization.

### Package and application list

|#### Focal release

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
| zlib1g               | Ubuntu package                                               | mariadb     |
| libaio1              | Ubuntu package                                               | mariadb     |
| libcrypt1            | Ubuntu package                                               | mariadb     |
| libpmem1             | Ubuntu package                                               | mariadb     |
| liblz4-1             | Ubuntu package                                               | mariadb     |
| libpcre2-8-0         | Ubuntu package                                               | mariadb     |
| libsystemd0          | Ubuntu package                                               | mariadb     |
| liblzma5             | Ubuntu package                                               | mariadb     |
| libgcrypt20          | Ubuntu package                                               | mariadb     |
| libgpg-error0        | Ubuntu package                                               | mariadb     |
| libreadline5         | Ubuntu package                                               | mariadb     |
| libncurses6          | Ubuntu package                                               | mariadb     |
| libtinfo6            | Ubuntu package                                               | mariadb     |
| galera-4             | Mariadb package                                              | mariadb     |
| mariadb-server-core  | Mariadb package                                              | mariadb     |
| libmariadb3          | Mariadb package                                              | mariadb     |
| mariadb-client-core  | Mariadb package                                              | mariadb     |
| mariadb-client       | Mariadb package                                              | mariadb     |
| busybox              | Application                                                  | debug       |

#### Bionic release

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
| zlib1g               | Ubuntu package                                               | mariadb     |
| libaio1              | Ubuntu package                                               | mariadb     |
| liblz4-1             | Ubuntu package                                               | mariadb     |
| libpcre2-8-0         | Ubuntu package                                               | mariadb     |
| libsystemd0          | Ubuntu package                                               | mariadb     |
| liblzma5             | Ubuntu package                                               | mariadb     |
| libgcrypt20          | Ubuntu package                                               | mariadb     |
| libgpg-error0        | Ubuntu package                                               | mariadb     |
| libreadline5         | Ubuntu package                                               | mariadb     |
| libncurses6          | Ubuntu package                                               | mariadb     |
| libtinfo6            | Ubuntu package                                               | mariadb     |
| galera-4             | Mariadb package                                              | mariadb     |
| mariadb-server-core  | Mariadb package                                              | mariadb     |
| libmariadb3          | Mariadb package                                              | mariadb     |
| mariadb-client-core  | Mariadb package                                              | mariadb     |
| mariadb-client       | Mariadb package                                              | mariadb     |
| busybox              | Application                                                  | debug       |


### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/sh"]
```

## Security

Security scan of the image updated daily

| Name     | 10.5      | 10.6      | 10.7      | 
| -------- | :-------: | :-------: | :-------: |
| server   | [bionic](../../security/table/mariadb_10.5_bionic) [focal](../../security/table/mariadb_10.5_focal) | [bionic](../../security/table/mariadb_10.6_bionic) [focal](../../security/table/mariadb_10.6_focal) | [bionic](../../security/table/mariadb_10.7_bionic) [focal](../../security/table/mariadb_10.7_focal) |
| cli      | [bionic](../../security/table/mariadbcli_10.5_bionic) [focal](../../security/table/mariadbcli_10.5_focal) | [bionic](../../security/table/mariadbcli_10.6_bionic) [focal](../../security/table/mariadbcli_10.6_focal) | [bionic](../../security/table/mariadbcli_10.7_bionic) [focal](../../security/table/mariadbcli_10.7_focal) |
| init     | [bionic](../../security/table/mariadbinit_10.5_bionic) [focal](../../security/table/mariadbinit_10.5_focal) | [bionic](../../security/table/mariadbinit_10.6_bionic) [focal](../../security/table/mariadbinit_10.6_focal) | [bionic](../../security/table/mariadbinit_10.7_bionic) [focal](../../security/table/mariadbinit_10.7_focal) |




