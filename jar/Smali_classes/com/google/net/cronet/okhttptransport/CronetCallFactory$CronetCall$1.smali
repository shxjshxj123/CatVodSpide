.class Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$1;
.super Lokio/AsyncTimeout;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;)V
    .registers 2

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$1;->this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall$1;->this$0:Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/CronetCallFactory$CronetCall;->cancel()V

    return-void
.end method
