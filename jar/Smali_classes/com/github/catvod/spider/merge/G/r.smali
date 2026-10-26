.class public final Lcom/github/catvod/spider/merge/G/r;
.super Lcom/github/catvod/spider/merge/G/A;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/x;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge/G/x;->g:Lcom/github/catvod/spider/merge/G/y;

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge/G/A;-><init>(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/s;Lcom/github/catvod/spider/merge/G/y;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/A;->e(Lcom/github/catvod/spider/merge/G/E;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/G/x;ILcom/github/catvod/spider/merge/G/y;)V
    .registers 5

    .line 3
    iget-object v0, p1, Lcom/github/catvod/spider/merge/G/x;->e:Lcom/github/catvod/spider/merge/G/H;

    .line 4
    invoke-direct {p0, p1, v0, p3}, Lcom/github/catvod/spider/merge/G/A;-><init>(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/s;Lcom/github/catvod/spider/merge/G/y;)V

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/G/A;->d(I)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/x;->o()Lcom/github/catvod/spider/merge/G/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/G/A;->e(Lcom/github/catvod/spider/merge/G/E;)V

    return-void
.end method
