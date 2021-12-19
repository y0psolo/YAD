# Hive Metastore image

## Package and application list

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
| libjpeg-turbo8       | Ubuntu package                                               | java        |
| libpng16-16          | Ubuntu package                                               | java        |
| liblcms2-2           | Ubuntu package                                               | java        |
| libfreetype6         | Ubuntu package                                               | java        |
| fonts-dejavu-core    | Ubuntu package                                               | java        |
| fontconfig-config    | Ubuntu package                                               | java        |
| libfontconfig1       | Ubuntu package                                               | java        |
| hadoop 3.x           | Hadoop common librairies                                     | metastore   |
| hive 3.x             | Hive metastore standalone package                            | metastore   |
| openjdk-8-jre        | Java 8 Adoptium package                                      | adoptium 8  |
| azul-8-jre           | Java 8 Azul package                                          | azul 8      |

## Hive Metastore config file

To run the Hive Metastore server or schematool, first create a metastore-site.xml correclty filled with your credentials and specific configuration

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?><!--
   Licensed to the Apache Software Foundation (ASF) under one or more
   contributor license agreements.  See the NOTICE file distributed with
   this work for additional information regarding copyright ownership.
   The ASF licenses this file to You under the Apache License, Version 2.0
   (the "License"); you may not use this file except in compliance with
   the License.  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
-->
<!-- These are default values meant to allow easy smoke testing of the metastore.  You will
likely need to add a number of new values. -->
<configuration>
    <property>
        <name>fs.s3a.access.key</name>
        <value>Fill in your AccessKey</value>
    </property>
    <property>
        <name>fs.s3a.secret.key</name>
        <value>Fill in your SecretKey</value>
    </property>
    <property>
        <name>fs.s3a.connection.ssl.enabled</name>
        <value>true</value>
    </property>
    <property>
        <name>fs.s3a.path.style.access</name>
        <value>true</value>
    </property>
    <property>
        <name>fs.s3a.endpoint</name>
        <value>S3 Server URL:9000</value>
    </property>
    <property>
        <name>javax.jdo.option.ConnectionURL</name>
        <value>jdbc:postgresql://Backend URL or jdbc:mysql://Backend URL or name:30684/metadata?allowPublicKeyRetrieval=true&amp;useSSL=false&amp;serverTimezone=UTC</value>
    </property>
    <property>
        <name>javax.jdo.option.ConnectionDriverName</name>
        <value>org.postgresql.Driver or com.mysql.jdbc.Driver</value>
    </property>
    <property>
        <name>javax.jdo.option.ConnectionUserName</name>
        <value>Backend user name</value>
    </property>
    <property>
        <name>javax.jdo.option.ConnectionPassword</name>
        <value>Backend user password</value>
    </property>
    <property>
        <name>hive.metastore.event.db.notification.api.auth</name>
        <value>false</value>
    </property>
    <property>
        <name>metastore.thrift.uris</name>
        <value>thrift://localhost:9083</value>
        <description>Thrift URI for the remote metastore. Used by metastore client to connect to remote metastore.</description>
    </property>
    <property>
        <name>metastore.task.threads.always</name>
        <value>org.apache.hadoop.hive.metastore.events.EventCleanerTask</value>
    </property>
    <property>
        <name>metastore.expression.proxy</name>
        <value>org.apache.hadoop.hive.metastore.DefaultPartitionExpressionProxy</value>
    </property>
    <property>
        <name>metastore.warehouse.dir</name>
        <value>/user/hive/warehouse</value>
    </property>
</configuration>
```

## Environment variable
### CLASSPATH

Here is the default CLASSPATH defined in the container image :
```bash
CLASSPATH="/etc/hive:/opt/hive/lib/*:/opt/hadoop:/opt/hadoop/share/hadoop/common/lib/*:/opt/hadoop/share/hadoop/common/*"
```

### JVM launch parameter

The default JVM parameter are defined in the JAVA_TOOL_OPTIONS environment variable. Finde below the default value defined in the container image.
```bash
JAVA_TOOL_OPTIONS="-Dproc_run -Dproc_metastore -Dlog4j.configurationFile=metastore-log4j2.properties -Dyarn.log.dir=/var/logs -Dyarn.log.file=hadoop.log -Dyarn.home.dir=/opt/hadoop -Dyarn.root.logger=INFO,console -Xmx256m -Dhadoop.log.dir=/var/logs -Dhadoop.log.file=hadoop.log -Dhadoop.home.dir=/opt/hadoop -Dhadoop.root.logger=INFO,console -Dhadoop.security.logger=INFO,NullAppender -Dhadoop.id.str=nonroot"
```
To change these paremeters you need to overide the JAVA_TOOL_OPTIONS environment variable.

### Entrypoint

```Docker
["/usr/bin/tini", "--", "/usr/bin/java", "org.apache.hadoop.util.RunJar", "/opt/hive/lib/hive-standalone-metastore.jar"]
```

## How to launch
### Hive Metastore server

To launch the Hive metastore server :
```bash
docker run -it --rm --mount type=bind,source="$(pwd)/metastore-site.xml",target=/etc/hive/metastore-site.xml hivemetastore:latest org.apache.hadoop.hive.metastore.HiveMetaStore
```

### Hive Metastore shcematool

To launch the Hive metastore server :
```bash
docker run -it --rm --mount type=bind,source="$(pwd)/metastore-site.xml",target=/etc/hive/metastore-site.xml hivemetastore:latest org.apache.hadoop.hive.metastore.tools.MetastoreSchemaTool
```

## Security

Security scan of the image updated daily.

| Name     | latest   |
| -------- | :------: |
| hivemetastore    | [latest](../../security/table/hivemetastore_latest) |

Security scan for Azul tar.gz archive installation is not supported by Trivy. To list CVE on Azul disctirbution see https://docs.azul.com/core/cve.