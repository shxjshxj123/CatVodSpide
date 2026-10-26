.class final Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTENT_LENGTH_HEADER_NAME:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "application/octet-stream"

.field private static final CONTENT_TYPE_HEADER_NAME:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final cronetEngine:Lorg/chromium/net/CronetEngine;

.field private final redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

.field private final requestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;

.field private final responseConverter:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

.field private final uploadDataProviderExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lcom/google/net/cronet/okhttptransport/RedirectStrategy;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->cronetEngine:Lorg/chromium/net/CronetEngine;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->uploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->requestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;

    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->responseConverter:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    iput-object p5, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Lcom/google/net/cronet/okhttptransport/ResponseConverter;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->responseConverter:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    return-object p0
.end method

.method private createResponseSupplier(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;
    .registers 4

    new-instance v0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;-><init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V

    return-object v0
.end method


# virtual methods
.method convert(Lokhttp3/Request;II)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;
    .registers 12

    new-instance v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    int-to-long v1, p2

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;-><init>(JLcom/google/net/cronet/okhttptransport/RedirectStrategy;)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->cronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/github/catvod/spider/merge/s/H;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p2, v1, v0, v2}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const/4 v1, 0x0

    :goto_26
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_46
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_9a

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_69

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_69

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_69
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9a

    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8a

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_8a

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8c

    :cond_8a
    const-string v3, "application/octet-stream"

    :goto_8c
    invoke-virtual {p2, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->requestBodyConverter:Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;

    invoke-interface {v2, v1, p3}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;->convertRequestBody(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    move-result-object p3

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->uploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_9a
    new-instance p3, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;

    invoke-virtual {p2}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->createResponseSupplier(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;-><init>(Lorg/chromium/net/UrlRequest;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;)V

    return-object p3
.end method
