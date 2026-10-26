.class final enum Lcom/github/catvod/spider/merge/U/a1;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "DoctypeSystemIdentifier_singleQuoted"

    const/16 v1, 0x3f

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

    if-eqz p2, :cond_33

    const/16 v1, 0x27

    if-eq p2, v1, :cond_2d

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1f

    const v1, 0xffff

    if-eq p2, v1, :cond_1b

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/K;->g:Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_22
    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge/U/K;->h:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->o()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_40

    :cond_2d
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->m0:Lcom/github/catvod/spider/merge/U/b1;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_40

    :cond_33
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/K;->g:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    :goto_3d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_40
    return-void
.end method
