# Static image

This image is designed for running application depending on no shared library.

## Package and application list

| Name            | type                                                         | Layer  |      Tag      |
| --------------- | ------------------------------------------------------------ | :----: | :-----------: |
| base-files      | Ubuntu package                                               | static | latest, debug |
| net-base        | Ubuntu package                                               | static | latest, debug |
| tzdata          | Ubuntu package                                               | static | latest, debug |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | latest, debug |
| busybox         | Application                                                  | debug  |     debug     |

## Default Entrypoint

The default Entrypoint for the latest tag is empty

The default Entrypoint for the debug tag is :

```dockerfile
ENTRYPOINT ["/bin/sh"]
```
