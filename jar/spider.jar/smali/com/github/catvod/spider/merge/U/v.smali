.class final enum Lcom/github/catvod/spider/merge/U/v;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InHeadNoscript"

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_40

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 2
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v3, "html"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_27
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 5
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v3, "noscript"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    :goto_40
    return v2

    :cond_41
    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 8
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/github/catvod/spider/merge/U/A;->f:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_ae

    :cond_61
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/M;

    .line 11
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v1, "br"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 13
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    new-instance v0, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    :goto_7c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    return v2

    .line 14
    :cond_87
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 15
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 16
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->I:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    :cond_9a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_a0
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_a5
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    new-instance v0, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    goto :goto_7c

    .line 19
    :cond_ae
    :goto_ae
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1
.end method
