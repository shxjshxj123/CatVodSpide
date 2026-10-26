.class Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Call;


# instance fields
.field private final canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

.field private final executed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

.field private final okHttpRequest:Lokhttp3/Request;

.field private final responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private final timeout:Lokio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/CronetCallFactory;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->okHttpRequest:Lokhttp3/Request;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$1;

    invoke-direct {p1, p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$1;-><init>(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->callTimeoutMillis:I
    invoke-static {p2}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$100(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I

    move-result p2

    int-to-long p2, p2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/CronetCallFactory;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;-><init>(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/CronetCallFactory;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->toLoggableString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)Lokio/AsyncTimeout;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    return-object p0
.end method

.method private evaluateExecutionPreconditions()V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "Already Executed"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->i(ZLjava/lang/Object;)V

    return-void

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t execute canceled requests"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startRequestIfNotCanceled()V
    .registers 4

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "convertedRequestAndResponse must be set!"

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/o/m;->i(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getRequest()Lorg/chromium/net/UrlRequest;

    move-result-object v0

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    goto :goto_25

    :cond_22
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V

    :goto_25
    return-void
.end method

.method private toLoggableString()Ljava/lang/String;
    .registers 3

    const-string v0, "call to "

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getRequest()Lorg/chromium/net/UrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_1b
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->clone()Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/Call;
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->evaluateExecutionPreconditions()V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->request()Lokhttp3/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->readTimeoutMillis:I
    invoke-static {v2}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$200(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I

    move-result v2

    iget-object v3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->writeTimeoutMillis:I
    invoke-static {v3}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$300(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->convert(Lokhttp3/Request;II)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getResponseAsync()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v0

    new-instance v1, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;

    invoke-direct {v1, p0, p1, p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;-><init>(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Callback;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge/s/H;->a(Lcom/github/catvod/spider/merge/s/M;Lcom/github/catvod/spider/merge/s/E;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->startRequestIfNotCanceled()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    invoke-interface {p1, p0, v0}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_3e
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .registers 5

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->evaluateExecutionPreconditions()V

    :try_start_3
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->request()Lokhttp3/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->readTimeoutMillis:I
    invoke-static {v2}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$200(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I

    move-result v2

    iget-object v3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->motherFactory:Lcom/google/net/cronet/okhttptransport/CronetCallFactory;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->writeTimeoutMillis:I
    invoke-static {v3}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$300(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->convert(Lokhttp3/Request;II)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->convertedRequestAndResponse:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->startRequestIfNotCanceled()V

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getResponse()Lokhttp3/Response;

    move-result-object v0

    # invokes: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->toCronetCallFactoryResponse(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;
    invoke-static {p0, v0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$400(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2e} :catch_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    goto :goto_32

    :catch_31
    move-exception v0

    :goto_32
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v1}, Lokio/AsyncTimeout;->exit()Z

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->okHttpRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;

    return-object v0
.end method
