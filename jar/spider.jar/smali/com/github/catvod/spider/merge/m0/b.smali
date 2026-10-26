.class public final Lcom/github/catvod/spider/merge/m0/b;
.super Lcom/github/catvod/spider/merge/m0/a;
.source "SourceFile"


# static fields
.field public static final a:Lcom/github/catvod/spider/merge/m0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/m0/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/m0/b;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/m0/b;->a:Lcom/github/catvod/spider/merge/m0/b;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/m0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    const-string v0, "NOP"

    return-object v0
.end method
