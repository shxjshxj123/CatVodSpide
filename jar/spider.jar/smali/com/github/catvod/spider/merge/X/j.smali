.class public final Lcom/github/catvod/spider/merge/X/j;
.super Lcom/github/catvod/spider/merge/X/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[Lcom/github/catvod/spider/merge/X/b;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/X/b;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/github/catvod/spider/merge/X/b;

    iput-object v1, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->c:[Z

    new-instance v0, Lcom/github/catvod/spider/merge/X/n;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/X/n;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/l;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/l;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/c;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/c;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/g;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/g;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/d;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/d;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/a;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/a;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    new-instance v1, Lcom/github/catvod/spider/merge/X/e;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/X/e;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/j;->h()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/X/j;->d()F

    iget v0, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    iget v1, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/X/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()F
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge/X/j;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const v0, 0x3c23d70a    # 0.01f

    return v0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    array-length v3, v2

    if-ge v0, v3, :cond_2e

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/j;->c:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1e

    goto :goto_2b

    :cond_1e
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/X/b;->d()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2b

    iput v0, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    move v1, v2

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    return v1
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/X/j;->a:I

    return v0
.end method

.method public final f([BI)I
    .registers 10

    new-array v0, p2, [B

    const/4 v1, 0x0

    add-int/2addr p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_8
    if-ge v3, p2, :cond_26

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_19

    add-int/lit8 v4, v5, 0x1

    aget-byte v6, p1, v3

    aput-byte v6, v0, v5

    move v5, v4

    const/4 v4, 0x1

    goto :goto_23

    :cond_19
    if-eqz v4, :cond_23

    add-int/lit8 v4, v5, 0x1

    aget-byte v6, p1, v3

    aput-byte v6, v0, v5

    move v5, v4

    const/4 v4, 0x0

    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iget-object p2, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    array-length v3, p2

    if-ge p1, v3, :cond_53

    iget-object v3, p0, Lcom/github/catvod/spider/merge/X/j;->c:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_33

    goto :goto_50

    :cond_33
    aget-object p2, p2, p1

    invoke-virtual {p2, v0, v5}, Lcom/github/catvod/spider/merge/X/b;->f([BI)I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3f

    iput p1, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    goto :goto_4d

    :cond_3f
    const/4 v3, 0x3

    if-ne p2, v3, :cond_50

    iget-object p2, p0, Lcom/github/catvod/spider/merge/X/j;->c:[Z

    aput-boolean v1, p2, p1

    iget p2, p0, Lcom/github/catvod/spider/merge/X/j;->e:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/github/catvod/spider/merge/X/j;->e:I

    if-gtz p2, :cond_50

    :goto_4d
    iput v3, p0, Lcom/github/catvod/spider/merge/X/j;->a:I

    goto :goto_53

    :cond_50
    :goto_50
    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_53
    :goto_53
    iget p1, p0, Lcom/github/catvod/spider/merge/X/j;->a:I

    return p1
.end method

.method public final h()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/X/j;->e:I

    :goto_3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/j;->b:[Lcom/github/catvod/spider/merge/X/b;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1a

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/X/b;->h()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/X/j;->c:[Z

    aput-boolean v3, v1, v0

    iget v1, p0, Lcom/github/catvod/spider/merge/X/j;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/github/catvod/spider/merge/X/j;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1a
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/X/j;->d:I

    iput v3, p0, Lcom/github/catvod/spider/merge/X/j;->a:I

    return-void
.end method
