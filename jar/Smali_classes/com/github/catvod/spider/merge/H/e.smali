.class public final Lcom/github/catvod/spider/merge/H/e;
.super Lcom/github/catvod/spider/merge/H/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    .line 1
    sget-object p1, Lcom/github/catvod/spider/merge/H/d;->a:Lcom/github/catvod/spider/merge/H/d;

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/c;-><init>(Lcom/github/catvod/spider/merge/J/a;)V

    return-void

    .line 2
    :cond_9
    sget-object p1, Lcom/github/catvod/spider/merge/J/l;->a:Lcom/github/catvod/spider/merge/J/l;

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/c;-><init>(Lcom/github/catvod/spider/merge/J/a;)V

    return-void
.end method
