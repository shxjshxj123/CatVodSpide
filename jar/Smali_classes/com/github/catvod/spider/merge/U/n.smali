.class final enum Lcom/github/catvod/spider/merge/U/n;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InFrameset"

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 10

    invoke-static {p1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto/16 :goto_b9

    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/U/J;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    goto/16 :goto_b9

    :cond_1b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :cond_26
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->g()Z

    move-result v0

    const-string v3, "frameset"

    const-string v4, "html"

    if-eqz v0, :cond_80

    .line 5
    check-cast p1, Lcom/github/catvod/spider/merge/U/N;

    .line 6
    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_be

    goto :goto_67

    :sswitch_40
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_67

    :cond_49
    const/4 v5, 0x3

    goto :goto_67

    :sswitch_4b
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_67

    :cond_54
    const/4 v5, 0x2

    goto :goto_67

    :sswitch_56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_67

    :cond_5d
    const/4 v5, 0x1

    goto :goto_67

    :sswitch_5f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    packed-switch v5, :pswitch_data_d0

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :pswitch_6e
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    goto :goto_77

    :pswitch_71
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_b9

    :pswitch_75
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->g:Lcom/github/catvod/spider/merge/U/x;

    :goto_77
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result p1

    return p1

    :pswitch_7c
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_b9

    :cond_80
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/U/M;

    .line 9
    iget-object v0, v0, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :cond_9b
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b9

    sget-object p1, Lcom/github/catvod/spider/merge/U/B;->u:Lcom/github/catvod/spider/merge/U/o;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_b9

    :cond_aa
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->e()Z

    move-result p1

    if-eqz p1, :cond_ba

    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b9

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_b9
    :goto_b9
    return v1

    :cond_ba
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :sswitch_data_be
    .sparse-switch
        -0x620c002b -> :sswitch_5f
        0x3107ab -> :sswitch_56
        0x5d2a96d -> :sswitch_4b
        0x47177da7 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_75
        :pswitch_71
        :pswitch_6e
    .end packed-switch
.end method
