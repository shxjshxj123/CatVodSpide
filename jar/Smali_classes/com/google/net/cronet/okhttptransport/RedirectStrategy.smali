.class public abstract Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_REDIRECTS:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/RedirectStrategy$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;-><init>()V

    return-void
.end method

.method public static defaultStrategy()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
    .registers 1

    # getter for: Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder;->INSTANCE:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
    invoke-static {}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder;->access$100()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static withoutRedirects()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
    .registers 1

    # getter for: Lcom/google/net/cronet/okhttptransport/RedirectStrategy$WithoutRedirectsHolder;->INSTANCE:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
    invoke-static {}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$WithoutRedirectsHolder;->access$000()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract followRedirects()Z
.end method

.method abstract numberOfRedirectsToFollow()I
.end method
