.class public abstract Lcom/github/catvod/spider/merge/T/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/github/catvod/spider/merge/T/s;

.field b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/T/s;->c:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private B(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v1

    :goto_b
    if-ge p1, v0, :cond_18

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    iput p1, v2, Lcom/github/catvod/spider/merge/T/s;->b:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method


# virtual methods
.method public final A()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    return-object v0
.end method

.method public final C()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/T/s;->D(Lcom/github/catvod/spider/merge/T/s;)V

    return-void
.end method

.method protected D(Lcom/github/catvod/spider/merge/T/s;)V
    .registers 4

    iget-object v0, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iget v0, p1, Lcom/github/catvod/spider/merge/T/s;->b:I

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/T/s;->B(I)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    return-void
.end method

.method public final E(Lcom/github/catvod/spider/merge/T/s;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-ne v1, v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iget-object v1, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/T/s;->D(Lcom/github/catvod/spider/merge/T/s;)V

    :cond_1b
    iget v1, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    .line 2
    iput v1, p1, Lcom/github/catvod/spider/merge/T/s;->b:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    return-void
.end method

.method public F()Lcom/github/catvod/spider/merge/T/s;
    .registers 3

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public final G(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final H()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->p()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/c;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_25

    :cond_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/T/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/S/b;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    :goto_25
    const-string p1, ""

    return-object p1
.end method

.method protected final varargs b(I[Lcom/github/catvod/spider/merge/T/s;)V
    .registers 11

    invoke-static {p2}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    array-length v0, p2

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->z()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_5d

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v3

    array-length v4, p2

    :goto_20
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_31

    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_2f

    const/4 v3, 0x0

    goto :goto_32

    :cond_2f
    move v4, v5

    goto :goto_20

    :cond_31
    const/4 v3, 0x1

    :goto_32
    if-eqz v3, :cond_5d

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->m()Lcom/github/catvod/spider/merge/T/s;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    array-length v0, p2

    :goto_47
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_51

    aget-object v0, p2, v2

    iput-object p0, v0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    move v0, v2

    goto :goto_47

    :cond_51
    if-eqz v6, :cond_59

    aget-object p2, p2, v1

    iget p2, p2, Lcom/github/catvod/spider/merge/T/s;->b:I

    if-eqz p2, :cond_5c

    :cond_59
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->B(I)V

    :cond_5c
    return-void

    .line 1
    :cond_5d
    array-length v2, p2

    const/4 v3, 0x0

    :goto_5f
    if-ge v3, v2, :cond_70

    aget-object v4, p2, v3

    if-eqz v4, :cond_68

    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_68
    new-instance p1, Lcom/github/catvod/spider/merge/R/d;

    const-string p2, "Array must not contain any null objects"

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_70
    array-length v2, p2

    :goto_71
    if-ge v1, v2, :cond_84

    aget-object v3, p2, v1

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v4, v3, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v4, :cond_7f

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/T/s;->D(Lcom/github/catvod/spider/merge/T/s;)V

    :cond_7f
    iput-object p0, v3, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 5
    :cond_84
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->B(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/s;
    .registers 4

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/t;->a(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/U/F;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/github/catvod/spider/merge/U/E;->c:Lcom/github/catvod/spider/merge/U/E;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/E;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge/T/c;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->j()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->p()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/T/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    return-object v1
.end method

.method public abstract e()Lcom/github/catvod/spider/merge/T/c;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public final g(I)Lcom/github/catvod/spider/merge/T/s;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/T/s;

    return-object p1
.end method

.method public abstract h()I
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/github/catvod/spider/merge/T/s;->c:Ljava/util/List;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/github/catvod/spider/merge/T/s;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/s;->k(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_d

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge/T/s;->k(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/s;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_37
    return-object v0
.end method

.method protected k(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/s;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/s;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_2a

    iput-object p1, v0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-nez p1, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget v1, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    :goto_e
    iput v1, v0, Lcom/github/catvod/spider/merge/T/s;->b:I

    if-nez p1, :cond_29

    instance-of p1, p0, Lcom/github/catvod/spider/merge/T/h;

    if-nez p1, :cond_29

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->y()Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/h;->G0()Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    iput-object p1, v0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0

    :catch_2a
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract l(Ljava/lang/String;)V
.end method

.method public abstract m()Lcom/github/catvod/spider/merge/T/s;
.end method

.method protected abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/T/s;",
            ">;"
        }
    .end annotation
.end method

.method public final o(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->p()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/T/c;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/c;->o(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract p()Z
.end method

.method public final q()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected final r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
    .registers 5

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/g;->d()I

    move-result v0

    mul-int v0, v0, p2

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/g;->e()I

    move-result p2

    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge/S/b;->g(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final s()Lcom/github/catvod/spider/merge/T/s;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/s;->n()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/s;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/T/s;->v(Ljava/lang/Appendable;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final v(Ljava/lang/Appendable;)V
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/T/r;

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->y()Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_10

    :cond_9
    new-instance v1, Lcom/github/catvod/spider/merge/T/h;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/T/h;-><init>(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/h;->B0()Lcom/github/catvod/spider/merge/T/g;

    move-result-object v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge/T/r;-><init>(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/g;)V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/V/O;->a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V

    return-void
.end method

.method abstract w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
.end method

.method abstract x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
.end method

.method public final y()Lcom/github/catvod/spider/merge/T/h;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->F()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    instance-of v1, v0, Lcom/github/catvod/spider/merge/T/h;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/github/catvod/spider/merge/T/h;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public z()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    return-object v0
.end method
