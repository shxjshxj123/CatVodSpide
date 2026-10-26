.class Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;
.super Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;
.source "SourceFile"


# instance fields
.field final synthetic val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V
    .registers 3

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    invoke-direct {p0, p1}, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    return-void
.end method


# virtual methods
.method customCloseHook()V
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$1;->val$call:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->timeout:Lokio/AsyncTimeout;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->access$600(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)Lokio/AsyncTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void
.end method
