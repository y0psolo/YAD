# Python image

This image is designed for running python application.

## Package and application list

| Name                 | type                                                         | Layer  |      Tag      |
| -------------------- | :----------------------------------------------------------- | :----: | :-----------: |
| base-files           | Ubuntu package                                               | static | latest, debug |
| net-base             | Ubuntu package                                               | static | latest, debug |
| tzdata               | Ubuntu package                                               | static | latest, debug |
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | latest, debug |
| libc6                | Ubuntu package                                               |  base  | latest, debug |
| libssl               | Ubuntu package                                               |  base  | latest, debug |
| openssl              | Ubuntu package                                               |  base  | latest, debug |
| tini                 | application                                                  |  base  | latest, debug |
| libgcc1              | Ubuntu package                                               |   cc   | latest, debug |
| libgomp1             | Ubuntu package                                               |   cc   | latest, debug |
| linstdc++6           | Ubuntu package                                               |   cc   | latest, debug |
| dash                 | Ubuntu package                                               | python | latest, debug |
| libbz2-1.0           | Ubuntu package                                               | python | latest, debug |
| libdb5.3             | Ubuntu package                                               | python | latest, debug |
| libffi7              | Ubuntu package                                               | python | latest, debug |
| liblzma5             | Ubuntu package                                               | python | latest, debug |
| libmpdec2            | Ubuntu package                                               | python | latest, debug |
| libncursesw6         | Ubuntu package                                               | python | latest, debug |
| libpython3.8-minimal | Ubuntu package                                               | python | latest, debug |
| libpython3.8-stdlib  | Ubuntu package                                               | python | latest, debug |
| libreadline8         | Ubuntu package                                               | python | latest, debug |
| libsqlite3-0         | Ubuntu package                                               | python | latest, debug |
| libtinfo6            | Ubuntu package                                               | python | latest, debug |
| mime-support         | Ubuntu package                                               | python | latest, debug |
| python3-distutils    | Ubuntu package                                               | python | latest, debug |
| python3.8-minimal    | Ubuntu package                                               | python | latest, debug |
| readline-common      | Ubuntu package                                               | python | latest, debug |
| libcrypt1            | Ubuntu package                                               | python | latest, debug |
| libc-bin             | Ubuntu package                                               | python | latest, debug |
| busybox              | Application                                                  | debug  |     debug     |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

```dockerfile
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/bin/python3"]
```

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```

## Security

Security scan of the image updated daily : [latest](../../security/table/python_latest) [debug](../../security/table/python_latest)

