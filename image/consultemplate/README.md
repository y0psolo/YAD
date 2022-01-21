# Consul Template image

This image is designed for running consultemplate application.

## Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| consultemplate  | Consul template Application                                  | consul |
| busybox         | Application                                                  | debug  |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/consul-template"]
```

## Security

Security scan of the image updated daily : [latest](../../security/table/consultemplate_latest)


