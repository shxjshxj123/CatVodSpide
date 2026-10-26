.class final Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final request:Lorg/chromium/net/UrlRequest;

.field private final responseSupplier:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;


# direct methods
.method constructor <init>(Lorg/chromium/net/UrlRequest;Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->request:Lorg/chromium/net/UrlRequest;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->responseSupplier:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/chromium/net/UrlRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->request:Lorg/chromium/net/UrlRequest;

    return-object v0
.end method

.method public getResponse()Lokhttp3/Response;
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->responseSupplier:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;

    invoke-interface {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;->getResponse()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseAsync()Lcom/github/catvod/spider/merge/s/M;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$CronetRequestAndOkHttpResponse;->responseSupplier:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;

    invoke-interface {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;->getResponseFuture()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v0

    return-object v0
.end method
