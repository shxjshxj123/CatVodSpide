.class public Lcom/github/catvod/spider/merge/H/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Lcom/github/catvod/spider/merge/H/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field public b:Lcom/github/catvod/spider/merge/H/e;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field protected e:Ljava/util/BitSet;

.field public f:Z

.field public g:Z

.field public final h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/H/f;->a:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    new-instance v1, Lcom/github/catvod/spider/merge/H/e;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge/H/e;-><init>(I)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/H/f;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/b;",
            "Lcom/github/catvod/spider/merge/J/d<",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/H/f;->a:Z

    if-nez v0, :cond_4d

    iget-object v0, p1, Lcom/github/catvod/spider/merge/H/b;->e:Lcom/github/catvod/spider/merge/H/l0;

    sget-object v1, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    iput-boolean v2, p0, Lcom/github/catvod/spider/merge/H/f;->f:Z

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/b;->b()I

    move-result v0

    if-lez v0, :cond_15

    iput-boolean v2, p0, Lcom/github/catvod/spider/merge/H/f;->g:Z

    :cond_15
    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/J/c;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/b;

    if-ne v0, p1, :cond_28

    const/4 p2, -0x1

    iput p2, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    iget-object p2, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_28
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->h:Z

    xor-int/2addr v1, v2

    iget-object v2, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-static {v2, v3, v1, p2}, Lcom/github/catvod/spider/merge/H/X;->g(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/X;ZLcom/github/catvod/spider/merge/J/d;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object p2

    iget v1, v0, Lcom/github/catvod/spider/merge/H/b;->d:I

    iget v2, p1, Lcom/github/catvod/spider/merge/H/b;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/github/catvod/spider/merge/H/b;->d:I

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1
    iget p1, v0, Lcom/github/catvod/spider/merge/H/b;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p1, v1

    iput p1, v0, Lcom/github/catvod/spider/merge/H/b;->d:I

    .line 2
    :cond_4a
    iput-object p2, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    return-void

    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This set is readonly"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/github/catvod/spider/merge/H/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    goto :goto_4

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/github/catvod/spider/merge/H/l;)V
    .registers 8

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/H/f;->a:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/b;

    iget-object v2, v1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    .line 1
    iget-object v3, p1, Lcom/github/catvod/spider/merge/H/l;->b:Lcom/github/catvod/spider/merge/H/Y;

    if-nez v3, :cond_26

    goto :goto_33

    :cond_26
    monitor-enter v3

    :try_start_27
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v5, p1, Lcom/github/catvod/spider/merge/H/l;->b:Lcom/github/catvod/spider/merge/H/Y;

    invoke-static {v2, v5, v4}, Lcom/github/catvod/spider/merge/H/X;->b(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/Y;Ljava/util/IdentityHashMap;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_36

    .line 2
    :goto_33
    iput-object v2, v1, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    goto :goto_13

    :catchall_36
    move-exception p1

    .line 3
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1

    :cond_39
    return-void

    .line 4
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This set is readonly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :goto_42
    throw p1

    :goto_43
    goto :goto_42
.end method

.method public final clear()V
    .registers 3

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/H/f;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/c;->clear()V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This set is readonly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/J/c;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is not implemented for readonly sets."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/H/f;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    iget-object v3, p1, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->h:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge/H/f;->h:Z

    if-ne v1, v3, :cond_37

    iget v1, p0, Lcom/github/catvod/spider/merge/H/f;->d:I

    iget v3, p1, Lcom/github/catvod/spider/merge/H/f;->d:I

    if-ne v1, v3, :cond_37

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    if-ne v1, v3, :cond_37

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->f:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge/H/f;->f:Z

    if-ne v1, v3, :cond_37

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->g:Z

    iget-boolean p1, p1, Lcom/github/catvod/spider/merge/H/f;->g:Z

    if-ne v1, p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/H/f;->a:Z

    if-eqz v0, :cond_14

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    :cond_11
    iget v0, p0, Lcom/github/catvod/spider/merge/H/f;->i:I

    return v0

    :cond_14
    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/c;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge/H/b;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/J/c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->f:Z

    if-eqz v1, :cond_1c

    const-string v1, ",hasSemanticContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1c
    iget v1, p0, Lcom/github/catvod/spider/merge/H/f;->d:I

    if-eqz v1, :cond_2a

    const-string v1, ",uniqueAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    if-eqz v1, :cond_38

    const-string v1, ",conflictingAlts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/f;->e:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_38
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/f;->g:Z

    if-eqz v1, :cond_41

    const-string v1, ",dipsIntoOuterContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
