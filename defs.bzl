def version_string(string):
    return string.format(**versions)

def version_artifacts(artifacts):
    versioned = []

    for artifact in artifacts:
        components = artifact.split(":")

        if len(components) == 2:
            key = components[1].replace(".", "-").replace("_{scala}", "")
            artifact = artifact + ":{" + key + "}"

        versioned.append(artifact.format(**versions))

    return versioned

scala = "2.12"
scala_minor = "10"
scala_rje = "2_12"
hive = "2.3"

versions = {
    "RoaringBitmap": "0.8.12",
    "antlr4-runtime": "4.7.2",
    "arrow": "0.15.1",
    "avro": "1.9.1",
    "bonecp": "0.8.0.RELEASE",
    "chill": "0.9.4",
    "classutil": "1.5.1",
    "clearspring": "2.9.8",
    "commons-cli": "1.2",
    "commons-codec": "1.14",
    "commons-collections": "3.2.2",
    "commons-compiler": "3.0.15",
    "commons-compress": "1.19",
    "commons-crypto": "1.0.0",
    "commons-io": "2.6",
    "commons-lang": "2.6",
    "commons-lang3": "3.9",
    "commons-logging": "1.2",
    "commons-math3": "3.6.1",
    "commons-text": "1.8",
    "compress-lzf": "1.0.4",
    "curator": "2.7.1",
    "curator-client": "2.13.0",
    "derby": "10.10.2.0",
    "dropwizard": "4.1.1",
    "fabric8": "4.9.0",
    "flatbuffers-java": "1.9.0",
    "guava": "28.2-jre",
    "h2": "1.4.195",
    "hadoop": "3.2.1",
    "hadoop-mapred": "0.22.0",
    "hamcrest": "2.2",
    "hive": "%s.6" % hive,
    "hive-storage-api": "2.7.1",
    "htmlunit": "2.22",
    "httpcore": "4.4.10",
    "ivy": "2.5.0",
    "jackson": "2.10.2",
    "janino": "3.0.15",
    "javax-servlet-api": "4.0.1",
    "javax-ws-rs-api": "2.0.1",
    "jaxb-api": "2.2.11",
    "jaxb-runtime": "2.3.2",
    "jersey": "2.30",
    "jetty": "9.4.25.v20191220",
    "jline": "2.12",
    "jmock": "2.12.0",
    "jodd": "3.5.2",
    "jpam": "1.1",
    "json4s": "3.6.7",
    "jsr305": "3.0.2",
    "junit": "4.13",
    "kryo": "4.0.2",
    "leveldbjni-all": "1.8",
    "libthrift": "0.9.3",
    "log4j": "1.2.17",
    "logback-classic": "1.2.3",
    "lz4-java": "1.7.0",
    "mockito-1-10": "3.1.0.0",
    "mockito-core": "3.2.4",
    "mysql": "5.1.38",
    "netty": "4.1.44.Final",
    "okhttp": "3.12.10",
    "orc": "1.5.9",
    "oro": "2.0.8",
    "parquet": "1.10.1",
    "postgresql": "42.2.6",
    "py4j": "0.10.8.1",
    "pyrolite": "4.30",
    "sac": "1.3",
    "scala": scala,
    "scala-parser-combinators": "1.1.2",
    "scala-xml": "1.2.0",
    "scala_minor": "10",
    "scalacheck": "1.14.3",
    "scalatest": "3.0.8",
    "selenium": "2.52.0",
    "selenium-api": "2.52.0",
    "slf4j": "1.7.30",
    "snappy-java": "1.1.7.3",
    "univocity-parsers": "2.8.4",
    "xbean-asm7-shaded": "4.15",
    "zookeeper": "3.4.14",
    "zstd-jni": "1.4.4-3",
}

artifacts = [
    "ch.qos.logback:logback-classic",
    "com.clearspring.analytics:stream:{clearspring}",
    "com.esotericsoftware:kryo",
    "com.fasterxml.jackson.core:jackson-annotations:{jackson}",
    "com.fasterxml.jackson.core:jackson-core:{jackson}",
    "com.fasterxml.jackson.core:jackson-databind:{jackson}",
    "com.fasterxml.jackson.module:jackson-module-scala_{scala}:{jackson}",
    "com.github.luben:zstd-jni",
    "com.google.code.findbugs:jsr305",
    "com.google.flatbuffers:flatbuffers-java",
    "com.google.guava:guava",
    "com.h2database:h2",
    "com.jolbox:bonecp",
    "com.ning:compress-lzf",
    "com.squareup.okhttp3:okhttp",
    "com.twitter:chill-java:{chill}",
    "com.twitter:chill_{scala}:{chill}",
    "com.univocity:univocity-parsers",
    "commons-cli:commons-cli",
    "commons-codec:commons-codec",
    "commons-collections:commons-collections",
    "commons-io:commons-io",
    "commons-lang:commons-lang",
    "commons-logging:commons-logging",
    "io.dropwizard.metrics:metrics-core:{dropwizard}",
    "io.dropwizard.metrics:metrics-graphite:{dropwizard}",
    "io.dropwizard.metrics:metrics-jmx:{dropwizard}",
    "io.dropwizard.metrics:metrics-json:{dropwizard}",
    "io.dropwizard.metrics:metrics-jvm:{dropwizard}",
    "io.fabric8:kubernetes-client:{fabric8}",
    "io.fabric8:kubernetes-model:{fabric8}",
    "io.netty:netty-all:{netty}",
    "javax.servlet:javax.servlet-api",
    "javax.ws.rs:javax.ws.rs-api",
    "javax.xml.bind:jaxb-api",
    "jline:jline",
    "junit:junit",
    "log4j:log4j",
    "mysql:mysql-connector-java:{mysql}",
    "net.razorvine:pyrolite",
    "net.sf.jpam:jpam",
    "net.sf.py4j:py4j",
    "net.sourceforge.htmlunit:htmlunit-core-js:{htmlunit}",
    "net.sourceforge.htmlunit:htmlunit:{htmlunit}",
    "org.antlr:antlr4-runtime",
    "org.apache.arrow:arrow-format:{arrow}",
    "org.apache.arrow:arrow-memory:{arrow}",
    "org.apache.arrow:arrow-memory:{arrow}",
    "org.apache.arrow:arrow-vector:{arrow}",
    "org.apache.arrow:arrow-vector:{arrow}",
    "org.apache.avro:avro",
    "org.apache.avro:avro-mapred:{avro}",
    "org.apache.commons:commons-compress",
    "org.apache.commons:commons-crypto",
    "org.apache.commons:commons-lang3",
    "org.apache.commons:commons-math3",
    "org.apache.commons:commons-text",
    "org.apache.curator:apache-curator:{curator}",
    "org.apache.curator:curator-client",
    "org.apache.curator:curator-framework:{curator}",
    "org.apache.curator:curator-recipes:{curator}",
    "org.apache.curator:curator-test:{curator}",
    "org.apache.derby:derby",
    "org.apache.hadoop:hadoop-common:{hadoop}",
    "org.apache.hadoop:hadoop-hdfs-client:{hadoop}",
    "org.apache.hadoop:hadoop-mapred",
    "org.apache.hadoop:hadoop-mapreduce-client-core:{hadoop}",
    "org.apache.hadoop:hadoop-minikdc:{hadoop}",
    "org.apache.hadoop:hadoop-yarn-api:{hadoop}",
    "org.apache.hive.shims:hive-shims-common:{hive}",
    "org.apache.hive:hive-beeline:{hive}",
    "org.apache.hive:hive-cli:{hive}",
    "org.apache.hive:hive-common:{hive}",
    "org.apache.hive:hive-exec:jar:core:{hive}",
    "org.apache.hive:hive-jdbc:{hive}",
    "org.apache.hive:hive-metastore:{hive}",
    "org.apache.hive:hive-serde:{hive}",
    "org.apache.hive:hive-service-rpc:{hive}",
    "org.apache.hive:hive-storage-api:{hive-storage-api}",
    "org.apache.httpcomponents:httpcore",
    "org.apache.ivy:ivy",
    "org.apache.orc:orc-core:{orc}",
    "org.apache.orc:orc-mapreduce:{orc}",
    "org.apache.parquet:parquet-avro:{parquet}",
    "org.apache.parquet:parquet-avro:{parquet}",
    "org.apache.parquet:parquet-column:{parquet}",
    "org.apache.parquet:parquet-common:{parquet}",
    "org.apache.parquet:parquet-encoding:{parquet}",
    "org.apache.parquet:parquet-hadoop:{parquet}",
    "org.apache.parquet:parquet-hadoop:{parquet}",
    "org.apache.thrift:libthrift",
    "org.apache.xbean:xbean-asm7-shaded",
    "org.apache.zookeeper:zookeeper",
    "org.clapper:classutil_{scala}:{classutil}",
    "org.codehaus.janino:commons-compiler",
    "org.codehaus.janino:janino",
    "org.datanucleus:datanucleus-api-jdo:4.2.4",  # from hive ...
    "org.datanucleus:datanucleus-rdbms:4.1.19",  # from hive ...
    "org.datanucleus:javax.jdo:3.2.0-m3",  # from hive ...
    "org.eclipse.jetty:jetty-client:{jetty}",
    "org.eclipse.jetty:jetty-io:{jetty}",
    "org.eclipse.jetty:jetty-proxy:{jetty}",
    "org.eclipse.jetty:jetty-server:{jetty}",
    "org.eclipse.jetty:jetty-servlet:{jetty}",
    "org.eclipse.jetty:jetty-util:{jetty}",
    "org.fusesource.leveldbjni:leveldbjni-all",
    "org.glassfish.jaxb:jaxb-runtime",
    "org.glassfish.jersey.containers:jersey-container-servlet-core:{jersey}",
    "org.glassfish.jersey.containers:jersey-container-servlet:{jersey}",
    "org.glassfish.jersey.core:jersey-client:{jersey}",
    "org.glassfish.jersey.core:jersey-common:{jersey}",
    "org.glassfish.jersey.core:jersey-server:{jersey}",
    "org.glassfish.jersey.inject:jersey-hk2:{jersey}",
    "org.glassfish.jersey.test-framework.providers:jersey-test-framework-provider-simple:{jersey}",
    "org.hamcrest:hamcrest",
    "org.hamcrest:hamcrest-core:{hamcrest}",
    "org.hamcrest:hamcrest-library:{hamcrest}",
    "org.jmock:jmock",
    "org.jmock:jmock-junit4:{jmock}",
    "org.jodd:jodd-core:{jodd}",
    "org.json4s:json4s-ast_{scala}:{json4s}",
    "org.json4s:json4s-core_{scala}:{json4s}",
    "org.json4s:json4s-jackson_{scala}:{json4s}",
    "org.lz4:lz4-java",
    "org.mockito:mockito-core",
    "org.postgresql:postgresql",
    "org.roaringbitmap:RoaringBitmap",
    "org.scala-lang.modules:scala-parser-combinators_{scala}:{scala-parser-combinators}",
    "org.scala-lang.modules:scala-xml_{scala}:{scala-xml}",
    "org.scala-lang:scala-compiler:{scala}.{scala_minor}",
    "org.scalacheck:scalacheck_{scala}",
    "org.scalactic:scalactic_{scala}:{scalatest}",
    "org.scalatest:scalatest_{scala}",
    "org.seleniumhq.selenium:selenium-api",
    "org.seleniumhq.selenium:selenium-htmlunit-driver:{selenium}",
    "org.seleniumhq.selenium:selenium-java:{selenium}",
    "org.slf4j:jul-to-slf4j:{slf4j}",
    "org.slf4j:slf4j-api:{slf4j}",
    "org.slf4j:slf4j-log4j12:{slf4j}",
    "org.w3c.css:sac",
    "org.xerial.snappy:snappy-java",
    "oro:oro",
]

excluded_artifacts = [
    "com.sun.jersey:jersey-client",
    "com.sun.jersey:jersey-core",
    "com.sun.jersey:jersey-json",
    "com.sun.jersey:jersey-server",
    "com.sun.jersey:jersey-servlet",
    "org.apache.hive:hive-exec",
    "org.apache.hive:hive-service",
    "org.apache.logging.log4j:log4j-slf4j-impl",
    "org.apache.parquet:parquet-hadoop-bundle",
    "org.scala-lang:scala-compiler",
    "org.scala-lang:scala-library",
    "org.scala-lang:scala-reflect",
]

scala_extra_jars = {scala: {
    "scala_parser_combinators": {
        "sha256": "282c78d064d3e8f09b3663190d9494b85e0bb7d96b0da05994fe994384d96111",
        "version": version_string("{scala-parser-combinators}"),
    },
    "scala_xml": {
        "sha256": "1b48dc206f527b7604ef32492ada8e71706c63a65d999e0cabdafdc5793b4d63",
        "version": version_string("{scala-xml}"),
    },
    "scalactic": {
        "sha256": "5f9ad122f54e9a0112ff4fcaadfb2802d8796f5dde021caa4c831067fca68469",
        "version": version_string("{scalatest}"),
    },
    "scalatest": {
        "sha256": "a4045cea66f3eaab525696f3000d7d610593778bd070e98349a7066f872844cd",
        "version": version_string("{scalatest}"),
    },
}}

scala_version_shas = (
    version_string("{scala}.{scala_minor}"),
    {
        "scala_compiler": "cedc3b9c39d215a9a3ffc0cc75a1d784b51e9edc7f13051a1b4ad5ae22cfbc0c",
        "scala_library": "0a57044d10895f8d3dd66ad4286891f607169d948845ac51e17b4c1cf0ab569d",
        "scala_reflect": "56b609e1bab9144fb51525bfa01ccd72028154fc40a58685a1e9adcbe7835730",
    },
)
