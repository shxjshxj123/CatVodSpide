.class final Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;


# static fields
.field private static final IN_MEMORY_BODY_LENGTH_THRESHOLD_BYTES:J = 0x100000L


# instance fields
.field private final inMemoryRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

.field private final streamingRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;->inMemoryRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;->streamingRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;

    return-void
.end method

.method static create(Ljava/util/concurrent/ExecutorService;)Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;
    .registers 4

    new-instance v0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;

    new-instance v1, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

    invoke-direct {v1}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;-><init>()V

    new-instance v2, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;

    invoke-direct {v2, p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;-><init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;)V

    return-object v0
.end method


# virtual methods
.method public convertRequestBody(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .registers 8

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    const-wide/32 v2, 0x100000

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;->inMemoryRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

    invoke-virtual {v0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;->convertRequestBody(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    move-result-object p1

    return-object p1

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;->streamingRequestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;

    invoke-virtual {v0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter;->convertRequestBody(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    move-result-object p1

    return-object p1
.end method
