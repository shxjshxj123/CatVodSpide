.class Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;
.super Lorg/chromium/net/UploadDataProvider;
.source "SourceFile"


# instance fields
.field private final broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

.field private final okHttpRequestBody:Lokhttp3/RequestBody;

.field private final readTaskExecutor:Lcom/github/catvod/spider/merge/s/N;

.field private readTaskFuture:Lcom/github/catvod/spider/merge/s/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/M<",
            "*>;"
        }
    .end annotation
.end field

.field private totalBytesReadFromOkHttp:J

.field private final writeTimeoutMillis:J


# direct methods
.method private constructor <init>(Lokhttp3/RequestBody;Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V
    .registers 6

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->okHttpRequestBody:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    instance-of p1, p3, Lcom/github/catvod/spider/merge/s/N;

    if-eqz p1, :cond_10

    check-cast p3, Lcom/github/catvod/spider/merge/s/N;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskExecutor:Lcom/github/catvod/spider/merge/s/N;

    goto :goto_16

    :cond_10
    invoke-static {p3}, Lcom/github/catvod/spider/merge/s/H;->e(Ljava/util/concurrent/ExecutorService;)Lcom/github/catvod/spider/merge/s/N;

    move-result-object p1

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskExecutor:Lcom/github/catvod/spider/merge/s/N;

    :goto_16
    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-nez p3, :cond_1f

    const-wide/32 p4, 0x7fffffff

    :cond_1f
    iput-wide p4, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->writeTimeoutMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RequestBody;Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;JLcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;-><init>(Lokhttp3/RequestBody;Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;Ljava/util/concurrent/ExecutorService;J)V

    return-void
.end method

.method public static synthetic a(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->lambda$ensureReadTaskStarted$0()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    return-object p0
.end method

.method private ensureReadTaskStarted()V
    .registers 4

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskFuture:Lcom/github/catvod/spider/merge/s/M;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskExecutor:Lcom/github/catvod/spider/merge/s/N;

    new-instance v1, Lcom/google/net/cronet/okhttptransport/a;

    invoke-direct {v1, p0}, Lcom/google/net/cronet/okhttptransport/a;-><init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)V

    invoke-interface {v0, v1}, Lcom/github/catvod/spider/merge/s/N;->submit(Ljava/util/concurrent/Callable;)Lcom/github/catvod/spider/merge/s/M;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskFuture:Lcom/github/catvod/spider/merge/s/M;

    new-instance v1, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider$1;

    invoke-direct {v1, p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider$1;-><init>(Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;)V

    invoke-static {}, Lcom/github/catvod/spider/merge/s/H;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge/s/H;->a(Lcom/github/catvod/spider/merge/s/M;Lcom/github/catvod/spider/merge/s/E;Ljava/util/concurrent/Executor;)V

    :cond_1d
    return-void
.end method

.method private handleLastBodyRead(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readFromOkHttp(Ljava/nio/ByteBuffer;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v2

    sget-object v3, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_28

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    .line 1
    :cond_28
    new-instance p1, Lcom/github/catvod/spider/merge/o/u;

    const-string p2, "END_OF_BODY reads shouldn\'t write anything to the buffer"

    invoke-static {p2, v3}, Lcom/github/catvod/spider/merge/o/s;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_34
    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->getLength()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    invoke-static {p1, p2, v0, v1}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->prepareBodyTooLongException(JJ)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private synthetic lambda$ensureReadTaskStarted$0()Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->okHttpRequestBody:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->handleEndOfStreamSignal()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static prepareBodyTooLongException(JJ)Ljava/io/IOException;
    .registers 7

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes but got at least "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readFromOkHttp(Ljava/nio/ByteBuffer;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;
    .registers 10

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->broker:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    invoke-virtual {v1, p1}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->enqueueBodyRead(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->writeTimeoutMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    .line 1
    :try_start_f
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_3d

    add-long/2addr v6, v2

    :goto_18
    :try_start_18
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1e} :catch_35
    .catchall {:try_start_18 .. :try_end_1e} :catchall_3d

    if-eqz v5, :cond_27

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 2
    :cond_27
    check-cast v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    iget-wide v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    return-object v1

    :catch_35
    const/4 v5, 0x1

    .line 3
    :try_start_36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3d

    sub-long v2, v6, v2

    goto :goto_18

    :catchall_3d
    move-exception p1

    if-eqz v5, :cond_47

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_47
    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method private readKnownBodyLength(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 10

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readFromOkHttp(Ljava/nio/ByteBuffer;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->getLength()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_38

    iget-wide v2, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->getLength()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_34

    sget-object p2, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$1;->$SwitchMap$com$google$net$cronet$okhttptransport$UploadBodyDataBroker$ReadResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_2f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_27

    goto :goto_33

    :cond_27
    new-instance p2, Ljava/io/IOException;

    const-string v1, "The source has been exhausted but we expected more data!"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2f
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->handleLastBodyRead(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    goto :goto_53

    :cond_38
    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->getLength()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->totalBytesReadFromOkHttp:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->prepareBodyTooLongException(JJ)Ljava/io/IOException;

    move-result-object p2

    throw p2
    :try_end_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_43} :catch_45
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_43} :catch_43

    :catch_43
    move-exception p2

    goto :goto_46

    :catch_45
    move-exception p2

    :goto_46
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskFuture:Lcom/github/catvod/spider/merge/s/M;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    :goto_53
    return-void
.end method

.method private readUnknownBodyLength(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readFromOkHttp(Ljava/nio/ByteBuffer;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object p2

    sget-object v0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V
    :try_end_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_1f

    :catch_e
    move-exception p2

    goto :goto_11

    :catch_10
    move-exception p2

    :goto_11
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readTaskFuture:Lcom/github/catvod/spider/merge/s/M;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public getLength()J
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->okHttpRequestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->ensureReadTaskStarted()V

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readUnknownBodyLength(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    goto :goto_14

    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl$StreamingRequestBodyConverter$StreamingUploadDataProvider;->readKnownBodyLength(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    :goto_14
    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rewind is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
