# Trino image

## Package and application list

| Name                 | type                                                         | Layer       |    Image      |
| -------------------- | :----------------------------------------------------------- | :---------: | :-----------: |
| base-files           | Ubuntu package                                               | static      | trino/trinocli|
| net-base             | Ubuntu package                                               | static      | trino/trinocli|
| tzdata               | Ubuntu package                                               | static      | trino/trinocli|
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | trino/trinocli |
| libc6                | Ubuntu package                                               |  base       | trino/trinocli|
| libssl               | Ubuntu package                                               |  base       | trino/trinocli|
| openssl              | Ubuntu package                                               |  base       | trino/trinocli|
| tini                 | application                                                  |  base       | trino/trinocli|
| libgcc1              | Ubuntu package                                               |   cc        | trino/trinocli|
| libgcc-s1            | Ubuntu package                                               |   cc        | trino/trinocli|
| libgomp1             | Ubuntu package                                               |   cc        | trino/trinocli|
| libstdc++6           | Ubuntu package                                               |   cc        | trino/trinocli|
| libjpeg-turbo8       | Ubuntu package                                               | java        | trino/trinocli|
| libpng16-16          | Ubuntu package                                               | java        | trino/trinocli|
| liblcms2-2           | Ubuntu package                                               | java        | trino/trinocli|
| libfreetype6         | Ubuntu package                                               | java        | trino/trinocli|
| fonts-dejavu-core    | Ubuntu package                                               | java        | trino/trinocli|
| fontconfig-config    | Ubuntu package                                               | java        | trino/trinocli|
| libfontconfig1       | Ubuntu package                                               | java        | trino/trinocli|
| azul-8-jre           | Java 8 Azul package                                          | azul 8      | trino/trinocli|
| trino server         | Trino Application jars                                       | trino       | trino         |
| trino cli            | Trino cli jar                                                | trinocli    | trinocli      |
| libtinfo6            | Ubuntu package                                               | trinocli    | trinocli      |
| dash                 | Ubuntu package                                               | trinocli    | trinocli      |
| less                 | Ubuntu package                                               | trinocli    | trinocli      |

## Trino Server 

### Environment variable

Here is the default CLASSPATH defined in the container image :
```bash
CLASSPATH="/opt/trino/lib/*:/etc/trino:/opt/trino/plugin"
```

The default JVM parameter are defined in the JAVA_TOOL_OPTIONS environment variable. Finde below the default value defined in the container image.
```bash
JAVA_TOOL_OPTIONS="-Xmx16G -XX:-UseBiasedLocking -XX:+UseG1GC -XX:G1HeapRegionSize=32M -XX:+ExplicitGCInvokesConcurrent -XX:+ExitOnOutOfMemoryError -XX:+HeapDumpOnOutOfMemoryError -XX:-OmitStackTraceInFastThrow -XX:ReservedCodeCacheSize=512M -XX:PerMethodRecompilationCutoff=10000 -XX:PerBytecodeRecompilationCutoff=10000 -Djdk.attach.allowAttachSelf=true -Djdk.nio.maxCachedBufferSize=2000000 -Dnode.data-dir=/data/trino -Dplugin.dir=/opt/trino/plugin -Dlog.levels-file=/etc/trino/log.properties -Dconfig=/etc/trino/config.properties"
```
To change these paremeters you need to overide the JAVA_TOOL_OPTIONS environment variable.

### Entrypoint

```Docker
["/usr/bin/tini", "--", "/usr/bin/java", "-server", "io.trino.server.TrinoServer"]
```

### Using image

```Bash
docker run --rm -it -p 8080:8080 -v /data/trino  bazel/image/trino:server
```

## Trino cli
### Entrypoint

```Docker
["/usr/bin/trino-cli.jar"]
```

### Using image

```Bash
docker run -it --rm --network host bazel/image/trino:cli
```