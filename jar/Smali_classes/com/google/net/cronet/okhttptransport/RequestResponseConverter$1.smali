.class Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$ResponseSupplier;


# instance fields
.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

.field final synthetic val$callback:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$request:Lokhttp3/Request;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$callback:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lokhttp3/Response;
    .registers 4

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    # getter for: Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->responseConverter:Lcom/google/net/cronet/okhttptransport/ResponseConverter;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->access$000(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$request:Lokhttp3/Request;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$callback:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->toResponse(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFuture()Lcom/github/catvod/spider/merge/s/M;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->this$0:Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    # getter for: Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->responseConverter:Lcom/google/net/cronet/okhttptransport/ResponseConverter;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;->access$000(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$request:Lokhttp3/Request;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter$1;->val$callback:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->toResponseAsync(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/github/catvod/spider/merge/s/M;

    move-result-object v0

    return-object v0
.end method
