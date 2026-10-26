.class final enum Lcom/github/catvod/spider/merge/U/j0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscapedLessthanSign"

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->H()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->B:Lcom/github/catvod/spider/merge/U/m0;

    goto :goto_2e

    :cond_21
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->z:Lcom/github/catvod/spider/merge/U/k0;

    :goto_2e
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3c

    :cond_32
    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->v:Lcom/github/catvod/spider/merge/U/g0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_3c
    return-void
.end method
