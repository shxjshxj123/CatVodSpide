.class Lcom/google/net/cronet/okhttptransport/RedirectStrategy$WithoutRedirectsHolder$1;
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

    const/4 v0, 0x0

    return v0
.end method

.method numberOfRedirectsToFollow()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
