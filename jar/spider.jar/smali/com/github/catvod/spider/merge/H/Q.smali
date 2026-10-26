.class public final Lcom/github/catvod/spider/merge/H/Q;
.super Lcom/github/catvod/spider/merge/H/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge/H/e;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/H/e;-><init>(I)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    return-void
.end method
