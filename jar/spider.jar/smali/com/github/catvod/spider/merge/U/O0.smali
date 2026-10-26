.class final enum Lcom/github/catvod/spider/merge/U/O0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "DoctypeName"

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->J()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->k()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_14
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    if-eqz p2, :cond_51

    const/16 v1, 0x20

    if-eq p2, v1, :cond_4b

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_44

    const v1, 0xffff

    if-eq p2, v1, :cond_3c

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4b

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4b

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4b

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4b

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    goto :goto_5b

    :cond_3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge/U/K;->h:Z

    :cond_44
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->o()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_5e

    :cond_4b
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->b0:Lcom/github/catvod/spider/merge/U/P0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_5e

    :cond_51
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    :goto_5b
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5e
    return-void
.end method
