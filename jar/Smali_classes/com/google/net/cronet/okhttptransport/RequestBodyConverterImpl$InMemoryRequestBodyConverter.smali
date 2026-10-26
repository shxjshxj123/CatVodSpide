.class final Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertRequestBody(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .registers 7

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_17

    const-wide/32 v2, 0x100000

    cmp-long p2, v0, v2

    if-gtz p2, :cond_17

    new-instance p2, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;-><init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;JLokhttp3/RequestBody;)V

    return-object p2

    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected definite length less than 1048576but got "

    .line 1
    invoke-static {p2, v0, v1}, Lcom/github/catvod/spider/merge/u/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
