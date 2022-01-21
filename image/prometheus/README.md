# Prometheus image

This image is designed for running prometheus and node exporter application.

## Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| prometheus      | Prometheus Application                                       | prometheus |
| busybox         | Application                                                  | debug  |

## Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/prometheus"]
```

## Security

Security scan of the image updated daily : [latest](../../security/table/prometheus_latest)


