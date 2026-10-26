.class public Lcom/github/catvod/spider/merge/G/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/G/H;


# instance fields
.field protected a:Lcom/github/catvod/spider/merge/G/G;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/G/E;",
            ">;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/G;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/c;->a:Lcom/github/catvod/spider/merge/G/G;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()Lcom/github/catvod/spider/merge/G/G;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->a:Lcom/github/catvod/spider/merge/G/G;

    return-object v0
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/github/catvod/spider/merge/G/E;Lcom/github/catvod/spider/merge/G/E;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_59

    if-eqz p2, :cond_59

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->c()I

    move-result p1

    invoke-interface {p2}, Lcom/github/catvod/spider/merge/G/E;->c()I

    move-result p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/J/j;->b(II)Lcom/github/catvod/spider/merge/J/j;

    move-result-object p1

    .line 1
    iget p2, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget p1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ltz p2, :cond_59

    if-gez p1, :cond_19

    goto :goto_59

    .line 2
    :cond_19
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->m()V

    :cond_1c
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/c;->l(I)I

    move-result v1

    if-ge v1, v0, :cond_1c

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_34

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_39
    if-gt p2, p1, :cond_54

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4a

    goto :goto_54

    :cond_4a
    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/E;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    :cond_54
    :goto_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    :cond_59
    :goto_59
    const-string p1, ""

    :goto_5b
    return-object p1
.end method

.method public final e(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->m()V

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->k(I)I

    move-result p1

    iput p1, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    return-void
.end method

.method public f(I)Lcom/github/catvod/spider/merge/G/E;
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result p1

    return p1
.end method

.method public final get(I)Lcom/github/catvod/spider/merge/G/E;
    .registers 5

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/G/E;

    return-object p1

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range 0.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    return v0
.end method

.method public final i()V
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1d

    iget-boolean v2, p0, Lcom/github/catvod/spider/merge/G/c;->d:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1d

    goto :goto_1b

    :cond_13
    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    :goto_1b
    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_30

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/G/c;->g(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_28

    goto :goto_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/c;->k(I)I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    :cond_42
    return-void
.end method

.method protected k(I)I
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method protected final l(I)I
    .registers 6

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/G/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-ge v1, p1, :cond_32

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->a:Lcom/github/catvod/spider/merge/G/G;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/G;->nextToken()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    instance-of v2, v0, Lcom/github/catvod/spider/merge/G/K;

    if-eqz v2, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/github/catvod/spider/merge/G/K;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/github/catvod/spider/merge/G/K;->d(I)V

    :cond_1e
    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/G/c;->d:Z

    add-int/2addr v1, p1

    return v1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return p1
.end method

.method protected final m()V
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/c;->k(I)I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/G/c;->c:I

    :cond_f
    return-void
.end method

.method protected final n(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/c;->size()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getChannel()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v0

    if-ne v0, v1, :cond_25

    return p1

    :cond_25
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->o(I)Z

    goto :goto_10

    :cond_2b
    return p1
.end method

.method protected final o(I)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-lez p1, :cond_13

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/c;->l(I)I

    move-result v1

    if-lt v1, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
