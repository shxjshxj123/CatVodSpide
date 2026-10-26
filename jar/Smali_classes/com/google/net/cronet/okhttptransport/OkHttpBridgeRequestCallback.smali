.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "SourceFile"


# static fields
.field private static final CRONET_BYTE_BUFFER_CAPACITY:I = 0x8000


# instance fields
.field private final bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/T<",
            "Lokio/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackResults:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;",
            ">;"
        }
    .end annotation
.end field

.field private final canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final headersFuture:Lcom/github/catvod/spider/merge/s/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/T<",
            "Lorg/chromium/net/UrlResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeoutMillis:J

.field private final redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

.field private volatile request:Lorg/chromium/net/UrlRequest;


# direct methods
.method constructor <init>(JLcom/google/net/cronet/okhttptransport/RedirectStrategy;)V
    .registers 8

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/merge/s/T;->w()Lcom/github/catvod/spider/merge/s/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lcom/github/catvod/spider/merge/s/T;->w()Lcom/github/catvod/spider/merge/s/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    invoke-static {v1}, Lcom/github/catvod/spider/merge/o/m;->b(Z)V

    cmp-long v0, p1, v2

    if-nez v0, :cond_37

    const-wide/32 p1, 0x7fffffff

    :cond_37
    iput-wide p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->readTimeoutMillis:J

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    return-void
.end method

.method static synthetic access$200(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->request:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->readTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method getBodySource()Lcom/github/catvod/spider/merge/s/M;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "Lokio/Source;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    return-object v0
.end method

.method getUrlResponseInfo()Lcom/github/catvod/spider/merge/s/M;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "Lorg/chromium/net/UrlResponseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    return-object v0
.end method

.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_CANCELED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/io/IOException;

    const-string p2, "The request was canceled!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 6

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    :cond_11
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_FAILED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p3, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 6

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_READ_COMPLETED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 4

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;->followRedirects()Z

    move-result p3

    if-nez p3, :cond_23

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p3, p2}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge/o/m;->h(Z)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    new-instance p3, Lokio/Buffer;

    invoke-direct {p3}, Lokio/Buffer;-><init>()V

    invoke-virtual {p2, p3}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge/o/m;->h(Z)V

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    return-void

    :cond_23
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;->numberOfRedirectsToFollow()I

    move-result p3

    if-gt p2, p3, :cond_37

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void

    :cond_37
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Too many follow-up requests: "

    .line 1
    invoke-static {p2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;->numberOfRedirectsToFollow()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/s/T;->u(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->request:Lorg/chromium/net/UrlRequest;

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->headersFuture:Lcom/github/catvod/spider/merge/s/T;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/o/m;->h(Z)V

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->bodySourceFuture:Lcom/github/catvod/spider/merge/s/T;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CronetBodySource;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/s/T;->t(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/o/m;->h(Z)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->callbackResults:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_SUCCESS:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
