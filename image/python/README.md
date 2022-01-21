# Python image

This image is designed for running python application.

## Package and application list

| Name                 | type                                                         | Layer  |
| -------------------- | :----------------------------------------------------------- | :----: |
| base-files           | Ubuntu package                                               | static |
| net-base             | Ubuntu package                                               | static |
| tzdata               | Ubuntu package                                               | static |
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| libc6                | Ubuntu package                                               |  base  |
| libssl               | Ubuntu package                                               |  base  |
| openssl              | Ubuntu package                                               |  base  |
| tini                 | application                                                  |  base  |
| libgcc1              | Ubuntu package                                               |   cc   |
| libgcc-s1            | Ubuntu package                                               |   cc   |
| libgomp1             | Ubuntu package                                               |   cc   |
| libstdc++6           | Ubuntu package                                               |   cc   |
| dash                 | Ubuntu package                                               | python |
| libbz2-1.0           | Ubuntu package                                               | python |
| libdb5.3             | Ubuntu package                                               | python |
| libffi7              | Ubuntu package                                               | python |
| liblzma5             | Ubuntu package                                               | python |
| libmpdec2            | Ubuntu package                                               | python |
| libncursesw6         | Ubuntu package                                               | python |
| libpython3.8-minimal | Ubuntu package                                               | python |
| libpython3.8-stdlib  | Ubuntu package                                               | python |
| libreadline8         | Ubuntu package                                               | python |
| libsqlite3-0         | Ubuntu package                                               | python |
| libtinfo6            | Ubuntu package                                               | python |
| mime-support         | Ubuntu package                                               | python |
| python3-distutils    | Ubuntu package                                               | python |
| python3.8-minimal    | Ubuntu package                                               | python |
| readline-common      | Ubuntu package                                               | python |
| libcrypt1            | Ubuntu package                                               | python |
| libc-bin             | Ubuntu package                                               | python |
| busybox              | Application                                                  | debug  |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/python3"]
```

## Security

Security scan of the image updated daily : [bionic](../../security/table/python_bionic) [focal](../../security/table/python_focal)

