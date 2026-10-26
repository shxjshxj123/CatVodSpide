.class final Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private final backgroundReadThrowable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pendingRead:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/github/catvod/spider/merge/s/T<",
            "Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->pendingRead:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->backgroundReadThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private getPendingCronetRead()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/github/catvod/spider/merge/s/T<",
            "Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->pendingRead:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while waiting for a read to finish!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method enqueueBodyRead(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->backgroundReadThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/H;->d(Ljava/lang/Throwable;)Lcom/github/catvod/spider/merge/s/M;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {}, Lcom/github/catvod/spider/merge/s/T;->w()Lcom/github/catvod/spider/merge/s/T;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->pendingRead:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->backgroundReadThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    :cond_29
    return-object v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method handleEndOfStreamSignal()V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->getPendingCronetRead()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/s/T;

    sget-object v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBackgroundReadError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->backgroundReadThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->pendingRead:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    :cond_16
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/github/catvod/spider/merge/o/m;->h(Z)V

    :goto_b
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_4f

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->getPendingCronetRead()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v3, v2

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_2a
    invoke-virtual {p1, v1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3f

    sub-long/2addr p2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The source has been exhausted but we expected more!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    throw p1
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    throw p1

    :cond_4f
    return-void
.end method
