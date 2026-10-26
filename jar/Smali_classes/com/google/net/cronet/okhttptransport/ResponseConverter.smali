.class final Lcom/google/net/cronet/okhttptransport/ResponseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMA_SPLITTER:Lcom/github/catvod/spider/merge/o/r;

.field private static final CONTENT_ENCODING_HEADER_NAME:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH_HEADER_NAME:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE_HEADER_NAME:Ljava/lang/String; = "Content-Type"

.field private static final ENCODINGS_HANDLED_BY_CRONET:Lcom/github/catvod/spider/merge/p/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/github/catvod/spider/merge/p/g;->j()Lcom/github/catvod/spider/merge/p/g;

    move-result-object v0

    sput-object v0, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->ENCODINGS_HANDLED_BY_CRONET:Lcom/github/catvod/spider/merge/p/g;

    invoke-static {}, Lcom/github/catvod/spider/merge/o/r;->f()Lcom/github/catvod/spider/merge/o/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/o/r;->h()Lcom/github/catvod/spider/merge/o/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/o/r;->e()Lcom/github/catvod/spider/merge/o/r;

    move-result-object v0

    sput-object v0, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->COMMA_SPLITTER:Lcom/github/catvod/spider/merge/o/r;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->lambda$toResponseAsync$0(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static convertProtocol(Ljava/lang/String;)Lokhttp3/Protocol;
    .registers 2

    const-string v0, "quic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    return-object p0

    :cond_b
    const-string v0, "h3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    return-object p0

    :cond_16
    const-string v0, "spdy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object p0

    :cond_21
    const-string v0, "h2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object p0

    :cond_2c
    const-string v0, "http1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    return-object p0

    :cond_37
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    return-object p0
.end method

.method private static createResponseBody(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;
    .registers 9

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_12

    move-wide v0, v2

    goto :goto_1a

    :cond_12
    if-eqz p3, :cond_1a

    :try_start_14
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    nop

    :cond_1a
    :goto_1a
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_22

    const/16 p0, 0xcd

    if-ne p1, p0, :cond_26

    :cond_22
    cmp-long p0, v0, v2

    if-gtz p0, :cond_37

    :cond_26
    if-eqz p2, :cond_2d

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0

    :cond_37
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HTTP "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had non-zero Content-Length: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFutureValue(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/W;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getLastHeaderValue(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_2c

    .line 1
    :cond_13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_26
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2

    :cond_a
    return-object p0
.end method

.method private synthetic lambda$toResponseAsync$0(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->toResponse(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method toResponse(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;
    .registers 13

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->getUrlResponseInfo()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v1

    invoke-static {v1}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->getFutureValue(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/UrlResponseInfo;

    const-string v2, "Content-Type"

    invoke-static {v2, v1}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->getLastHeaderValue(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string v6, "Content-Encoding"

    invoke-static {v4, v6, v5}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->COMMA_SPLITTER:Lcom/github/catvod/spider/merge/o/r;

    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge/o/r;->g(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    .line 1
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_4a

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    :cond_4a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 3
    :cond_5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_6f

    sget-object v4, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->ENCODINGS_HANDLED_BY_CRONET:Lcom/github/catvod/spider/merge/p/g;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v3, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v3, 0x1

    :goto_70
    const-string v4, "Content-Length"

    if-eqz v3, :cond_79

    invoke-static {v4, v1}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->getLastHeaderValue(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7a

    :cond_79
    const/4 v8, 0x0

    :goto_7a
    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v9

    invoke-virtual {p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->getBodySource()Lcom/github/catvod/spider/merge/s/M;

    move-result-object p2

    invoke-static {p2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->getFutureValue(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokio/Source;

    invoke-static {p1, v9, v2, v8, p2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->createResponseBody(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->convertProtocol(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b7
    :goto_b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-nez v3, :cond_df

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v4}, Lcom/github/catvod/spider/merge/N/a;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v6}, Lcom/github/catvod/spider/merge/N/a;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    :cond_dd
    const/4 v1, 0x0

    goto :goto_e0

    :cond_df
    const/4 v1, 0x1

    :goto_e0
    if-eqz v1, :cond_b7

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    goto :goto_b7

    :cond_f2
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method toResponseAsync(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/github/catvod/spider/merge/s/M;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;",
            ")",
            "Lcom/github/catvod/spider/merge/s/M<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/catvod/spider/merge/s/M;

    invoke-virtual {p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->getUrlResponseInfo()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->getBodySource()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/H;->f([Lcom/github/catvod/spider/merge/s/M;)Lcom/github/catvod/spider/merge/s/G;

    move-result-object v0

    new-instance v1, Lcom/google/net/cronet/okhttptransport/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/b;-><init>(Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/s/G;->a(Ljava/util/concurrent/Callable;)Lcom/github/catvod/spider/merge/s/M;

    move-result-object p1

    return-object p1
.end method
