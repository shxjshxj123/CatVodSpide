.class public Lcom/github/catvod/spider/merge/G/y;
.super Lcom/github/catvod/spider/merge/G/D;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/K/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/github/catvod/spider/merge/G/E;

.field public f:Lcom/github/catvod/spider/merge/G/E;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/G/D;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/y;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/G/D;-><init>(Lcom/github/catvod/spider/merge/G/D;I)V

    return-void
.end method


# virtual methods
.method public final c(I)Lcom/github/catvod/spider/merge/K/b;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    if-ltz p1, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/github/catvod/spider/merge/K/b;",
            ">(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public h(Lcom/github/catvod/spider/merge/K/c;)V
    .registers 2

    return-void
.end method

.method public i(Lcom/github/catvod/spider/merge/K/c;)V
    .registers 2

    return-void
.end method

.method public final j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/catvod/spider/merge/G/y;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_2a

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/K/b;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 2
    :goto_2b
    check-cast p1, Lcom/github/catvod/spider/merge/G/y;

    return-object p1
.end method

.method public final k(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/catvod/spider/merge/G/y;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/K/b;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2f
    if-nez v1, :cond_36

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_36
    return-object v1
.end method

.method public final l(I)Lcom/github/catvod/spider/merge/K/f;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_2e

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/K/b;

    instance-of v2, v1, Lcom/github/catvod/spider/merge/K/f;

    if-eqz v2, :cond_11

    check-cast v1, Lcom/github/catvod/spider/merge/K/f;

    invoke-interface {v1}, Lcom/github/catvod/spider/merge/K/f;->b()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v2

    if-ne v2, p1, :cond_11

    return-object v1

    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    return-object p1
.end method
