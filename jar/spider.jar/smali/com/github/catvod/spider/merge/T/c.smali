.class public final Lcom/github/catvod/spider/merge/T/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/github/catvod/spider/merge/T/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:I

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/github/catvod/spider/merge/T/c;)I
    .registers 1

    iget p0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/github/catvod/spider/merge/T/c;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->t(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/github/catvod/spider/merge/T/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->y(I)V

    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/T/c;->h(I)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    return-void
.end method

.method private h(I)V
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    mul-int/lit8 v2, v1, 0x2

    :cond_17
    if-le p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move p1, v2

    :goto_1b
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method static i(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_7

    :cond_5
    check-cast p0, Ljava/lang/String;

    :goto_7
    return-object p0
.end method

.method private r(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method static s(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private t(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private y(I)V
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->d(Z)V

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1d

    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iget p1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/c;->j()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/T/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(Lcom/github/catvod/spider/merge/T/c;)V
    .registers 9

    .line 1
    iget v0, p1, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge/T/c;->h(I)V

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v3, 0x0

    .line 3
    :goto_15
    iget v4, p1, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v3, v4, :cond_26

    .line 4
    iget-object v4, p1, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 5
    invoke-direct {p1, v4}, Lcom/github/catvod/spider/merge/T/c;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 6
    :cond_26
    iget v4, p1, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v3, v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-eqz v4, :cond_52

    .line 7
    new-instance v4, Lcom/github/catvod/spider/merge/T/a;

    iget-object v5, p1, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p1, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6, p1}, Lcom/github/catvod/spider/merge/T/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    add-int/lit8 v3, v3, 0x1

    if-eqz v0, :cond_46

    .line 8
    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/T/c;->v(Lcom/github/catvod/spider/merge/T/a;)Lcom/github/catvod/spider/merge/T/c;

    goto :goto_15

    :cond_46
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-direct {p0, v5, v4}, Lcom/github/catvod/spider/merge/T/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    :cond_52
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    const-class v2, Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_42

    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge/T/c;

    iget v2, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    iget v3, p1, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    iget v3, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v2, v3, :cond_41

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge/T/c;->q(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    return v1

    :cond_2a
    iget-object v4, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p1, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object v3, v5, v3

    if-nez v4, :cond_37

    if-eqz v3, :cond_3e

    return v1

    :cond_37
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    return v1

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_41
    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public final g()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge/T/c;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_29

    :cond_17
    new-instance v2, Lcom/github/catvod/spider/merge/T/a;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/github/catvod/spider/merge/T/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/catvod/spider/merge/T/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/T/b;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/T/b;-><init>(Lcom/github/catvod/spider/merge/T/c;)V

    return-object v0
.end method

.method public final j()Lcom/github/catvod/spider/merge/T/c;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/c;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_21

    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    iput v1, v0, Lcom/github/catvod/spider/merge/T/c;->a:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    return-object v0

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final k(Lcom/github/catvod/spider/merge/U/E;)I
    .registers 9

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    return v2

    .line 2
    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/E;->e()Z

    move-result p1

    const/4 v0, 0x0

    :goto_11
    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_48

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_19
    iget-object v5, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_46

    aget-object v6, v5, v4

    if-nez v6, :cond_23

    goto :goto_46

    :cond_23
    if-eqz p1, :cond_2f

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_2f
    if-nez p1, :cond_44

    iget-object v5, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge/T/c;->y(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_44
    add-int/2addr v4, v1

    goto :goto_19

    :cond_46
    :goto_46
    move v2, v3

    goto :goto_11

    :cond_48
    return v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->q(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/T/c;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->r(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/T/c;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->q(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public final o(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->r(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method final p(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/g;)V
    .registers 8

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_30

    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge/T/c;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2d

    :cond_10
    iget-object v2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/g;->h()I

    move-result v3

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/T/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v3, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, Lcom/github/catvod/spider/merge/T/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/g;)V

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_30
    return-void
.end method

.method final q(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    :try_start_4
    new-instance v1, Lcom/github/catvod/spider/merge/T/h;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/T/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/h;->B0()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge/T/c;->p(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/g;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_17

    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/github/catvod/spider/merge/Q/a;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/Q/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final u()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/github/catvod/spider/merge/T/c;->a:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public final v(Lcom/github/catvod/spider/merge/T/a;)Lcom/github/catvod/spider/merge/T/c;
    .registers 4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge/T/c;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;

    iput-object p0, p1, Lcom/github/catvod/spider/merge/T/a;->c:Lcom/github/catvod/spider/merge/T/c;

    return-object p0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->q(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object p1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_12

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/T/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_12
    return-object p0
.end method

.method final x(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/c;->r(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/c;->c:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/github/catvod/spider/merge/T/c;->b:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_1d

    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/T/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void
.end method
