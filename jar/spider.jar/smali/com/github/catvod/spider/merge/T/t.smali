.class final Lcom/github/catvod/spider/merge/T/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/U/F;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->y()Lcom/github/catvod/spider/merge/T/h;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->D0()Lcom/github/catvod/spider/merge/U/F;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/h;->D0()Lcom/github/catvod/spider/merge/U/F;

    move-result-object p0

    goto :goto_1b

    :cond_11
    new-instance p0, Lcom/github/catvod/spider/merge/U/F;

    new-instance v0, Lcom/github/catvod/spider/merge/U/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/U/F;-><init>(Lcom/github/catvod/spider/merge/U/j1;)V

    :goto_1b
    return-object p0
.end method
