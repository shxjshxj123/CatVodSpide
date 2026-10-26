.class Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;
.super Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;
.source "SourceFile"


# instance fields
.field private final call:Lokhttp3/Call;

.field final synthetic this$0:Lcom/google/net/cronet/okhttptransport/CronetInterceptor;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;Lokhttp3/ResponseBody;Lokhttp3/Call;)V
    .registers 4

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;->this$0:Lcom/google/net/cronet/okhttptransport/CronetInterceptor;

    invoke-direct {p0, p2}, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;->call:Lokhttp3/Call;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;Lokhttp3/ResponseBody;Lokhttp3/Call;Lcom/google/net/cronet/okhttptransport/CronetInterceptor$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;-><init>(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;Lokhttp3/ResponseBody;Lokhttp3/Call;)V

    return-void
.end method


# virtual methods
.method customCloseHook()V
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;->this$0:Lcom/google/net/cronet/okhttptransport/CronetInterceptor;

    # getter for: Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->activeCalls:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/CronetInterceptor;->access$200(Lcom/google/net/cronet/okhttptransport/CronetInterceptor;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/CronetInterceptor$CronetInterceptorResponseBody;->call:Lokhttp3/Call;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
