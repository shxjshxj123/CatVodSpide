.class abstract Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field private final delegate:Lokhttp3/ResponseBody;


# direct methods
.method protected constructor <init>(Lokhttp3/ResponseBody;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->delegate:Lokhttp3/ResponseBody;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->customCloseHook()V

    return-void
.end method

.method public final contentLength()J
    .registers 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method abstract customCloseHook()V
.end method

.method public final source()Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/CronetTransportResponseBody;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
