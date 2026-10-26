.class public Lcom/github/catvod/spider/merge/J/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
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

.field protected b:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/github/catvod/spider/merge/J/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/github/catvod/spider/merge/J/c;-><init>(Lcom/github/catvod/spider/merge/J/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/J/a;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/J/a;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->d:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->e:I

    if-nez p1, :cond_17

    sget-object p1, Lcom/github/catvod/spider/merge/J/l;->a:Lcom/github/catvod/spider/merge/J/l;

    :cond_17
    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->d(I)[[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    iput p2, p0, Lcom/github/catvod/spider/merge/J/c;->e:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/J/c;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_17
    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->e(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    goto :goto_26

    :cond_10
    array-length v3, v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_26

    aget-object v5, v1, v4

    if-nez v5, :cond_19

    goto :goto_26

    :cond_19
    iget-object v6, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v6, v5, p1}, Lcom/github/catvod/spider/merge/J/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move-object v2, v5

    goto :goto_26

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    :goto_26
    if-eqz v2, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method protected c(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public final clear()V
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/J/c;->d(I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->d:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/catvod/spider/merge/J/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/github/catvod/spider/merge/J/c;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_45

    aget-object v3, p1, v2

    if-nez v3, :cond_12

    goto :goto_29

    :cond_12
    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_29

    aget-object v6, v3, v5

    if-nez v6, :cond_1b

    goto :goto_29

    :cond_1b
    invoke-virtual {p0, v6}, Lcom/github/catvod/spider/merge/J/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/github/catvod/spider/merge/J/c;->b(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    return v1

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/J/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/J/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    :cond_45
    const/4 p1, 0x1

    return p1
.end method

.method protected d(I)[[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[TT;"
        }
    .end annotation

    new-array p1, p1, [[Ljava/lang/Object;

    return-object p1
.end method

.method protected final e(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/J/a;->F(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/github/catvod/spider/merge/J/c;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/J/c;

    .line 1
    iget v0, p1, Lcom/github/catvod/spider/merge/J/c;->c:I

    .line 2
    iget v2, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    if-eq v0, v2, :cond_13

    return v1

    .line 3
    :cond_13
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    iget v1, p0, Lcom/github/catvod/spider/merge/J/c;->d:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_65

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/J/c;->d(I)[[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [I

    iput-object v3, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    int-to-double v5, v1

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v1, v5

    iput v1, p0, Lcom/github/catvod/spider/merge/J/c;->d:I

    array-length v1, v0

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v1, :cond_65

    aget-object v6, v0, v5

    if-nez v6, :cond_2f

    goto :goto_62

    :cond_2f
    array-length v7, v6

    const/4 v8, 0x0

    :goto_31
    if-ge v8, v7, :cond_62

    aget-object v9, v6, v8

    if-nez v9, :cond_38

    goto :goto_62

    :cond_38
    invoke-virtual {p0, v9}, Lcom/github/catvod/spider/merge/J/c;->e(Ljava/lang/Object;)I

    move-result v10

    aget v11, v4, v10

    if-nez v11, :cond_49

    iget v12, p0, Lcom/github/catvod/spider/merge/J/c;->e:I

    invoke-virtual {p0, v12}, Lcom/github/catvod/spider/merge/J/c;->c(I)[Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v3, v10

    goto :goto_57

    :cond_49
    aget-object v12, v3, v10

    array-length v13, v12

    if-ne v11, v13, :cond_57

    array-length v13, v12

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v3, v10

    :cond_57
    :goto_57
    aput-object v9, v12, v11

    aget v9, v4, v10

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_62
    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 2
    :cond_65
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_7c

    iget v1, p0, Lcom/github/catvod/spider/merge/J/c;->e:I

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/J/c;->c(I)[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    aput-object v1, v2, v0

    goto :goto_a1

    :cond_7c
    :goto_7c
    array-length v3, v1

    if-ge v2, v3, :cond_93

    aget-object v3, v1, v2

    if-nez v3, :cond_86

    aput-object p1, v1, v2

    goto :goto_a1

    :cond_86
    iget-object v4, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v4, v3, p1}, Lcom/github/catvod/spider/merge/J/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    move-object p1, v3

    goto :goto_a7

    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_93
    array-length v2, v1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p1, v1, v2

    :goto_a1
    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    :goto_a7
    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->e(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_37

    aget-object v3, v1, v2

    if-nez v3, :cond_18

    return v0

    :cond_18
    iget-object v4, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v4, v3, p1}, Lcom/github/catvod/spider/merge/J/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 p1, v2, 0x1

    array-length v0, v1

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v1

    sub-int/2addr p1, v3

    const/4 v0, 0x0

    aput-object v0, v1, p1

    iget p1, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    return v3

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_37
    return v0
.end method

.method public final hashCode()I
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_26

    aget-object v5, v0, v3

    if-nez v5, :cond_d

    goto :goto_23

    :cond_d
    array-length v6, v5

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v6, :cond_23

    aget-object v8, v5, v7

    if-nez v8, :cond_16

    goto :goto_23

    :cond_16
    iget-object v9, p0, Lcom/github/catvod/spider/merge/J/c;->a:Lcom/github/catvod/spider/merge/J/a;

    invoke-virtual {v9, v8}, Lcom/github/catvod/spider/merge/J/a;->F(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v4, v8}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1
    :cond_26
    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    .line 2
    invoke-static {v4, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/J/b;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/c;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/J/b;-><init>(Lcom/github/catvod/spider/merge/J/c;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/c;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/J/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/J/c;->g(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_19
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_39

    aget-object v5, v0, v3

    if-nez v5, :cond_d

    goto :goto_36

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_f
    array-length v8, v5

    if-ge v6, v8, :cond_2d

    aget-object v8, v5, v6

    if-nez v8, :cond_17

    goto :goto_2d

    :cond_17
    aget-object v8, v5, v6

    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    goto :goto_2a

    :cond_20
    if-eq v6, v7, :cond_26

    aget-object v8, v5, v6

    aput-object v8, v5, v7

    :cond_26
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_2d
    :goto_2d
    add-int/2addr v4, v7

    :goto_2e
    if-ge v7, v6, :cond_36

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_39
    iget p1, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    if-eq v4, p1, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    iput v4, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    return v2
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/J/c;->c(I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v4, v2, :cond_27

    aget-object v6, v1, v4

    if-nez v6, :cond_13

    goto :goto_24

    :cond_13
    array-length v7, v6

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v7, :cond_24

    aget-object v9, v6, v8

    if-nez v9, :cond_1c

    goto :goto_24

    :cond_1c
    add-int/lit8 v10, v5, 0x1

    aput-object v9, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_15

    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_27
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    array-length v0, p1

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    if-ge v0, v1, :cond_9

    .line 4
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v1, :cond_2a

    aget-object v5, v0, v3

    if-nez v5, :cond_16

    goto :goto_27

    :cond_16
    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_27

    aget-object v8, v5, v7

    if-nez v8, :cond_1f

    goto :goto_27

    :cond_1f
    add-int/lit8 v9, v4, 0x1

    aput-object v8, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_18

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2a
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/J/c;->c:I

    if-nez v0, :cond_7

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/c;->b:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v2, :cond_3d

    aget-object v6, v1, v5

    if-nez v6, :cond_1e

    goto :goto_3a

    :cond_1e
    array-length v7, v6

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v7, :cond_3a

    aget-object v9, v6, v8

    if-nez v9, :cond_27

    goto :goto_3a

    :cond_27
    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_30

    :cond_2b
    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_3a
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_3d
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
