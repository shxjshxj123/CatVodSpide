.class public abstract Lcom/github/catvod/spider/merge/G/x;
.super Lcom/github/catvod/spider/merge/G/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/G/C<",
        "Lcom/github/catvod/spider/merge/G/E;",
        "Lcom/github/catvod/spider/merge/H/S;",
        ">;"
    }
.end annotation


# instance fields
.field protected d:Lcom/github/catvod/spider/merge/G/p;

.field protected e:Lcom/github/catvod/spider/merge/G/H;

.field protected final f:Lcom/github/catvod/spider/merge/J/i;

.field protected g:Lcom/github/catvod/spider/merge/G/y;

.field protected h:Z

.field private i:Lcom/github/catvod/spider/merge/G/w;

.field protected j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/K/c;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/H;)V
    .registers 7

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/G/C;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/G/p;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/G/p;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    new-instance v0, Lcom/github/catvod/spider/merge/J/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/J/i;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->f:Lcom/github/catvod/spider/merge/J/i;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/J/h;->a(I)V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Lcom/github/catvod/spider/merge/G/x;->h:Z

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    .line 4
    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    .line 5
    iput-boolean v1, v3, Lcom/github/catvod/spider/merge/G/p;->a:Z

    iput-object v2, v3, Lcom/github/catvod/spider/merge/G/p;->c:Lcom/github/catvod/spider/merge/J/k;

    const/4 v4, -0x1

    iput v4, v3, Lcom/github/catvod/spider/merge/G/p;->b:I

    .line 6
    iput-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge/G/x;->k:Z

    .line 7
    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/x;->i:Lcom/github/catvod/spider/merge/G/w;

    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge/G/x;->s(Lcom/github/catvod/spider/merge/K/c;)V

    iput-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->i:Lcom/github/catvod/spider/merge/G/w;

    .line 8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/h;->b()V

    .line 9
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/J/h;->a(I)V

    .line 10
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/C;->b:Lcom/github/catvod/spider/merge/H/l;

    if-eqz v0, :cond_3c

    .line 11
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/l;->a()V

    .line 12
    :cond_3c
    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    return-void
.end method


# virtual methods
.method public final h(I)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->f:Lcom/github/catvod/spider/merge/J/i;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/h;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/J/h;->c(I)I

    move-result v0

    if-lt p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public final j()Lcom/github/catvod/spider/merge/G/E;
    .registers 5

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    .line 2
    invoke-interface {v1}, Lcom/github/catvod/spider/merge/G/s;->i()V

    :cond_10
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    iget-boolean v2, p0, Lcom/github/catvod/spider/merge/G/x;->h:Z

    if-nez v2, :cond_23

    if-eqz v1, :cond_73

    :cond_23
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    .line 3
    iget-boolean v1, v1, Lcom/github/catvod/spider/merge/G/p;->a:Z

    if-eqz v1, :cond_4e

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    .line 5
    new-instance v2, Lcom/github/catvod/spider/merge/K/a;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/K/a;-><init>(Lcom/github/catvod/spider/merge/G/E;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/G/y;->g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;

    .line 8
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/K/c;

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/K/c;->a()V

    goto :goto_3e

    :cond_4e
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    .line 9
    new-instance v2, Lcom/github/catvod/spider/merge/K/g;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/K/g;-><init>(Lcom/github/catvod/spider/merge/G/E;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/G/y;->g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;

    .line 12
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/K/c;

    invoke-interface {v3, v2}, Lcom/github/catvod/spider/merge/K/c;->g(Lcom/github/catvod/spider/merge/K/f;)V

    goto :goto_63

    :cond_73
    return-object v0
.end method

.method public final k(Lcom/github/catvod/spider/merge/G/y;)V
    .registers 5

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/G/x;->h:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    if-eq v0, p1, :cond_1e

    iget-object v0, v0, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    check-cast v0, Lcom/github/catvod/spider/merge/G/y;

    if-eqz v0, :cond_1e

    .line 1
    iget-object v1, v0, Lcom/github/catvod/spider/merge/G/y;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2
    :cond_1b
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/G/y;->g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;

    .line 3
    :cond_1e
    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    return-void
.end method

.method public final l(Lcom/github/catvod/spider/merge/G/y;I)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/G/C;->i(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/github/catvod/spider/merge/G/H;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object p2

    iput-object p2, p1, Lcom/github/catvod/spider/merge/G/y;->e:Lcom/github/catvod/spider/merge/G/E;

    iget-boolean p1, p0, Lcom/github/catvod/spider/merge/G/x;->h:Z

    if-eqz p1, :cond_1d

    .line 1
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget-object p2, p1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    check-cast p2, Lcom/github/catvod/spider/merge/G/y;

    if-eqz p2, :cond_1d

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/G/y;->g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;

    .line 3
    :cond_1d
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_3c

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/K/c;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    invoke-interface {p2, v0}, Lcom/github/catvod/spider/merge/K/c;->O(Lcom/github/catvod/spider/merge/G/y;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge/G/y;->h(Lcom/github/catvod/spider/merge/K/c;)V

    goto :goto_25

    :cond_3c
    return-void
.end method

.method public final m()V
    .registers 5

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/G/x;->k:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/github/catvod/spider/merge/G/H;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v2

    goto :goto_17

    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    invoke-interface {v2, v1}, Lcom/github/catvod/spider/merge/G/H;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v2

    :goto_17
    iput-object v2, v0, Lcom/github/catvod/spider/merge/G/y;->f:Lcom/github/catvod/spider/merge/G/E;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_22
    if-ltz v0, :cond_39

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/K/c;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/G/y;->i(Lcom/github/catvod/spider/merge/K/c;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    invoke-interface {v1, v2}, Lcom/github/catvod/spider/merge/K/c;->S(Lcom/github/catvod/spider/merge/G/y;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 2
    :cond_39
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget v0, v0, Lcom/github/catvod/spider/merge/G/D;->b:I

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/G/C;->i(I)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    check-cast v0, Lcom/github/catvod/spider/merge/G/y;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    return-void
.end method

.method public final n()Lcom/github/catvod/spider/merge/G/y;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    return-object v0
.end method

.method public final o()Lcom/github/catvod/spider/merge/G/E;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/github/catvod/spider/merge/G/H;->f(I)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    return-object v0
.end method

.method public final p()I
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->f:Lcom/github/catvod/spider/merge/J/i;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/h;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->f:Lcom/github/catvod/spider/merge/J/i;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/h;->f()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/J/h;->c(I)I

    move-result v0

    return v0
.end method

.method public final q(I)Lcom/github/catvod/spider/merge/G/E;
    .registers 5

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, p1, :cond_19

    if-ne p1, v2, :cond_10

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/G/x;->k:Z

    :cond_10
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/p;->i()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/x;->j()Lcom/github/catvod/spider/merge/G/E;

    goto :goto_36

    :cond_19
    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/G/p;->g(Lcom/github/catvod/spider/merge/G/x;)Lcom/github/catvod/spider/merge/G/E;

    move-result-object v0

    iget-boolean p1, p0, Lcom/github/catvod/spider/merge/G/x;->h:Z

    if-eqz p1, :cond_36

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->c()I

    move-result p1

    if-ne p1, v2, :cond_36

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    .line 1
    new-instance v1, Lcom/github/catvod/spider/merge/K/a;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/K/a;-><init>(Lcom/github/catvod/spider/merge/G/E;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/G/y;->g(Lcom/github/catvod/spider/merge/K/b;)Lcom/github/catvod/spider/merge/K/b;

    :cond_36
    :goto_36
    return-object v0
.end method

.method public final r(Lcom/github/catvod/spider/merge/G/E;Ljava/lang/String;Lcom/github/catvod/spider/merge/G/A;)V
    .registers 11

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->getLine()I

    move-result v3

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/G/C;->e()Lcom/github/catvod/spider/merge/G/a;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/G/z;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/catvod/spider/merge/G/z;->d(Lcom/github/catvod/spider/merge/G/C;Ljava/lang/Object;IILjava/lang/String;Lcom/github/catvod/spider/merge/G/A;)V

    return-void
.end method

.method public final s(Lcom/github/catvod/spider/merge/K/c;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->j:Ljava/util/ArrayList;

    :cond_15
    return-void
.end method

.method public final t(Lcom/github/catvod/spider/merge/G/p;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/x;->d:Lcom/github/catvod/spider/merge/G/p;

    return-void
.end method
