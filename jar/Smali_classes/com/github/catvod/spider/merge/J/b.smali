.class public final Lcom/github/catvod/spider/merge/J/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field final synthetic d:Lcom/github/catvod/spider/merge/J/c;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/J/c;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/J/b;->d:Lcom/github/catvod/spider/merge/J/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/catvod/spider/merge/J/b;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/J/b;->c:Z

    iput-object p2, p0, Lcom/github/catvod/spider/merge/J/b;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/J/b;->b:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/b;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/J/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/J/b;->c:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge/J/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/catvod/spider/merge/J/b;->b:I

    aget-object v0, v0, v1

    return-object v0

    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 5

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/J/b;->c:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/github/catvod/spider/merge/J/b;->d:Lcom/github/catvod/spider/merge/J/c;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/J/b;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/github/catvod/spider/merge/J/b;->b:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/J/c;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/github/catvod/spider/merge/J/b;->c:Z

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
