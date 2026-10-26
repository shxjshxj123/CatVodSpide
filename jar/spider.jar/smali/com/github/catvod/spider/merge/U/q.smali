.class final enum Lcom/github/catvod/spider/merge/U/q;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterAfterFrameset"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto :goto_32

    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 4
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v1, "html"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_53

    :cond_2c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->e()Z

    move-result v0

    if-eqz v0, :cond_34

    :goto_32
    const/4 p1, 0x1

    return p1

    :cond_34
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 7
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v1, "noframes"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_4e
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 p1, 0x0

    return p1

    :cond_53
    :goto_53
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1
.end method
