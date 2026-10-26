.class final enum Lcom/github/catvod/spider/merge/U/L0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CommentEndBang"

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    sget-object v1, Lcom/github/catvod/spider/merge/U/i1;->U:Lcom/github/catvod/spider/merge/U/H0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    const-string v2, "--!"

    if-eqz p2, :cond_37

    const/16 v3, 0x2d

    if-eq p2, v3, :cond_2c

    const/16 v3, 0x3e

    if-eq p2, v3, :cond_25

    const v3, 0xffff

    if-eq p2, v3, :cond_22

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/J;->l(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    goto :goto_45

    :cond_22
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    :cond_25
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_48

    :cond_2c
    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/J;->l(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/J;

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->V:Lcom/github/catvod/spider/merge/U/I0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_48

    :cond_37
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/J;->l(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/J;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    :goto_45
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_48
    return-void
.end method
