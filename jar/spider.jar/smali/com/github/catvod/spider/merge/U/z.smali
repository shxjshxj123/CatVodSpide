.class final enum Lcom/github/catvod/spider/merge/U/z;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InTable"

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 12

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/github/catvod/spider/merge/U/A;->A:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->U()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->S()V

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->j:Lcom/github/catvod/spider/merge/U/c;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_a5

    :cond_25
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    return v2

    :cond_32
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_3d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v1

    const-string v4, "template"

    const-string v5, "table"

    if-eqz v1, :cond_121

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 4
    iget-object v6, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v7, "caption"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->o()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->N()V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->k:Lcom/github/catvod/spider/merge/U/d;

    goto :goto_90

    :cond_60
    const-string v7, "colgroup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->o()V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->l:Lcom/github/catvod/spider/merge/U/e;

    goto :goto_90

    :cond_71
    const-string v8, "col"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->o()V

    invoke-virtual {p2, v7}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    goto :goto_a5

    :cond_80
    sget-object v7, Lcom/github/catvod/spider/merge/U/A;->s:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_95

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->o()V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->m:Lcom/github/catvod/spider/merge/U/f;

    :goto_90
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_11b

    :cond_95
    sget-object v7, Lcom/github/catvod/spider/merge/U/A;->t:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->o()V

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    .line 6
    :goto_a5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    .line 7
    :cond_aa
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v6}, Lcom/github/catvod/spider/merge/U/b;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    return v3

    :cond_ba
    invoke-virtual {p2, v6}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->m0()Z

    move-result v0

    if-nez v0, :cond_c7

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    return v2

    :cond_c7
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_cc
    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->u:[Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_d9
    const-string v0, "input"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/O;->u()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, v1, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_11b

    :cond_fc
    :goto_fc
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/z;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)V

    return v2

    :cond_100
    const-string v0, "form"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->x()Lcom/github/catvod/spider/merge/T/p;

    move-result-object p1

    if-nez p1, :cond_11c

    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_118

    goto :goto_11c

    :cond_118
    invoke-virtual {p2, v1, v3, v3}, Lcom/github/catvod/spider/merge/U/b;->L(Lcom/github/catvod/spider/merge/U/N;ZZ)Lcom/github/catvod/spider/merge/T/p;

    :goto_11b
    return v2

    :cond_11c
    :goto_11c
    return v3

    :cond_11d
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/z;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)V

    return v2

    :cond_121
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 9
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->G(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13c

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_13c
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->m0()Z

    goto :goto_158

    :cond_143
    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->z:[Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v3

    :cond_14f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    :goto_158
    return v2

    :cond_159
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/z;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)V

    return v2

    :cond_15d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->e()Z

    move-result v0

    if-eqz v0, :cond_16f

    const-string p1, "html"

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16e

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_16e
    return v2

    :cond_16f
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/z;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)V

    return v2
.end method

.method final e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)V
    .registers 4

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->o0(Z)V

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->o0(Z)V

    return-void
.end method
