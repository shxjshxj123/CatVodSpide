.class public final Lcom/github/catvod/spider/merge/i0/a;
.super Lcom/github/catvod/spider/merge/G/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/G/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/G/A;)V
    .registers 3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->n()Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_b

    .line 1
    iget-object p1, p1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge/G/y;

    goto :goto_4

    .line 3
    :cond_b
    new-instance p1, Lcom/github/catvod/spider/merge/J/n;

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/J/n;-><init>(Ljava/lang/Throwable;)V

    goto :goto_12

    :goto_11
    throw p1

    :goto_12
    goto :goto_11
.end method

.method public final g(Lcom/github/catvod/spider/merge/G/x;)Lcom/github/catvod/spider/merge/G/E;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/G/r;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/G/r;-><init>(Lcom/github/catvod/spider/merge/G/x;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->n()Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_10

    .line 1
    iget-object p1, p1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge/G/y;

    goto :goto_9

    .line 3
    :cond_10
    new-instance p1, Lcom/github/catvod/spider/merge/J/n;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/J/n;-><init>(Ljava/lang/Throwable;)V

    goto :goto_17

    :goto_16
    throw p1

    :goto_17
    goto :goto_16
.end method
