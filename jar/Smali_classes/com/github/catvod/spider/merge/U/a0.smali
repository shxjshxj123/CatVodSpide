.class final enum Lcom/github/catvod/spider/merge/U/a0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataLessthanSign"

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_28

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_22

    const v1, 0xffff

    const-string v2, "<"

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    if-eq v0, v1, :cond_1c

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->P()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->f:Lcom/github/catvod/spider/merge/U/e1;

    goto :goto_2f

    :cond_1c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    goto :goto_2f

    :cond_22
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->r:Lcom/github/catvod/spider/merge/U/b0;

    goto :goto_2f

    :cond_28
    const-string p2, "<!"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->t:Lcom/github/catvod/spider/merge/U/e0;

    :goto_2f
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    return-void
.end method
