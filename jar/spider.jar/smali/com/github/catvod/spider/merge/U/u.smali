.class final enum Lcom/github/catvod/spider/merge/U/u;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InHead"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 11

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->h:Lcom/github/catvod/spider/merge/U/y;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    return v2

    :cond_f
    iget v1, p1, Lcom/github/catvod/spider/merge/U/P;->a:I

    invoke-static {v1}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_147

    const-string v4, "template"

    const-string v5, "head"

    if-eq v1, v2, :cond_8f

    const/4 v0, 0x2

    if-eq v1, v0, :cond_33

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2c

    .line 3
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    .line 4
    :cond_2c
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto/16 :goto_13e

    .line 6
    :cond_33
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/M;

    .line 7
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->f:Lcom/github/catvod/spider/merge/U/w;

    :goto_43
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_13e

    :cond_48
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 9
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    .line 10
    :cond_58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_69

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_13e

    :cond_69
    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_7d
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->l()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->m0()Z

    goto/16 :goto_13e

    :cond_8b
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    .line 11
    :cond_8f
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 12
    iget-object v6, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v7, "html"

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge/U/x;->d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result p1

    return p1

    :cond_a3
    sget-object v7, Lcom/github/catvod/spider/merge/U/A;->a:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    const-string v0, "base"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/s;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->T(Lcom/github/catvod/spider/merge/T/m;)V

    goto/16 :goto_13e

    :cond_c4
    const-string v7, "meta"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_13e

    :cond_d0
    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 14
    iget-object p1, p2, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    sget-object v3, Lcom/github/catvod/spider/merge/U/i1;->c:Lcom/github/catvod/spider/merge/U/z0;

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->S()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_13e

    .line 15
    :cond_e9
    sget-object v7, Lcom/github/catvod/spider/merge/U/A;->b:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-static {v1, p2}, Lcom/github/catvod/spider/merge/U/B;->b(Lcom/github/catvod/spider/merge/U/N;Lcom/github/catvod/spider/merge/U/b;)V

    goto :goto_13e

    :cond_f5
    const-string v7, "noscript"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->e:Lcom/github/catvod/spider/merge/U/v;

    goto/16 :goto_43

    :cond_104
    const-string v7, "script"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11d

    iget-object p1, p2, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    sget-object v3, Lcom/github/catvod/spider/merge/U/i1;->f:Lcom/github/catvod/spider/merge/U/e1;

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->S()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_13e

    :cond_11d
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_127
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->N()V

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->r:Lcom/github/catvod/spider/merge/U/k;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_13e
    :goto_13e
    return v2

    .line 16
    :cond_13f
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    .line 17
    :cond_147
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3
.end method
