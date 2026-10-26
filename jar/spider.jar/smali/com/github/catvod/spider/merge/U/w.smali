.class final enum Lcom/github/catvod/spider/merge/U/w;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterHead"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method

.method private e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 4

    const-string v0, "body"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto/16 :goto_b3

    :cond_11
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto/16 :goto_b3

    :cond_1e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_b3

    :cond_29
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8c

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/github/catvod/spider/merge/U/N;

    .line 6
    iget-object v4, v2, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v5, "html"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_42
    const-string v5, "body"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_b3

    :cond_54
    const-string v1, "frameset"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->t:Lcom/github/catvod/spider/merge/U/n;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_b3

    :cond_65
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->g:[Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->z()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    .line 8
    iget-object v2, p2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->j0(Lcom/github/catvod/spider/merge/T/m;)Z

    goto :goto_b3

    :cond_80
    const-string v0, "head"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_8c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 10
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 11
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 12
    sget-object v2, Lcom/github/catvod/spider/merge/U/A;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    goto :goto_b0

    :cond_a0
    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    goto :goto_b3

    :cond_ac
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_b0
    :goto_b0
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/w;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    :goto_b3
    const/4 p1, 0x1

    return p1
.end method
