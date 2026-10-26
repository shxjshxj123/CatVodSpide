.class final Lcom/github/catvod/spider/merge/y/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field static synthetic b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "xml.stream.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/github/catvod/spider/merge/y/c;->a:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .registers 2

    :try_start_0
    const-class v0, Lcom/github/catvod/spider/merge/y/c;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/github/catvod/spider/merge/y/c;->a:Z

    if-eqz v0, :cond_1a

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "STREAM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method static c()Ljava/lang/Object;
    .registers 5

    const-class v0, Lcom/github/catvod/spider/merge/y/c;

    const-string v1, "javax.xml.stream.XMLInputFactory"

    .line 1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lcom/github/catvod/spider/merge/y/c;->b:Ljava/lang/Class;

    if-nez v3, :cond_13

    invoke-static {}, Lcom/github/catvod/spider/merge/y/c;->a()Ljava/lang/Class;

    sput-object v0, Lcom/github/catvod/spider/merge/y/c;->b:Ljava/lang/Class;

    move-object v3, v0

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "$ClassLoaderFinderConcrete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/y/b;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/y/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_31} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_31} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_32

    goto :goto_53

    :catch_32
    move-exception v0

    new-instance v1, Lcom/github/catvod/spider/merge/y/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/github/catvod/spider/merge/y/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3d
    nop

    sget-object v2, Lcom/github/catvod/spider/merge/y/c;->b:Ljava/lang/Class;

    if-nez v2, :cond_4e

    goto :goto_48

    :catch_43
    nop

    sget-object v2, Lcom/github/catvod/spider/merge/y/c;->b:Ljava/lang/Class;

    if-nez v2, :cond_4e

    :goto_48
    invoke-static {}, Lcom/github/catvod/spider/merge/y/c;->a()Ljava/lang/Class;

    sput-object v0, Lcom/github/catvod/spider/merge/y/c;->b:Ljava/lang/Class;

    goto :goto_4f

    :cond_4e
    move-object v0, v2

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    :goto_53
    :try_start_53
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "found system property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/y/c;->b(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/y/c;->d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_71} :catch_73

    goto/16 :goto_149

    :catch_73
    :cond_73
    :try_start_73
    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "jaxp.properties"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_dd

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_dd

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "found java.home property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/y/c;->b(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/y/c;->d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_d3} :catch_d5

    goto/16 :goto_149

    :catch_d5
    move-exception v1

    sget-boolean v2, Lcom/github/catvod/spider/merge/y/c;->a:Z

    if-eqz v2, :cond_dd

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_dd
    const-string v1, "META-INF/services/javax.xml.stream.XMLInputFactory"

    if-nez v0, :cond_e6

    :try_start_e1
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_ea

    :cond_e6
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_ea
    if-eqz v2, :cond_13e

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/y/c;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_13e

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "loaded from services: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/y/c;->b(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/y/c;->d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_135} :catch_136

    goto :goto_149

    :catch_136
    move-exception v1

    sget-boolean v2, Lcom/github/catvod/spider/merge/y/c;->a:Z

    if-eqz v2, :cond_13e

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13e
    const-string v1, "loaded from fallback value: com.bea.xml.stream.MXParserFactory"

    invoke-static {v1}, Lcom/github/catvod/spider/merge/y/c;->b(Ljava/lang/String;)V

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/y/c;->d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    :goto_149
    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 5

    const-string v0, "Provider "

    if-nez p1, :cond_9

    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p1

    new-instance v1, Lcom/github/catvod/spider/merge/y/a;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " could not be instantiated: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/github/catvod/spider/merge/y/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_30
    move-exception p1

    new-instance v1, Lcom/github/catvod/spider/merge/y/a;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " not found"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/github/catvod/spider/merge/y/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
