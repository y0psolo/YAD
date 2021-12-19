# Spark image

## Package and application list

| Name                 | type                                                         | Layer       |    Image      |
| -------------------- | :----------------------------------------------------------- | :---------: | :-----------: |
| base-files           | Ubuntu package                                               | static      | spark/pyspark/historyserver  |
| net-base             | Ubuntu package                                               | static      | spark/pyspark/historyserver  |
| tzdata               | Ubuntu package                                               | static      | spark/pyspark/historyserver  |
| ca-certificates      | Only /usr/share/ca-certificates directory and /usr/share/doc/ca-certificates/copyright contained in the ubuntu packages | static | spark/pyspark/historyserver |
| libc6                | Ubuntu package                                               |  base       | spark/pyspark/historyserver  |
| libssl               | Ubuntu package                                               |  base       | spark/pyspark/historyserver  |
| openssl              | Ubuntu package                                               |  base       | spark/pyspark/historyserver  |
| tini                 | application                                                  |  base       | spark/pyspark/historyserver  |
| libgcc1              | Ubuntu package                                               |   cc        | spark/pyspark/historyserver  |
| libgcc-s1            | Ubuntu package                                               |   cc        | spark/pyspark/historyserver  |
| libgomp1             | Ubuntu package                                               |   cc        | spark/pyspark/historyserver  |
| libstdc++6           | Ubuntu package                                               |   cc        | spark/pyspark/historyserver  |
| libjpeg-turbo8       | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| libpng16-16          | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| liblcms2-2           | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| libfreetype6         | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| fonts-dejavu-core    | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| fontconfig-config    | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| libfontconfig1       | Ubuntu package                                               | java        | spark/pyspark/historyserver  |
| coreutils            | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| libacl1              | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| libattr1             | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| libselinux1          | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| libpcre2-8-0         | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| tar                  | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| gzip                 | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| bash                 | Ubuntu package                                               | spark       | spark/pyspark/historyserver  |
| libtinfo6            | Ubuntu package                                               | python/spark| spark/pyspark/historyserver  |
| azul-8-jre           | Java 8 Azul package                                          | azul 8      | spark/pyspark/historyserver  |
| spark 3.x            | Spark java package, licences and scripts                     | spark       | spark/pyspark/historyserver  |
| dash                 | Ubuntu package                                               | python      | pyspark                      |
| libbz2-1.0           | Ubuntu package                                               | python      | pyspark                      |
| libdb5.3             | Ubuntu package                                               | python      | pyspark                      |
| libffi7              | Ubuntu package                                               | python      | pyspark                      |
| liblzma5             | Ubuntu package                                               | python      | pyspark                      |
| libmpdec2            | Ubuntu package                                               | python      | pyspark                      |
| libncursesw6         | Ubuntu package                                               | python      | pyspark                      |
| libpython3.8-minimal | Ubuntu package                                               | python      | pyspark                      |
| libpython3.8-stdlib  | Ubuntu package                                               | python      | pyspark                      |
| libreadline8         | Ubuntu package                                               | python      | pyspark                      |
| libsqlite3-0         | Ubuntu package                                               | python      | pyspark                      |
| mime-support         | Ubuntu package                                               | python      | pyspark                      |
| python3-distutils    | Ubuntu package                                               | python      | pyspark                      |
| python3.8-minimal    | Ubuntu package                                               | python      | pyspark                      |
| readline-common      | Ubuntu package                                               | python      | pyspark                      |
| libcrypt1            | Ubuntu package                                               | python      | pyspark                      |
| libc-bin             | Ubuntu package                                               | python      | pyspark                      |
| spark 3.x            | Spark python package                                         | pyspark     | pyspark                      |

## Spark and pySpark image
### Entrypoint

```Docker
["/usr/bin/tini", "--", "/opt/spark/bin/spark-submit",]
```

### Using image

Download the spark archives on the spark site and extract it locally.

Run the PI example calculation for java : 
```Bash
docker run -it --rm --mount type=bind,source="<path to spark archives>/examples/jars/",target=/home/nonroot/jars yadist/spark:3.2 --class org.apache.spark.examples.JavaSparkPi --jars /home/nonroot/jars/scopt_2.12-3.7.1.jar,/home/nonroot/jars/spark-examples_2.12-3.1.2.jar /home/nonroot/jars/spark-examples_2.12-3.1.2.jar
```
Run the PI example calculation for python : 
```Bash
docker run -it --rm --mount type=bind,source="<path to spark archives>/examples/src/main/python/",target=/home/nonroot/python yadist/pyspark:3.2 /home/nonroot/python/pi.py
```

## Spark History server
### Entrypoint

```Docker
["/usr/bin/tini", "--", "/opt/spark/bin/spark-class", "org.apache.spark.deploy.history.HistoryServer",]
```

### Using image

```Bash
docker run --rm -it -v /tmp/spark-events -p 18080:18080 yadist/sparkhistoryserver:3.2
```

## Security

Security scan of the image updated daily.

| Name     | 2.4      | 3.0      | 3.1      | 3.2      |
| -------- | :------: | :------: | :------: | :------: |
| spark    | [2.4](../../security/table/spark_2.4) | [3.0](../../security/table/spark_3.0) | [3.1](../../security/table/spark_3.1) | [3.2](../../security/table/spark_3.2) |
| pyspark | [2.4](../../security/table/pyspark_2.4) | [3.0](../../security/table/pyspark_3.0) | [3.1](../../security/table/pyspark_3.1) | [3.2](../../security/table/pyspark_3.2) |
| sparkhistoryserver |[2.4](../../security/table/sparkhistoryserver_2.4) | [3.0](../../security/table/sparkhistoryserver_3.0) | [3.1](../../security/table/sparkhistoryserver_3.1) | [3.2](../../security/table/sparkhistoryserver_3.2) |

Security scan for Azul tar.gz archive installation is not supported by Trivy. To list CVE on Azul disctirbution see https://docs.azul.com/core/cve.