# Prometheus collection images

## Prometheus image 

This image is designed for running prometheus application.

### Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| prometheus      | Prometheus Application                                       | prometheus |
| busybox         | Application                                                  | debug  |

### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/prometheus"]
```

### Security

Security scan of the image updated daily : [latest](../../security/table/prometheus_latest)

## Alert Manager image 

This image is designed for running node exporter application.

### Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| node-exporter   | Node exporter Application                                    | prometheus |
| busybox         | Application                                                  | debug  |

### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/node-exporter"]
```

### Security

Security scan of the image updated daily : [latest](../../security/table/nodeexporter_latest)

## Node exporter image 

This image is designed for running node exporter application.

### Package and application list

| Name            | type                                                         | Layer  |
| --------------- | :----------------------------------------------------------- | :----: |
| base-files      | Ubuntu package                                               | static |
| net-base        | Ubuntu package                                               | static |
| tzdata          | Ubuntu package                                               | static |
| ca-certificates | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static |
| alertmanager    | Alertmanager Application                                     | prometheus |
| busybox         | Application                                                  | debug  |

### Default Entrypoint

The default Entrypoint for the latest tag is :

```dockerfile
ENTRYPOINT ["/usr/bin/alertmanager"]
```

### Security

Security scan of the image updated daily : [latest](../../security/table/alertmanager_latest)