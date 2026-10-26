.class final enum Lcom/github/catvod/spider/merge/U/z0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Rcdata"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v1, 0x26

    if-eq v0, v1, :cond_27

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_24

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    goto :goto_39

    :cond_1b
    new-instance p2, Lcom/github/catvod/spider/merge/U/L;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/U/L;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->k(Lcom/github/catvod/spider/merge/U/P;)V

    goto :goto_39

    :cond_24
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->k:Lcom/github/catvod/spider/merge/U/U;

    goto :goto_29

    :cond_27
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->d:Lcom/github/catvod/spider/merge/U/K0;

    :goto_29
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_39

    :cond_2d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->a()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    :goto_39
    return-void
.end method
