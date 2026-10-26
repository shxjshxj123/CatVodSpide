.class public final Lcom/github/catvod/spider/merge/f0/k;
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
    .registers 7

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->m0()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-static {v4}, Lcom/github/catvod/spider/merge/n/a;->f(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_22

    :cond_35
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_39
    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/a;->f(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    if-nez v2, :cond_40

    goto :goto_e

    :cond_40
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    :cond_44
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "preceding"

    return-object v0
.end method
