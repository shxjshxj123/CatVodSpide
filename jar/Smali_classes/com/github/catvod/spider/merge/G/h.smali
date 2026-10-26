.class final Lcom/github/catvod/spider/merge/G/h;
.super Lcom/github/catvod/spider/merge/G/k;
.source "SourceFile"


# instance fields
.field private final c:[C


# direct methods
.method constructor <init>(II[C)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/G/k;-><init>(I)V

    iput-object p3, p0, Lcom/github/catvod/spider/merge/G/h;->c:[C

    return-void
.end method


# virtual methods
.method public final g(I)I
    .registers 4

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    if-eqz v0, :cond_22

    if-ne v0, p1, :cond_1a

    iget v0, p0, Lcom/github/catvod/spider/merge/G/k;->b:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/github/catvod/spider/merge/G/k;->a:I

    if-lt v0, p1, :cond_15

    return v1

    :cond_15
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/h;->c:[C

    aget-char p1, p1, v0

    goto :goto_2e

    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    const/4 p1, 0x0

    return p1

    :cond_24
    iget v0, p0, Lcom/github/catvod/spider/merge/G/k;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_2a

    return v1

    :cond_2a
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/h;->c:[C

    aget-char p1, p1, v0

    :goto_2e
    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final j(Lcom/github/catvod/spider/merge/J/j;)Ljava/lang/String;
    .registers 5

    iget v0, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v1, p0, Lcom/github/catvod/spider/merge/G/k;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget p1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/github/catvod/spider/merge/G/k;->a:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/h;->c:[C

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
