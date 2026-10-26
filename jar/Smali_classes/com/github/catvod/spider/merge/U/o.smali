.class final enum Lcom/github/catvod/spider/merge/U/o;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterFrameset"

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 6

    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto :goto_70

    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto :goto_70

    :cond_18
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v1

    :cond_23
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_39

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 6
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    goto :goto_65

    :cond_39
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/M;

    .line 9
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->w:Lcom/github/catvod/spider/merge/U/q;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_70

    :cond_50
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/N;

    .line 12
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v2, "noframes"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    :goto_65
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_6a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->e()Z

    move-result p1

    if-eqz p1, :cond_72

    :goto_70
    const/4 p1, 0x1

    return p1

    :cond_72
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v1
.end method
