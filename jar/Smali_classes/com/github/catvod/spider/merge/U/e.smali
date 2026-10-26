.class final enum Lcom/github/catvod/spider/merge/U/e;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InColumnGroup"

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method

.method private e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 4

    const-string v0, "colgroup"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 p1, 0x0

    return p1

    :cond_d
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 14

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

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

    if-eqz v1, :cond_c0

    const-string v3, "html"

    const/4 v4, 0x0

    const-string v5, "template"

    const/4 v6, 0x2

    if-eq v1, v2, :cond_71

    if-eq v1, v6, :cond_3f

    const/4 v0, 0x3

    if-eq v1, v0, :cond_38

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2c

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/e;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result p1

    return p1

    :cond_2c
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v2

    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/e;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result p1

    return p1

    .line 3
    :cond_38
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto/16 :goto_c3

    .line 5
    :cond_3f
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 6
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    const-string v0, "colgroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/e;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result p1

    return p1

    :cond_5a
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v4

    :cond_64
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_c3

    :cond_6d
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    goto :goto_c3

    .line 8
    :cond_71
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 9
    iget-object v7, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x4ec53386

    const/4 v10, -0x1

    if-eq v8, v9, :cond_a3

    const v4, 0x18180

    if-eq v8, v4, :cond_98

    const v4, 0x3107ab

    if-eq v8, v4, :cond_8f

    :goto_8d
    const/4 v4, -0x1

    goto :goto_aa

    :cond_8f
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto :goto_8d

    :cond_96
    const/4 v4, 0x2

    goto :goto_aa

    :cond_98
    const-string v3, "col"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    goto :goto_8d

    :cond_a1
    const/4 v4, 0x1

    goto :goto_aa

    :cond_a3
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    goto :goto_8d

    :cond_aa
    :goto_aa
    if-eqz v4, :cond_6d

    if-eq v4, v2, :cond_bc

    if-eq v4, v6, :cond_b5

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/U/e;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result p1

    return p1

    :cond_b5
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :cond_bc
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_c3

    :cond_c0
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :goto_c3
    return v2
.end method
