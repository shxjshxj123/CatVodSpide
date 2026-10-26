.class Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;
.super Lorg/chromium/net/UploadDataProvider;
.source "SourceFile"


# instance fields
.field private volatile isMaterialized:Z

.field private final materializedBody:Lokio/Buffer;

.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

.field final synthetic val$length:J

.field final synthetic val$requestBody:Lokhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;JLokhttp3/RequestBody;)V
    .registers 5

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter;

    iput-wide p2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->val$length:J

    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->val$requestBody:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->isMaterialized:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->materializedBody:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public getLength()J
    .registers 3

    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->val$length:J

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 8

    iget-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->isMaterialized:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->val$requestBody:Lokhttp3/RequestBody;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->materializedBody:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->materializedBody:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->isMaterialized:Z

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->getLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->materializedBody:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_22

    goto :goto_41

    :cond_22
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes but got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$InMemoryRequestBodyConverter$1;->materializedBody:Lokio/Buffer;

    invoke-virtual {v0, p2}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4f

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The source has been exhausted but we expected more!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
