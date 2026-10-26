.class public final Lcom/github/catvod/spider/merge/H/h0;
.super Lcom/github/catvod/spider/merge/H/i0;
.source "SourceFile"


# instance fields
.field public final b:[Lcom/github/catvod/spider/merge/H/l0;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)V
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/H/i0;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/h0;

    if-eqz v1, :cond_18

    check-cast p1, Lcom/github/catvod/spider/merge/H/h0;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1b
    instance-of p1, p2, Lcom/github/catvod/spider/merge/H/h0;

    if-eqz p1, :cond_2b

    check-cast p2, Lcom/github/catvod/spider/merge/H/h0;

    iget-object p1, p2, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    :cond_2b
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2e
    invoke-static {v0}, Lcom/github/catvod/spider/merge/H/l0;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_41

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/H/j0;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Lcom/github/catvod/spider/merge/H/l0;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/catvod/spider/merge/H/l0;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    return-void
.end method


# virtual methods
.method public final c(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lcom/github/catvod/spider/merge/H/l0;->c(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public final d(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/l0;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")",
            "Lcom/github/catvod/spider/merge/H/l0;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x1

    if-ge v4, v2, :cond_26

    aget-object v7, v1, v4

    invoke-virtual {v7, p1, p2}, Lcom/github/catvod/spider/merge/H/l0;->d(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object v8

    if-eq v8, v7, :cond_17

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    or-int/2addr v5, v6

    sget-object v6, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    if-ne v8, v6, :cond_1e

    return-object v6

    :cond_1e
    if-eqz v8, :cond_23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_26
    if-nez v5, :cond_29

    return-object p0

    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    return-object p1

    :cond_31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/H/l0;

    :goto_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v6, p2, :cond_4a

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/H/l0;->e(Lcom/github/catvod/spider/merge/H/l0;Lcom/github/catvod/spider/merge/H/l0;)Lcom/github/catvod/spider/merge/H/l0;

    move-result-object p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4a
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/github/catvod/spider/merge/H/h0;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/H/h0;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    const-class v1, Lcom/github/catvod/spider/merge/H/h0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_15

    aget-object v4, v0, v3

    invoke-static {v1, v4}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    array-length v0, v0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/h0;->b:[Lcom/github/catvod/spider/merge/H/l0;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "||"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/J/o;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
