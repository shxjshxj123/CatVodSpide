.class final enum Lcom/github/catvod/spider/merge/U/X0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterDoctypeSystemKeyword"

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_55

    const/16 v1, 0xa

    if-eq p2, v1, :cond_55

    const/16 v1, 0xc

    if-eq p2, v1, :cond_55

    const/16 v1, 0xd

    if-eq p2, v1, :cond_55

    const/16 v1, 0x20

    if-eq p2, v1, :cond_55

    const/16 v1, 0x22

    if-eq p2, v1, :cond_4f

    const/16 v1, 0x27

    if-eq p2, v1, :cond_49

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3b

    const v1, 0xffff

    if-eq p2, v1, :cond_37

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge/U/K;->h:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->o()V

    goto :goto_5a

    :cond_37
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3e

    :cond_3b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_3e
    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge/U/K;->h:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->o()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_5a

    :cond_49
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->l0:Lcom/github/catvod/spider/merge/U/a1;

    goto :goto_57

    :cond_4f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->k0:Lcom/github/catvod/spider/merge/U/Z0;

    goto :goto_57

    :cond_55
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->j0:Lcom/github/catvod/spider/merge/U/Y0;

    :goto_57
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_5a
    return-void
.end method
