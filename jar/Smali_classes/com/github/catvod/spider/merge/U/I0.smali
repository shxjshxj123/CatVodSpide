.class final enum Lcom/github/catvod/spider/merge/U/I0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CommentEndDash"

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->U:Lcom/github/catvod/spider/merge/U/H0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    const/16 v1, 0x2d

    if-eqz p2, :cond_29

    if-eq p2, v1, :cond_23

    const v2, 0xffff

    if-eq p2, v2, :cond_1a

    iget-object v2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {v2, p2}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    goto :goto_37

    :cond_1a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->n()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    goto :goto_25

    :cond_23
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->W:Lcom/github/catvod/spider/merge/U/J0;

    :goto_25
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3a

    :cond_29
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    const v1, 0xfffd

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    :goto_37
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_3a
    return-void
.end method
