.class public final synthetic Lcom/google/net/cronet/okhttptransport/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

.field public final synthetic b:Lokhttp3/Request;

.field public final synthetic c:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/b;->a:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/b;->b:Lokhttp3/Request;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/b;->c:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/b;->a:Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/b;->b:Lokhttp3/Request;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/b;->c:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;->a(Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
