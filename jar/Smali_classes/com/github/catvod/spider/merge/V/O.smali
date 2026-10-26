.class public final Lcom/github/catvod/spider/merge/V/O;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge/V/P;Lcom/github/catvod/spider/merge/T/s;)V
    .registers 9

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_6
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->A()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v4

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v5

    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge/V/P;->b(Lcom/github/catvod/spider/merge/T/s;I)V

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->q()Z

    move-result v6

    if-nez v6, :cond_3a

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v6

    if-ne v4, v6, :cond_32

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->H()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge/T/s;->g(I)Lcom/github/catvod/spider/merge/T/s;

    move-result-object v1

    goto :goto_3a

    :cond_32
    if-nez v5, :cond_38

    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto :goto_6

    :cond_38
    move-object v1, v5

    goto :goto_6

    :cond_3a
    :goto_3a
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->h()I

    move-result v3

    if-lez v3, :cond_47

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/T/s;->g(I)Lcom/github/catvod/spider/merge/T/s;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_47
    :goto_47
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v3

    if-nez v3, :cond_5a

    if-gtz v2, :cond_50

    goto :goto_5a

    :cond_50
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge/V/P;->a(Lcom/github/catvod/spider/merge/T/s;I)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->A()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_47

    :cond_5a
    :goto_5a
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge/V/P;->a(Lcom/github/catvod/spider/merge/T/s;I)V

    if-ne v1, p1, :cond_60

    goto :goto_65

    :cond_60
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v1

    goto :goto_6

    :cond_65
    :goto_65
    return-void
.end method
