.class final enum Lcom/github/catvod/spider/merge/U/D0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BogusComment"

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/a;->p(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/J;->l(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v0

    if-eq v0, v1, :cond_16

    const v1, 0xffff

    if-ne v0, v1, :cond_21

    :cond_16
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->n()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :cond_21
    return-void
.end method
