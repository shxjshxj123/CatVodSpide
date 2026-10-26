.class final enum Lcom/github/catvod/spider/merge/U/G0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CommentStartDash"

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    sget-object v1, Lcom/github/catvod/spider/merge/U/i1;->U:Lcom/github/catvod/spider/merge/U/H0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    if-eqz p2, :cond_31

    const/16 v2, 0x2d

    if-eq p2, v2, :cond_2b

    const/16 v2, 0x3e

    if-eq p2, v2, :cond_21

    const v2, 0xffff

    if-eq p2, v2, :cond_1d

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    goto :goto_3c

    :cond_1d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_24

    :cond_21
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_24
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3f

    :cond_2b
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->W:Lcom/github/catvod/spider/merge/U/J0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3f

    :cond_31
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    :goto_3c
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_3f
    return-void
.end method
