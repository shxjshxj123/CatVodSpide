.class public final Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
.super Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder<",
        "Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;",
        "Lcom/google/net/cronet/okhttptransport/CronetCallFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_READ_WRITE_TIMEOUT_MILLIS:I = 0x2710


# instance fields
.field private callTimeoutMillis:I

.field private callbackExecutorService:Ljava/util/concurrent/ExecutorService;

.field private readTimeoutMillis:I

.field private writeTimeoutMillis:I


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .registers 3

    const-class v0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;

    invoke-direct {p0, p1, v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;-><init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->readTimeoutMillis:I

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->writeTimeoutMillis:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callTimeoutMillis:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callbackExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method build(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Lcom/google/net/cronet/okhttptransport/CronetCallFactory;
    .registers 10

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callbackExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_8
    move-object v3, v0

    new-instance v0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    iget v4, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->readTimeoutMillis:I

    iget v5, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->writeTimeoutMillis:I

    iget v6, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callTimeoutMillis:I

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;-><init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;IIILcom/google/net/cronet/okhttptransport/CronetCallFactory$1;)V

    return-object v0
.end method

.method bridge synthetic build(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->build(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    move-result-object p1

    return-object p1
.end method

.method public setCallTimeoutMillis(I)Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Call timeout mustn\'t be negative!"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callTimeoutMillis:I

    return-object p0
.end method

.method public setCallbackExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->callbackExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setReadTimeoutMillis(I)Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Read timeout mustn\'t be negative!"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->readTimeoutMillis:I

    return-object p0
.end method

.method public setWriteTimeoutMillis(I)Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Write timeout mustn\'t be negative!"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;->writeTimeoutMillis:I

    return-object p0
.end method
