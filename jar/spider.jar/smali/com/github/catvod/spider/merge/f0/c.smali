.class public final Lcom/github/catvod/spider/merge/f0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/e0/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/f;
    .registers 3

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->h()Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "attribute"

    return-object v0
.end method
