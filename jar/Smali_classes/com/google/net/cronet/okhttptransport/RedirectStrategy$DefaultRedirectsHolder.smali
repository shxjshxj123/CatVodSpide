.class Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder$1;

    invoke-direct {v0}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder$1;-><init>()V

    sput-object v0, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder;->INSTANCE:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;
    .registers 1

    sget-object v0, Lcom/google/net/cronet/okhttptransport/RedirectStrategy$DefaultRedirectsHolder;->INSTANCE:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    return-object v0
.end method
