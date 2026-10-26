.class final enum Lcom/github/catvod/spider/merge/U/s;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BeforeHtml"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 8

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->c:Lcom/github/catvod/spider/merge/U/t;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto :goto_3e

    :cond_19
    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto :goto_3e

    :cond_25
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/N;

    .line 6
    iget-object v3, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    const-string v4, "html"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    :goto_3e
    const/4 p1, 0x1

    return p1

    :cond_40
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge/U/M;

    .line 9
    iget-object v1, v1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/github/catvod/spider/merge/U/A;->e:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 11
    :cond_53
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->P()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    .line 12
    :cond_5e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2
.end method
