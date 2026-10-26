.class public Lcom/github/catvod/spider/merge/J/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/github/catvod/spider/merge/J/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/J/a;"
        }
    .end annotation
.end field

.field protected b:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Lcom/github/catvod/spider/merge/J/e<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/J/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/J/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/github/catvod/spider/merge/J/f;->d:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/J/a;->F(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 2
    aget-object v1, v2, v1

    if-nez v1, :cond_15

    return-object v0

    :cond_15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/e;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    iget-object v4, v2, Lcom/github/catvod/spider/merge/J/e;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lcom/github/catvod/spider/merge/J/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object p1, v2, Lcom/github/catvod/spider/merge/J/e;->b:Ljava/lang/Object;

    return-object p1

    :cond_32
    return-object v0
.end method

.method public final hashCode()I
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_2f

    aget-object v4, v0, v2

    if-nez v4, :cond_c

    goto :goto_2c

    :cond_c
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/J/e;

    if-nez v5, :cond_1f

    goto :goto_2c

    :cond_1f
    iget-object v6, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    iget-object v5, v5, Lcom/github/catvod/spider/merge/J/e;->a:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/J/a;->F(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v3

    goto :goto_10

    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1
    :cond_2f
    iget v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    .line 2
    invoke-static {v3, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget v1, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    iget v2, p0, Lcom/github/catvod/spider/merge/J/f;->d:I

    if-le v1, v2, :cond_4f

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 2
    new-array v3, v2, [Ljava/util/LinkedList;

    .line 3
    iput-object v3, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/github/catvod/spider/merge/J/f;->d:I

    .line 4
    iget v2, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_4d

    aget-object v5, v1, v4

    if-nez v5, :cond_2f

    goto :goto_4a

    :cond_2f
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/J/e;

    if-nez v6, :cond_42

    goto :goto_4a

    :cond_42
    iget-object v7, v6, Lcom/github/catvod/spider/merge/J/e;->a:Ljava/lang/Object;

    iget-object v6, v6, Lcom/github/catvod/spider/merge/J/e;->b:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Lcom/github/catvod/spider/merge/J/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_4a
    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4d
    iput v2, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    .line 6
    :cond_4f
    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/J/a;->F(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 7
    aget-object v3, v2, v1

    if-nez v3, :cond_66

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    :cond_66
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/J/e;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/J/f;->a:Lcom/github/catvod/spider/merge/J/a;

    iget-object v5, v2, Lcom/github/catvod/spider/merge/J/e;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lcom/github/catvod/spider/merge/J/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object p1, v2, Lcom/github/catvod/spider/merge/J/e;->b:Ljava/lang/Object;

    iput-object p2, v2, Lcom/github/catvod/spider/merge/J/e;->b:Ljava/lang/Object;

    iget p2, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    return-object p1

    :cond_8b
    new-instance v1, Lcom/github/catvod/spider/merge/J/e;

    invoke-direct {v1, p1, p2}, Lcom/github/catvod/spider/merge/J/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v2, :cond_45

    aget-object v6, v1, v5

    if-nez v6, :cond_1e

    goto :goto_42

    :cond_1e
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/J/e;

    if-nez v7, :cond_31

    goto :goto_42

    :cond_31
    if-eqz v4, :cond_35

    const/4 v4, 0x0

    goto :goto_3a

    :cond_35
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3a
    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/J/e;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_45
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    iget v1, p0, Lcom/github/catvod/spider/merge/J/f;->c:I

    .line 2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/f;->b:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    if-nez v4, :cond_12

    goto :goto_28

    :cond_12
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/J/e;

    iget-object v5, v5, Lcom/github/catvod/spider/merge/J/e;->b:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2b
    return-object v0
.end method
