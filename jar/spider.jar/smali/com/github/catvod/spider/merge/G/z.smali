.class public final Lcom/github/catvod/spider/merge/G/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/G/a;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/github/catvod/spider/merge/G/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/github/catvod/spider/merge/G/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/z;->a:Ljava/util/Collection;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delegates"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V
    .registers 16

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/z;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/G/a;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/github/catvod/spider/merge/G/a;->a(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IIILcom/github/catvod/spider/merge/H/f;)V
    .registers 16

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/z;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/G/a;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/github/catvod/spider/merge/G/a;->b(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IIILcom/github/catvod/spider/merge/H/f;)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public final c(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V
    .registers 16

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/z;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/G/a;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/github/catvod/spider/merge/G/a;->c(Lcom/github/catvod/spider/merge/G/x;Lcom/github/catvod/spider/merge/I/b;IILjava/util/BitSet;Lcom/github/catvod/spider/merge/H/f;)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public final d(Lcom/github/catvod/spider/merge/G/C;Ljava/lang/Object;IILjava/lang/String;Lcom/github/catvod/spider/merge/G/A;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/G/A;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/z;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/G/a;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/github/catvod/spider/merge/G/a;->d(Lcom/github/catvod/spider/merge/G/C;Ljava/lang/Object;IILjava/lang/String;Lcom/github/catvod/spider/merge/G/A;)V

    goto :goto_6

    :cond_1d
    return-void
.end method
