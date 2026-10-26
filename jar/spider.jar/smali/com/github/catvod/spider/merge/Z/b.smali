.class public abstract Lcom/github/catvod/spider/merge/Z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field protected c:[I

.field protected d:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/Z/b;->e()V

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/Z/b;->b:I

    if-lez v0, :cond_1c

    iget v1, p0, Lcom/github/catvod/spider/merge/Z/b;->a:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_a

    goto :goto_1c

    :cond_a
    const v2, 0x3f7d70a4    # 0.99f

    if-eq v0, v1, :cond_1b

    sub-int/2addr v0, v1

    div-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/github/catvod/spider/merge/Z/b;->d:F

    mul-float v0, v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1b

    return v0

    :cond_1b
    return v2

    :cond_1c
    :goto_1c
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method protected abstract b([BI)I
.end method

.method public final c()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/Z/b;->b:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final d([BII)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/Z/b;->b([BI)I

    move-result p1

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    if-ltz p1, :cond_22

    iget p2, p0, Lcom/github/catvod/spider/merge/Z/b;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/github/catvod/spider/merge/Z/b;->b:I

    iget-object p2, p0, Lcom/github/catvod/spider/merge/Z/b;->c:[I

    array-length p3, p2

    if-ge p1, p3, :cond_22

    const/16 p3, 0x200

    aget p1, p2, p1

    if-le p3, p1, :cond_22

    iget p1, p0, Lcom/github/catvod/spider/merge/Z/b;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/github/catvod/spider/merge/Z/b;->a:I

    :cond_22
    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/Z/b;->b:I

    iput v0, p0, Lcom/github/catvod/spider/merge/Z/b;->a:I

    return-void
.end method
