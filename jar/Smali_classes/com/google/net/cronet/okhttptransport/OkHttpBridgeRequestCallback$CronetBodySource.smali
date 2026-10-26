.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private volatile closed:Z

.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x8000

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->closed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->closed:Z

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$300(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->request:Lorg/chromium/net/UrlRequest;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$400(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_1d
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 11

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$200(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "The request was canceled!"

    if-nez v0, :cond_fb

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    const-string v4, "sink == null"

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-ltz v5, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_e7

    iget-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->closed:Z

    xor-int/2addr v0, v2

    const-string v3, "closed"

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/o/m;->i(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$300(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3c

    return-wide v3

    :cond_3c
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, p2, v5

    if-gez v0, :cond_4d

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    long-to-int p3, p2

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_4d
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->request:Lorg/chromium/net/UrlRequest;
    invoke-static {p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$400(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    const/4 p2, 0x0

    :try_start_59
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$600(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->readTimeoutMillis:J
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$500(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v5, v6, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    move-object p3, p2

    :goto_76
    if-eqz p3, :cond_d8

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;->$SwitchMap$com$google$net$cronet$okhttptransport$OkHttpBridgeRequestCallback$CallbackStep:[I

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->callbackStep:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->access$700(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_c3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_af

    const/4 p2, 0x4

    if-ne v0, p2, :cond_a7

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->access$900(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->access$900(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->access$900(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-long p1, p1

    return-wide p1

    :cond_a7
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The switch block above is exhaustive!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_af
    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$300(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    return-wide v3

    :cond_c3
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$300(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->buffer:Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/io/IOException;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->exception:Lorg/chromium/net/CronetException;
    invoke-static {p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->access$800(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Lorg/chromium/net/CronetException;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_d8
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;->this$0:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    # getter for: Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->request:Lorg/chromium/net/UrlRequest;
    invoke-static {p1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->access$400(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    new-instance p1, Lcom/google/net/cronet/okhttptransport/CronetTimeoutException;

    invoke-direct {p1}, Lcom/google/net/cronet/okhttptransport/CronetTimeoutException;-><init>()V

    throw p1

    .line 1
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "byteCount < 0: %s"

    invoke-static {p2, v1}, Lcom/github/catvod/spider/merge/o/s;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_fb
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
