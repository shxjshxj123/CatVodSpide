.class public final synthetic Lcom/github/catvod/spider/merge/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic a:Lcom/github/catvod/spider/merge/k/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/k/e;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/k/e;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/k/e;->a:Lcom/github/catvod/spider/merge/k/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    sget-object p1, Lcom/github/catvod/spider/merge/k/g;->d:Ljavax/net/ssl/X509TrustManager;

    const/4 p1, 0x1

    return p1
.end method
