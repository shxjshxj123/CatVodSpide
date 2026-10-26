.class public final Lcom/github/catvod/spider/merge/d0/j;
.super Lcom/github/catvod/spider/merge/G/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/y;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/G/y;-><init>(Lcom/github/catvod/spider/merge/G/y;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/catvod/spider/merge/K/d<",
            "+TT;>;)TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/catvod/spider/merge/d0/E;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/github/catvod/spider/merge/d0/E;

    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/d0/E;->B(Lcom/github/catvod/spider/merge/d0/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/d;->v(Lcom/github/catvod/spider/merge/K/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public final h(Lcom/github/catvod/spider/merge/K/c;)V
    .registers 3

    instance-of v0, p1, Lcom/github/catvod/spider/merge/d0/b;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/github/catvod/spider/merge/d0/b;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/d0/b;->y()V

    :cond_9
    return-void
.end method

.method public final i(Lcom/github/catvod/spider/merge/K/c;)V
    .registers 3

    instance-of v0, p1, Lcom/github/catvod/spider/merge/d0/b;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/github/catvod/spider/merge/d0/b;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/d0/b;->W()V

    :cond_9
    return-void
.end method
