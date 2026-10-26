.class Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/s/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/catvod/spider/merge/s/E<",
        "Lokhttp3/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

.field final synthetic val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

.field final synthetic val$responseCallback:Lokhttp3/Callback;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Callback;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V
    .registers 4

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$responseCallback:Lokhttp3/Callback;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 5

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$responseCallback:Lokhttp3/Callback;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, v1, p1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1a

    :cond_e
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$responseCallback:Lokhttp3/Callback;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_1a
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->onSuccess(Lokhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Lokhttp3/Response;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$responseCallback:Lokhttp3/Callback;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    # invokes: Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->toCronetCallFactoryResponse(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;
    invoke-static {v1, p1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory;->access$400(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_25

    :catch_c
    move-exception p1

    const-string v0, "Callback failure for "

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$2;->this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    # invokes: Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->toLoggableString()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->access$500(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CronetCallFactory"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method
