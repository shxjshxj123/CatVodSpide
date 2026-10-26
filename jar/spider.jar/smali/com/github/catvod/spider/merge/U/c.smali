.class final enum Lcom/github/catvod/spider/merge/U/c;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InTableText"

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 10

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    iget v1, p1, Lcom/github/catvod/spider/merge/U/P;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2b

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/I;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/github/catvod/spider/merge/U/B;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v4

    :cond_1d
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->A()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/I;->l()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_2b
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->A()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_93

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->A()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/github/catvod/spider/merge/S/b;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/catvod/spider/merge/U/A;->A:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/b;->o0(Z)V

    new-instance v5, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    invoke-virtual {v5, v2}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    invoke-virtual {p2, v5, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge/U/b;->o0(Z)V

    goto :goto_41

    :cond_78
    new-instance v5, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    invoke-virtual {v5, v2}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    invoke-virtual {p2, v5, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    goto :goto_41

    :cond_84
    new-instance v5, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    invoke-virtual {v5, v2}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto :goto_41

    :cond_90
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->U()V

    :cond_93
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Y()Lcom/github/catvod/spider/merge/U/B;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1
.end method
