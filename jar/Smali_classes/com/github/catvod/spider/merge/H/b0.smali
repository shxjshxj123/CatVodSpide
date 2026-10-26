.class public final synthetic Lcom/github/catvod/spider/merge/H/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge/H/f;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/b;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/H/e0;

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/github/catvod/spider/merge/H/f;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/f;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/H/a0;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/a0;-><init>()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/b;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/J/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    if-nez v2, :cond_25

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge/J/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget v1, v1, Lcom/github/catvod/spider/merge/H/b;->b:I

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_2b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/f;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_9

    return v2

    :cond_25
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    return p0
.end method
