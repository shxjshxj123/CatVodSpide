.class public final Lcom/github/catvod/spider/merge/U/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[C

.field private b:Ljava/io/Reader;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->j:I

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    const p1, 0x8000

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    return-void
.end method

.method private N()V
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->y()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/U/a;->z(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/github/catvod/spider/merge/U/a;->j:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_3a
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v0, v1, :cond_57

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_54

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_57
    return-void
.end method

.method private b()V
    .registers 15

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/U/a;->k:Z

    if-nez v0, :cond_75

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->d:I

    if-ge v0, v1, :cond_c

    goto/16 :goto_75

    :cond_c
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    :try_start_18
    iget-object v4, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    iget-object v4, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_28
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_40

    iget-object v9, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    iget-object v11, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    array-length v12, v11

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_3b

    iput-boolean v10, p0, Lcom/github/catvod/spider/merge/U/a;->k:Z

    :cond_3b
    if-gtz v9, :cond_3e

    goto :goto_40

    :cond_3e
    add-int/2addr v4, v9

    goto :goto_28

    :cond_40
    :goto_40
    iget-object v9, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_67

    cmp-long v9, v7, v5

    if-nez v9, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v10, 0x0

    :goto_4d
    invoke-static {v10}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iput v4, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v5, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    if-eq v0, v2, :cond_5f

    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    :cond_5f
    const/16 v0, 0x6000

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->d:I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_67} :catch_6e

    :cond_67
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->N()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->l:Ljava/lang/String;

    return-void

    :catch_6e
    move-exception v0

    new-instance v1, Lcom/github/catvod/spider/merge/o/u;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_75
    :goto_75
    return-void
.end method

.method private static c([C[Ljava/lang/String;II)Ljava/lang/String;
    .registers 13

    const/16 v0, 0xc

    if-le p3, v0, :cond_a

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_a
    const/4 v0, 0x1

    if-ge p3, v0, :cond_10

    const-string p0, ""

    return-object p0

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, p3, :cond_1f

    mul-int/lit8 v3, v3, 0x1f

    add-int v4, p2, v2

    aget-char v4, p0, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1f
    and-int/lit16 v2, v3, 0x1ff

    aget-object v3, p1, v2

    if-eqz v3, :cond_47

    .line 1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p3, v4, :cond_43

    move v5, p2

    move v4, p3

    const/4 v6, 0x0

    :goto_2e
    add-int/lit8 v7, v4, -0x1

    if-eqz v4, :cond_44

    add-int/lit8 v4, v5, 0x1

    aget-char v5, p0, v5

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3f

    goto :goto_43

    :cond_3f
    move v5, v4

    move v4, v7

    move v6, v8

    goto :goto_2e

    :cond_43
    :goto_43
    const/4 v0, 0x0

    :cond_44
    if-eqz v0, :cond_47

    return-object v3

    .line 2
    :cond_47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p1, v2

    return-object v0
.end method

.method private x()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private z(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->y()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1b

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :cond_1b
    return p1
.end method


# virtual methods
.method final A(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/U/a;->z(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    iget p1, p0, Lcom/github/catvod/spider/merge/U/a;->j:I

    return p1

    :cond_12
    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->j:I

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1
.end method

.method final B()V
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->d:I

    :cond_c
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    return-void
.end method

.method final C(Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_14

    goto :goto_24

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_29

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v6, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_26

    :goto_24
    const/4 v0, 0x0

    goto :goto_2a

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    if-eqz v0, :cond_36

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return v3

    :cond_36
    return v2
.end method

.method final D(Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_11

    goto :goto_29

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    iget-object v5, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v6, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2b

    :goto_29
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    if-eqz v0, :cond_3b

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return v3

    :cond_3b
    return v2
.end method

.method final E(C)Z
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method final varargs F([C)Z
    .registers 7

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    return v1
.end method

.method final G([C)Z
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method final H()Z
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1e

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method final I()Z
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_17

    const/16 v2, 0x39

    if-gt v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method final J()Z
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_24

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1e

    const/16 v2, 0x7a

    if-le v0, v2, :cond_24

    :cond_1e
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method final K(Ljava/lang/CharSequence;)I
    .registers 10

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_a
    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_21

    :goto_15
    add-int/2addr v1, v3

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v5, :cond_47

    if-gt v4, v5, :cond_47

    move v5, v2

    :goto_30
    if-ge v5, v4, :cond_41

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_41

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_41
    if-ne v5, v4, :cond_47

    iget p1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v1, p1

    return v1

    :cond_47
    move v1, v2

    goto :goto_a

    :cond_49
    const/4 p1, -0x1

    return p1
.end method

.method public final L()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method final M()V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    .line 1
    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    return-void

    .line 2
    :cond_a
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final O(Z)V
    .registers 3

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x199

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->N()V

    goto :goto_18

    :cond_13
    if-nez p1, :cond_18

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    :cond_18
    :goto_18
    return-void
.end method

.method final P()V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-void

    :cond_9
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method final Q()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->g:I

    return-void
.end method

.method public final a()V
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_12
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_12

    :catchall_a
    move-exception v0

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    throw v0

    :catch_12
    :goto_12
    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->b:Ljava/io/Reader;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iput-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    return-void
.end method

.method final e(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->y()Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_9
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/U/a;->z(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_13
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final f()C
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v1

    :goto_13
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return v0
.end method

.method final g(Z)Ljava/lang/String;
    .registers 8

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_23

    aget-char v4, v2, v3

    if-eqz v4, :cond_23

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x26

    if-eq v4, v5, :cond_23

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1a

    goto :goto_20

    :cond_1a
    if-eqz p1, :cond_1d

    goto :goto_23

    :cond_1d
    if-nez p1, :cond_20

    goto :goto_23

    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    :goto_23
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v3, v0, :cond_31

    iget-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_31
    const-string p1, ""

    :goto_33
    return-object p1
.end method

.method final h()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_18

    aget-char v4, v2, v3

    if-eqz v4, :cond_18

    const/16 v5, 0x26

    if-eq v4, v5, :cond_18

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v3, v0, :cond_26

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    return-object v0
.end method

.method final i()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1c

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v3, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_17

    const/16 v3, 0x39

    if-le v2, v3, :cond_27

    :cond_17
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x46

    if-le v2, v3, :cond_27

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x66

    if-gt v2, v3, :cond_2c

    :cond_27
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    goto :goto_5

    :cond_2c
    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v3, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_25
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    goto :goto_5

    :cond_2c
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_25
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    goto :goto_5

    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->x()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_45

    const/16 v3, 0x39

    if-gt v1, v3, :cond_45

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    goto :goto_2c

    :cond_45
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final m()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_14

    aget-char v4, v2, v3

    if-eqz v4, :cond_14

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v3, v0, :cond_22

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, ""

    :goto_24
    return-object v0
.end method

.method final n()Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_31

    aget-char v4, v2, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_31

    const/16 v5, 0xa

    if-eq v4, v5, :cond_31

    const/16 v5, 0xc

    if-eq v4, v5, :cond_31

    const/16 v5, 0xd

    if-eq v4, v5, :cond_31

    const/16 v5, 0x20

    if-eq v4, v5, :cond_31

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_31

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_31

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_31
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v3, v0, :cond_3f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, ""

    :goto_41
    return-object v0
.end method

.method final o()Ljava/lang/String;
    .registers 6

    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/U/a;->K(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    invoke-static {v1, v2, v3, v0}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-object v1

    :cond_19
    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_27

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v3, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int v4, v0, v1

    invoke-static {v2, v3, v1, v4}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-object v1
.end method

.method public final p(C)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_14

    iget p1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int/2addr v0, p1

    goto :goto_18

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    const/4 v0, -0x1

    :goto_18
    if-eq v0, v2, :cond_2a

    .line 2
    iget-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    invoke-static {p1, v1, v2, v0}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-object p1

    :cond_2a
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/a;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs q([C)Ljava/lang/String;
    .registers 10

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    array-length v3, p1

    move v4, v0

    :goto_b
    if-ge v4, v1, :cond_1d

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_1a

    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_17

    goto :goto_1d

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    iput v4, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v4, v0, :cond_2b

    iget-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, ""

    :goto_2d
    return-object p1
.end method

.method final varargs r([C)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_18

    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    :goto_18
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-le v3, v0, :cond_26

    iget-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_26
    const-string p1, ""

    :goto_28
    return-object p1
.end method

.method final s()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/a;->h:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v3, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/U/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iput v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    return-object v0
.end method

.method final t(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->m:I

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    iget v4, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    if-lt v0, v4, :cond_15

    return v2

    :cond_15
    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/a;->l:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/U/a;->K(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v3, :cond_29

    iget p1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/github/catvod/spider/merge/U/a;->m:I

    return v2

    :cond_29
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/U/a;->K(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    if-eqz v1, :cond_3a

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int v3, v0, p1

    :cond_3a
    iput v3, p0, Lcom/github/catvod/spider/merge/U/a;->m:I

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    sub-int v2, v0, v1

    if-gez v2, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public final u()C
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->a:[C

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    aget-char v0, v0, v1

    :goto_13
    return v0
.end method

.method final v()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/U/a;->A(I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->f:I

    iget v2, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    add-int/2addr v1, v2

    .line 5
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/U/a;->e(I)I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/a;->b()V

    iget v0, p0, Lcom/github/catvod/spider/merge/U/a;->e:I

    iget v1, p0, Lcom/github/catvod/spider/merge/U/a;->c:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final y()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
