.class final enum Lcom/github/catvod/spider/merge/U/k;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InTemplate"

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    iget v2, p1, Lcom/github/catvod/spider/merge/U/P;->a:I

    invoke-static {v2}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e5

    if-eq v2, v3, :cond_5c

    const/4 v4, 0x2

    const-string v5, "template"

    if-eq v2, v4, :cond_4b

    const/4 v0, 0x3

    if-eq v2, v0, :cond_e5

    const/4 v0, 0x4

    if-eq v2, v0, :cond_e5

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1f

    goto/16 :goto_e8

    :cond_1f
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    return v3

    :cond_26
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->l()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->m0()Z

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->q0()Lcom/github/catvod/spider/merge/U/B;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->r:Lcom/github/catvod/spider/merge/U/k;

    if-eq v0, v1, :cond_4a

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->r0()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_4a

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_4a
    return v3

    .line 1
    :cond_4b
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 2
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_69

    :cond_57
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_5c
    move-object v2, p1

    check-cast v2, Lcom/github/catvod/spider/merge/U/N;

    .line 5
    iget-object v2, v2, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 6
    sget-object v4, Lcom/github/catvod/spider/merge/U/A;->K:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :goto_69
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    goto/16 :goto_e8

    :cond_6e
    sget-object v0, Lcom/github/catvod/spider/merge/U/A;->L:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_86
    const-string v0, "col"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->l:Lcom/github/catvod/spider/merge/U/e;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_9e
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->m:Lcom/github/catvod/spider/merge/U/f;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_b6
    const-string v0, "td"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string v0, "th"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    goto :goto_d5

    :cond_c7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_d5
    :goto_d5
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->b0()Lcom/github/catvod/spider/merge/U/B;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->n:Lcom/github/catvod/spider/merge/U/g;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->f0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_e5
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    :goto_e8
    return v3
.end method
