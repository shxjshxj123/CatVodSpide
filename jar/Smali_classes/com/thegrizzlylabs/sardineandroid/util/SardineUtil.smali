.class public final Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_NAMESPACE_PREFIX:Ljava/lang/String; = "s"

.field public static final CUSTOM_NAMESPACE_URI:Ljava/lang/String; = "SAR:"

.field private static final DATETIME_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAMESPACE_PREFIX:Ljava/lang/String; = "D"

.field public static final DEFAULT_NAMESPACE_URI:Ljava/lang/String; = "DAV:"

.field private static final SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

.field private static final factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "EEEEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "EEE MMMM d HH:mm:ss yyyy"

    aput-object v3, v0, v1

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    sput-object v1, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_34
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_44

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_44
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDocument()Lorg/w3c/dom/Document;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_6} :catch_b

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;
    .registers 5

    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/x/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/x/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/x/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static createElement(Lorg/w3c/dom/Element;Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;
    .registers 5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/x/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/x/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/x/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static createQNameWithCustomNamespace(Ljava/lang/String;)Lcom/github/catvod/spider/merge/x/a;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    const-string v1, "SAR:"

    const-string v2, "s"

    invoke-direct {v0, v1, p0, v2}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createQNameWithDefaultNamespace(Ljava/lang/String;)Lcom/github/catvod/spider/merge/x/a;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    const-string v1, "DAV:"

    const-string v2, "D"

    invoke-direct {v0, v1, p0, v2}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSerializer()Lorg/simpleframework/xml/Serializer;
    .registers 6

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    const-class v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    new-instance v2, Lorg/simpleframework/xml/stream/Format;

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-direct {v2, v3}, Lorg/simpleframework/xml/stream/Format;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/simpleframework/xml/convert/Registry;

    invoke-direct {v3}, Lorg/simpleframework/xml/convert/Registry;-><init>()V

    new-instance v4, Lorg/simpleframework/xml/convert/RegistryStrategy;

    invoke-direct {v4, v3}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;)V

    new-instance v5, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v5, v4, v2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;

    invoke-direct {v2, v5, v1}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v3, v1, v2}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;

    invoke-direct {v1, v5, v0}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;-><init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    const-class v1, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;

    return-object v5
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_32

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->SUPPORTED_DATE_FORMATS:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_32
    :try_start_32
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_36
    .catch Ljava/text/ParseException; {:try_start_32 .. :try_end_36} :catch_37

    goto :goto_3a

    :catch_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static standardUTF8()Ljava/nio/charset/Charset;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    :cond_9
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static toQName(Lorg/w3c/dom/Element;)Lcom/github/catvod/spider/merge/x/a;
    .registers 4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DAV:"

    const-string v2, "D"

    invoke-direct {v0, v1, p0, v2}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_14
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 1
    invoke-direct {v0, v1, p0, v2}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_2a
    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toQName(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createQNameWithCustomNamespace(Ljava/lang/String;)Lcom/github/catvod/spider/merge/x/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static toQName(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/github/catvod/spider/merge/x/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createQNameWithCustomNamespace(Ljava/lang/String;)Lcom/github/catvod/spider/merge/x/a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_36
    return-object v0
.end method

.method public static toXml(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_11

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_11
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unmarshal(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->getSerializer()Lorg/simpleframework/xml/Serializer;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_8} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a valid DAV response"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_12
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
