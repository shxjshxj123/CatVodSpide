.class final enum Lcom/github/catvod/spider/merge/U/g;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InRow"

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->m:Lcom/github/catvod/spider/merge/U/f;

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v2

    const-string v3, "tr"

    const/4 v4, 0x0

    if-eqz v2, :cond_41

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 2
    iget-object v2, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 3
    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->v:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->p()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->o:Lcom/github/catvod/spider/merge/U/h;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->N()V

    goto :goto_8d

    :cond_29
    sget-object v0, Lcom/github/catvod/spider/merge/U/A;->D:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v4

    :cond_3b
    return v4

    .line 5
    :cond_3c
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    .line 6
    :cond_41
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 7
    move-object v2, p1

    check-cast v2, Lcom/github/catvod/spider/merge/U/M;

    .line 8
    iget-object v2, v2, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/b;->G(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_84

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v4

    :cond_5c
    const-string v5, "table"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 10
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v4

    :cond_6e
    return v4

    .line 11
    :cond_6f
    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->s:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/b;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8f

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/b;->G(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_8f

    :cond_84
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->p()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    :goto_8d
    const/4 p1, 0x1

    return p1

    :cond_8f
    :goto_8f
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v4

    :cond_93
    sget-object v0, Lcom/github/catvod/spider/merge/U/A;->E:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v4

    .line 12
    :cond_9f
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_a4
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1
.end method
