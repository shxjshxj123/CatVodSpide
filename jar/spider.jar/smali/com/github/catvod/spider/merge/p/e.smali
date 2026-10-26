.class final Lcom/github/catvod/spider/merge/p/e;
.super Lcom/github/catvod/spider/merge/p/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/p/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final transient d:I

.field final transient e:I

.field final synthetic f:Lcom/github/catvod/spider/merge/p/f;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/p/f;II)V
    .registers 4

    iput-object p1, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/f;-><init>()V

    iput p2, p0, Lcom/github/catvod/spider/merge/p/e;->d:I

    iput p3, p0, Lcom/github/catvod/spider/merge/p/e;->e:I

    return-void
.end method


# virtual methods
.method final b()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/p/c;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/p/c;->d()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/p/e;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/github/catvod/spider/merge/p/e;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/p/c;->d()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/p/e;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/github/catvod/spider/merge/p/e;->e:I

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/o/m;->e(II)I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    iget v1, p0, Lcom/github/catvod/spider/merge/p/e;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(II)Lcom/github/catvod/spider/merge/p/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/github/catvod/spider/merge/p/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/github/catvod/spider/merge/p/e;->e:I

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/o/m;->g(III)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/p/e;->f:Lcom/github/catvod/spider/merge/p/f;

    iget v1, p0, Lcom/github/catvod/spider/merge/p/e;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge/p/f;->h(II)Lcom/github/catvod/spider/merge/p/f;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/p/f;->g(I)Lcom/github/catvod/spider/merge/p/n;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/p/f;->g(I)Lcom/github/catvod/spider/merge/p/n;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/p/f;->g(I)Lcom/github/catvod/spider/merge/p/n;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/p/e;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/p/e;->h(II)Lcom/github/catvod/spider/merge/p/f;

    move-result-object p1

    return-object p1
.end method
