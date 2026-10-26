.class Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder$1;
.super Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;-><init>(Lcom/google/net/cronet/okhttptransport/RedirectStrategy$1;)V

    return-void
.end method


# virtual methods
.method followRedirects()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method numberOfRedirectsToFollow()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method
