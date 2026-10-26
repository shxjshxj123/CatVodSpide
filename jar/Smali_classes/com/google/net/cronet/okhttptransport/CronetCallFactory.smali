.class public final Lcom/google/net/cronet/okhttptransport/CronetCallFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Call$Factory;


# static fields
.field private static final TAG:Ljava/lang/String; = "CronetCallFactory"


# instance fields
.field private final callTimeoutMillis:I

.field private final converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

.field private final readTimeoutMillis:I

.field private final responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private final writeTimeoutMillis:I


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;III)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Read timeout mustn\'t be negative!"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    if-ltz p4, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "Write timeout mustn\'t be negative!"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    if-ltz p5, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "Call timeout mustn\'t be negative!"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    iput p3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->readTimeoutMillis:I

    iput p4, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->writeTimeoutMillis:I

    iput p5, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->callTimeoutMillis:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;IIILcom/google/net/cronet/okhttptransport/CronetCallFactory$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;-><init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I
    .registers 1

    iget p0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->callTimeoutMillis:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I
    .registers 1

    iget p0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->readTimeoutMillis:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/net/cronet/okhttptransport/CronetCallFactory;)I
    .registers 1

    iget p0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->writeTimeoutMillis:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->toCronetCallFactoryResponse(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lorg/chromium/net/CronetEngine;)Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;
    .registers 2

    new-instance v0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;

    invoke-direct {v0, p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$Builder;-><init>(Lorg/chromium/net/CronetEngine;)V

    return-object v0
.end method

.method private static toCronetCallFactoryResponse(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 4

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;-><init>(Lokhttp3/ResponseBody;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .registers 9

    new-instance v6, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    iget-object v3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->converter:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    iget-object v4, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->responseCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;-><init>(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/CronetCallFactory;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Ljava/util/concurrent/ExecutorService;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;)V

    return-object v6
.end method
