# Yet Another Distroless

Yet Another Distroless (or YAD) is based on the existing Distroless distribution  maintained by the GoogleContainerTools team (https://github.com/GoogleContainerTools/distroless).

YAD differs from the distroless distribution on the following :

- The package manager used is rules_deb_packages (https://github.com/petermylemans/rules_deb_packages)
- The linux distribution tracked is the Ubuntu one. For now we only track the Ubuntu 20.04 (Focal Fossa). Other Ubuntu release later may be added.

## Why Distroless ?

Distroless are container restricting to what the application only need to run. It improves the maintenance of the dependencies and the overall security by removing all the software not needed

## How do use the images ?

The images are published on docker registry : https://hub.docker.com/u/yadist

You can use these images like any other Docker images.

The images are build for amd64 and arm64 architectures

### Entrypoints

Most of the distroless image does not contain a shell. That means the Dockerfile `ENTRYPOINT` command, when defined, must be specified in `vector` form, to avoid the container runtime prefixing with a shell.

This works:

```dockerfile
ENTRYPOINT ["myapp"]
```

But this does not work:

```dockerfile
ENTRYPOINT "myapp"Do
```

For the same reasons, if the entrypoint is left to the default empty vector, the CMD command should be specified in `vector` form.

### Images List

| Image Type                       | Available tags                                               | Usage                                                        |
| -------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [static](image/static/README.md) | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/static/latest?label=latest&logo=docker)](https://hub.docker.com/r/yadist/static/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/static/debug?color=red&label=debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/static/) | For running staticaly linked application (eg. Go)            |
| [base](image/base/README.md)     | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/base/latest?label=latest&logo=docker)](https://hub.docker.com/r/yadist/base/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/base/debug?color=red&label=debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/base/) | For running libc and openssl dynamically linked application (eg. Rust) |
| [cc](image/cc/README.md)         | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/cc/latest?label=latest&logo=docker)](https://hub.docker.com/r/yadist/cc/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/cc/debug?color=red&label=debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/cc/) | For running dynamically linked application compiled with gcc |
| [openjdk](image/java/README.md)  | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/openjdk/8?label=8&logo=docker)](https://hub.docker.com/r/yadist/openjdk/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/openjdk/11?label=11&logo=docker)](https://hub.docker.com/r/yadist/openjdk/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/openjdk/8_debug?color=red&label=8_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/openjdk/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/openjdk/11_debug?color=red&label=11_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/openjdk/) | For running java application with openjdk with full dependencies |
| [azul](image/java/README.md)     | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/azul/8?label=8&logo=docker)](https://hub.docker.com/r/yadist/azul/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/azul/11?label=11&logo=docker)](https://hub.docker.com/r/yadist/azul/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/azul/8_debug?color=red&label=8_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/azul/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/azul/11_debug?color=red&label=11_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/azul/) | For running java application with azul jre with full dependencies |
| [python](image/python/README.md) | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/python/latest?label=latest&logo=docker)](https://hub.docker.com/r/yadist/pyhon/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/python/debug?color=red&label=debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/pyhon/) | For running python application(python 3.x)                   |
| [nodejs](image/nodejs/README.md) | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/nodejs/14?label=14&logo=docker)](https://hub.docker.com/r/yadist/nodejs/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/nodejs/16?label=16&logo=docker)](https://hub.docker.com/r/yadist/nodejs/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/nodejs/14_debug?color=red&label=14_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/nodejs/)[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/nodejs/16_debug?color=red&label=16_debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/nodejs/) |                                                              |
| [deno](image/deno/README.md)     | [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/deno/latest?label=latest&logo=docker)](https://hub.docker.com/r/yadist/deno/)<br />[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yadist/deno/debug?color=red&label=debug&logo=docker&logoColor=red)](https://hub.docker.com/r/yadist/deno/) |                                                              |

### Security

The dependencies are updated daily and new images are released as soon as the dependencies are updated. We rely on CVE security release handled bu Ubuntu (https://ubuntu.com/security/cve) for Ubuntu packages.

For Azul JRE we rely on Azul security release (https://docs.azul.com/core/cve) 

