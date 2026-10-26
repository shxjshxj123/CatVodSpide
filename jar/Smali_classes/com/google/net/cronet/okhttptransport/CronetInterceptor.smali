.class public final Lcom/google/net/cronet/okhttptransport/CronetInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CANCELLATION_CHECK_INTERVAL_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CronetInterceptor"


# instance fields
.field private final activeCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokhttp3/Call;",
            "Lorg/chromium/net/UrlRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    new-instance v2, Lcom/github/catvod/spider/merge/b/n;

    invoke-direct {v2, p0, v0}, Lcom/github/catvod/spider/merge/b/n;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Lcom/google/net/cronet/okhttptransport/CronetInterceptor$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;-><init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->lambda$new$0()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/UrlRequest;

    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest;->cancel()V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_2e} :catch_2f

    goto :goto_a

    :catch_2f
    move-exception v1

    const-string v2, "CronetInterceptor"

    const-string v3, "Unable to propagate cancellation status"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_38
    return-void
.end method

.method public static newBuilder(Lorg/chromium/net/CronetEngine;)Lcom/google/net/cronet/okhttptransport/CronetInterceptor$Builder;
    .registers 2

    new-instance v0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$Builder;

    invoke-direct {v0, p0}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$Builder;-><init>(Lorg/chromium/net/CronetEngine;)V

    return-object v0
.end method

.method private toInterceptorResponse(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;
    .registers 6

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    instance-of v0, v0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;

    if-eqz v0, :cond_10

    return-object p1

    :cond_10
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;-><init>(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;Lokhttp3/ResponseBody;Lokhttp3/Call;Lcom/google/net/cronet/okhttptransport/CronetInterceptor$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->convert(Lokhttp3/Request;II)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getRequest()Lorg/chromium/net/UrlRequest;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_29
    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getRequest()Lorg/chromium/net/UrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest;->start()V

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->getResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->toInterceptorResponse(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_3c} :catch_3f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception v0

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_4a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
