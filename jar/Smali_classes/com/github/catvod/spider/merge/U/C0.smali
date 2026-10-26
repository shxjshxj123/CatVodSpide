.class final enum Lcom/github/catvod/spider/merge/U/C0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "SelfClosingStartTag"

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1f

    const v2, 0xffff

    if-eq v1, v2, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->P()V

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->H:Lcom/github/catvod/spider/merge/U/t0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_2a

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_27

    :cond_1f
    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge/U/O;->m:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->p()V

    :goto_27
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_2a
    return-void
.end method
