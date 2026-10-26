.class public abstract Lcom/github/catvod/spider/merge/p/g;
.super Lcom/github/catvod/spider/merge/p/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/c<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient b:Lcom/github/catvod/spider/merge/p/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/c;-><init>()V

    return-void
.end method

.method static g(I)I
    .registers 7

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_27

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_13
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_26

    shl-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    return v0

    :cond_27
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const-string p0, "collection too large"

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    return v1
.end method

.method private static varargs h(I[Ljava/lang/Object;)Lcom/github/catvod/spider/merge/p/g;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/catvod/spider/merge/p/g<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_7b

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_70

    invoke-static {p0}, Lcom/github/catvod/spider/merge/p/g;->g(I)I

    move-result v2

    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v3, p0, :cond_3b

    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/github/catvod/spider/merge/p/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/github/catvod/spider/merge/p/b;->a(I)I

    move-result v10

    :goto_20
    and-int v11, v10, v7

    aget-object v12, v6, v11

    if-nez v12, :cond_2f

    add-int/lit8 v10, v8, 0x1

    aput-object v4, p1, v8

    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_35

    :cond_2f
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_3b
    const/4 v3, 0x0

    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4c

    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/github/catvod/spider/merge/p/l;

    invoke-direct {p1, p0}, Lcom/github/catvod/spider/merge/p/l;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4c
    invoke-static {v8}, Lcom/github/catvod/spider/merge/p/g;->g(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_59

    invoke-static {v8, p1}, Lcom/github/catvod/spider/merge/p/g;->h(I[Ljava/lang/Object;)Lcom/github/catvod/spider/merge/p/g;

    move-result-object p0

    return-object p0

    :cond_59
    array-length p0, p1

    shr-int/lit8 v2, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    if-ge v8, v2, :cond_62

    const/4 v0, 0x1

    :cond_62
    if-eqz v0, :cond_68

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_68
    move-object v4, p1

    new-instance p0, Lcom/github/catvod/spider/merge/p/k;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/catvod/spider/merge/p/k;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    :cond_70
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/p/l;

    invoke-direct {p1, p0}, Lcom/github/catvod/spider/merge/p/l;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 2
    :cond_7b
    sget-object p0, Lcom/github/catvod/spider/merge/p/k;->i:Lcom/github/catvod/spider/merge/p/k;

    return-object p0
.end method

.method public static j()Lcom/github/catvod/spider/merge/p/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/github/catvod/spider/merge/p/g<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "br"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "deflate"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gzip"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "x-gzip"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/p/g;->h(I[Ljava/lang/Object;)Lcom/github/catvod/spider/merge/p/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/p/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 1
    instance-of v1, p0, Lcom/github/catvod/spider/merge/p/k;

    if-eqz v1, :cond_22

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/p/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, v1, Lcom/github/catvod/spider/merge/p/k;

    if-eqz v1, :cond_22

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/g;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    if-ne p0, p1, :cond_25

    goto :goto_3d

    .line 5
    :cond_25
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_3c

    check-cast p1, Ljava/util/Set;

    :try_start_2b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_3c

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_39} :catch_3c
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_39} :catch_3c

    if-eqz p1, :cond_3c

    goto :goto_3d

    :catch_3c
    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0
.end method

.method public final f()Lcom/github/catvod/spider/merge/p/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/g;->b:Lcom/github/catvod/spider/merge/p/f;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/g;->i()Lcom/github/catvod/spider/merge/p/f;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/p/g;->b:Lcom/github/catvod/spider/merge/p/f;

    :cond_a
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    add-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_1e
    return v2
.end method

.method i()Lcom/github/catvod/spider/merge/p/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/c;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/github/catvod/spider/merge/p/f;->c:I

    .line 1
    array-length v1, v0

    if-nez v1, :cond_c

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge/p/j;->f:Lcom/github/catvod/spider/merge/p/f;

    goto :goto_12

    .line 3
    :cond_c
    new-instance v2, Lcom/github/catvod/spider/merge/p/j;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/p/j;-><init>([Ljava/lang/Object;I)V

    move-object v0, v2

    :goto_12
    return-object v0
.end method
