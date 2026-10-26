.class public final Lcom/github/catvod/spider/merge/G/n;
.super Lcom/github/catvod/spider/merge/G/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/G;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/c;-><init>(Lcom/github/catvod/spider/merge/G/G;)V

    return-void
.end method


# virtual methods
.method public final f(I)Lcom/github/catvod/spider/merge/G/E;
    .registers 6

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->m()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    if-gez p1, :cond_f

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/n;->p(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object p1

    return-object p1

    :cond_f
    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    const/4 v1, 0x1

    :goto_12
    if-ge v1, p1, :cond_23

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/G/c;->n(I)I

    move-result v0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/G/E;

    return-object p1
.end method

.method protected final k(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->n(I)I

    move-result p1

    return p1
.end method

.method protected final p(I)Lcom/github/catvod/spider/merge/G/E;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    iget v1, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    sub-int v2, v1, p1

    if-gez v2, :cond_a

    goto :goto_4a

    :cond_a
    const/4 v2, 0x1

    :goto_b
    if-gt v2, p1, :cond_3e

    if-lez v1, :cond_3e

    add-int/lit8 v1, v1, -0x1

    .line 1
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v1, v3, :cond_21

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->size()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_3b

    :cond_21
    :goto_21
    if-ltz v1, :cond_3b

    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v3}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v5

    if-eq v5, v4, :cond_3b

    invoke-interface {v3}, Lcom/github/catvod/spider/merge/G/E;->getChannel()I

    move-result v3

    if-nez v3, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_3e
    if-gez v1, :cond_41

    return-object v0

    .line 2
    :cond_41
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/G/E;

    return-object p1

    :cond_4a
    :goto_4a
    return-object v0
.end method
