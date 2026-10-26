.class final Lcom/github/catvod/spider/merge/p/d;
.super Lcom/github/catvod/spider/merge/p/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/n<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private final c:Lcom/github/catvod/spider/merge/p/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/p/f;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/p/f<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/n;-><init>()V

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/o/m;->f(II)I

    iput v0, p0, Lcom/github/catvod/spider/merge/p/d;->a:I

    iput p2, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge/p/d;->c:Lcom/github/catvod/spider/merge/p/f;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    iget v1, p0, Lcom/github/catvod/spider/merge/p/d;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/p/d;->c:Lcom/github/catvod/spider/merge/p/f;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/p/d;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/p/d;->c:Lcom/github/catvod/spider/merge/p/f;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/d;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
