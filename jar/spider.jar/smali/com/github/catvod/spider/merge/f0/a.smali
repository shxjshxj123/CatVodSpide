.class public final Lcom/github/catvod/spider/merge/f0/a;
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
    .registers 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->m0()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    new-instance p1, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/V/g;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "ancestor-or-self"

    return-object v0
.end method
