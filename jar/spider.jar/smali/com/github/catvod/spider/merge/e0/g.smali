.class public final Lcom/github/catvod/spider/merge/e0/g;
.super Lcom/github/catvod/spider/merge/J/a;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/d0/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/J/a;",
        "Lcom/github/catvod/spider/merge/d0/E<",
        "Lcom/github/catvod/spider/merge/e0/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/github/catvod/spider/merge/e0/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/github/catvod/spider/merge/e0/e;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/V/g;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/J/a;-><init>()V

    .line 2
    const-class v0, Lcom/github/catvod/spider/merge/e0/g;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/k0/c;->d(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/k0/b;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/e0/e;->c(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->b:Lcom/github/catvod/spider/merge/e0/e;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/e0/e;->c(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/g;->b:Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/e0/e;->j(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private G()Lcom/github/catvod/spider/merge/e0/e;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/e;

    return-object v0
.end method

.method private H(Lcom/github/catvod/spider/merge/V/g;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/e0/e;->i(Lcom/github/catvod/spider/merge/V/g;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/github/catvod/spider/merge/d0/g;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/j0/a;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/a;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/catvod/spider/merge/e0/a;->a(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/f;

    move-result-object p1

    goto :goto_37

    :cond_20
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 3
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->h()Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_37

    :cond_36
    move-object p1, v0

    :goto_37
    return-object p1
.end method

.method public final B(Lcom/github/catvod/spider/merge/d0/j;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/v;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/v;

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/v;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final C(Lcom/github/catvod/spider/merge/d0/x;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/e;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 3
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto/16 :goto_115

    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_116

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/K/b;

    .line 5
    invoke-interface {v1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/K/b;

    .line 7
    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/d0/x;->g:Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v3}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_130

    :pswitch_44
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "unknown operator"

    .line 9
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object p1, p1, Lcom/github/catvod/spider/merge/d0/x;->g:Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5d
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 12
    :pswitch_74
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 14
    :pswitch_8a
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 16
    :pswitch_a0
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 18
    :pswitch_b6
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_cb
    move-object p1, v0

    goto :goto_115

    .line 20
    :pswitch_cd
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->i(Lcom/github/catvod/spider/merge/e0/f;)I

    move-result p1

    if-ltz p1, :cond_d4

    goto :goto_d5

    :cond_d4
    const/4 v2, 0x0

    :goto_d5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 22
    :pswitch_df
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->i(Lcom/github/catvod/spider/merge/e0/f;)I

    move-result p1

    if-gtz p1, :cond_e6

    goto :goto_e7

    :cond_e6
    const/4 v2, 0x0

    :goto_e7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 24
    :pswitch_f1
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->i(Lcom/github/catvod/spider/merge/e0/f;)I

    move-result p1

    if-lez p1, :cond_f8

    goto :goto_f9

    :cond_f8
    const/4 v2, 0x0

    :goto_f9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    .line 26
    :pswitch_103
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->i(Lcom/github/catvod/spider/merge/e0/f;)I

    move-result p1

    if-gez p1, :cond_10a

    goto :goto_10b

    :cond_10a
    const/4 v2, 0x0

    :goto_10b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_cb

    :goto_115
    return-object p1

    .line 28
    :cond_116
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "error equalityExpr near:"

    .line 29
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    goto :goto_12e

    :goto_12d
    throw v0

    :goto_12e
    goto :goto_12d

    nop

    :pswitch_data_130
    .packed-switch 0x18
        :pswitch_103
        :pswitch_f1
        :pswitch_df
        :pswitch_cd
        :pswitch_44
        :pswitch_44
        :pswitch_b6
        :pswitch_a0
        :pswitch_8a
        :pswitch_74
        :pswitch_5d
    .end packed-switch
.end method

.method public final D(Lcom/github/catvod/spider/merge/d0/z;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->m()Lcom/github/catvod/spider/merge/d0/c;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->m()Lcom/github/catvod/spider/merge/d0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->m()Lcom/github/catvod/spider/merge/d0/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/c;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto/16 :goto_234

    :cond_1c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->n()Lcom/github/catvod/spider/merge/d0/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->n()Lcom/github/catvod/spider/merge/d0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->n()Lcom/github/catvod/spider/merge/d0/g;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/d0/g;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/e0/g;->H(Lcom/github/catvod/spider/merge/V/g;)V

    goto :goto_51

    :cond_48
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->k()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_54

    :cond_51
    :goto_51
    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->o()Lcom/github/catvod/spider/merge/d0/r;

    move-result-object v3

    if-eqz v3, :cond_1f4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->o()Lcom/github/catvod/spider/merge/d0/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v3

    if-nez v3, :cond_1f4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->o()Lcom/github/catvod/spider/merge/d0/r;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p0}, Lcom/github/catvod/spider/merge/d0/r;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/github/catvod/spider/merge/e0/f;

    if-eqz v1, :cond_162

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/e;->f()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const-string v3, "]"

    const-string v4, "["

    if-ne v1, v2, :cond_d2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->k()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 8
    :cond_cb
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_234

    .line 9
    :cond_d2
    new-instance v1, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_db
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_db

    :cond_101
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10a

    .line 10
    :cond_11e
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_233

    .line 11
    :cond_125
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_13e

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->k()Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_233

    .line 13
    :cond_13e
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_147
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_147

    .line 14
    :cond_15b
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_234

    .line 15
    :cond_162
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->o()Z

    move-result v1

    if-eqz v1, :cond_1e4

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/e;->f()Z

    move-result v3

    if-eqz v3, :cond_183

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    goto :goto_1ee

    :cond_183
    new-instance v2, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_194
    :goto_194
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    const-string v5, "*"

    if-eqz v0, :cond_1b8

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    :cond_1b4
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_194

    :cond_1b8
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->V()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c0
    :goto_1c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_194

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1dc

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c0

    :cond_1dc
    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1c0

    :cond_1e0
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge/e0/g;->H(Lcom/github/catvod/spider/merge/V/g;)V

    goto :goto_1f4

    :cond_1e4
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1f2

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    :goto_1ee
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/e0/g;->H(Lcom/github/catvod/spider/merge/V/g;)V

    goto :goto_1f4

    :cond_1f2
    move-object p1, v3

    goto :goto_234

    :cond_1f4
    :goto_1f4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_226

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_226

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/z;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_226

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d0/u;

    .line 16
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/d0/u;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/e0/g;->H(Lcom/github/catvod/spider/merge/V/g;)V

    goto :goto_20c

    :cond_226
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_233
    move-object p1, v0

    :goto_234
    return-object p1
.end method

.method public final b(Lcom/github/catvod/spider/merge/d0/f;)Ljava/lang/Object;
    .registers 5

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/h;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_4a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/K/b;

    .line 3
    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v0

    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/K/b;

    .line 5
    invoke-interface {v2, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 7
    :cond_44
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_56

    .line 8
    :cond_4a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 9
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    :goto_56
    return-object p1
.end method

.method public final c(Lcom/github/catvod/spider/merge/d0/t;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/t;->m()Lcom/github/catvod/spider/merge/d0/m;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/t;->m()Lcom/github/catvod/spider/merge/d0/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/t;->m()Lcom/github/catvod/spider/merge/d0/m;

    move-result-object p1

    goto :goto_3d

    :cond_15
    iget-object v0, p1, Lcom/github/catvod/spider/merge/d0/t;->g:Lcom/github/catvod/spider/merge/G/E;

    if-nez v0, :cond_22

    .line 2
    const-class v0, Lcom/github/catvod/spider/merge/d0/j;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/j;

    goto :goto_3d

    .line 3
    :cond_22
    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/e;->h()V

    .line 4
    :cond_35
    const-class v0, Lcom/github/catvod/spider/merge/d0/y;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/y;

    .line 5
    :goto_3d
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final d(Lcom/github/catvod/spider/merge/d0/h;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/x;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 3
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto/16 :goto_cc

    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_cd

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/K/b;

    .line 5
    invoke-interface {v1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/K/b;

    .line 7
    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/d0/h;->g:Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/E;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v4, "="

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->s()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->s()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    if-eq v1, v0, :cond_61

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :cond_61
    :goto_61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_88

    .line 10
    :cond_6b
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_7f

    if-eqz p1, :cond_7e

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :cond_7f
    :goto_7f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_88
    move-object p1, v0

    goto :goto_cc

    .line 12
    :cond_8a
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->s()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->s()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    if-eq v1, v0, :cond_a0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/e0/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    :cond_a0
    const/4 v3, 0x1

    :cond_a1
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_88

    .line 14
    :cond_ad
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_bf

    if-eqz p1, :cond_c0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    :cond_bf
    const/4 v3, 0x1

    :cond_c0
    xor-int/lit8 p1, v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_88

    :goto_cc
    return-object p1

    .line 16
    :cond_cd
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "error equalityExpr near:"

    .line 17
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    goto :goto_e5

    :goto_e4
    throw v0

    :goto_e5
    goto :goto_e4
.end method

.method public final e(Lcom/github/catvod/spider/merge/d0/y;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/y;->d()I

    move-result v2

    if-ge v1, v2, :cond_42

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/G/y;->c(I)Lcom/github/catvod/spider/merge/K/b;

    move-result-object v2

    instance-of v3, v2, Lcom/github/catvod/spider/merge/d0/z;

    if-eqz v3, :cond_24

    .line 2
    invoke-interface {v2, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge/e0/g;->H(Lcom/github/catvod/spider/merge/V/g;)V

    goto :goto_3f

    :cond_24
    invoke-interface {v2}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "//"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/e;->h()V

    goto :goto_3f

    :cond_38
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/e;->g()V

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_42
    return-object v0
.end method

.method public final f(Lcom/github/catvod/spider/merge/d0/r;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/q;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/d0/q;

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/q;

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/q;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_34

    :cond_17
    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/j0/a;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/d;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/catvod/spider/merge/e0/d;->a(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/f;

    move-result-object p1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    return-object p1
.end method

.method public final g(Lcom/github/catvod/spider/merge/d0/v;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->m()Lcom/github/catvod/spider/merge/d0/i;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->m()Lcom/github/catvod/spider/merge/d0/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->m()Lcom/github/catvod/spider/merge/d0/i;

    move-result-object p1

    goto :goto_29

    :cond_15
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->n()Lcom/github/catvod/spider/merge/d0/k;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->n()Lcom/github/catvod/spider/merge/d0/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/v;->n()Lcom/github/catvod/spider/merge/d0/k;

    move-result-object p1

    .line 2
    :goto_29
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_67

    :cond_30
    const/16 v0, 0x27

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->j()Lcom/github/catvod/spider/merge/e0/f;

    :goto_48
    move-object p1, v0

    goto :goto_67

    :cond_4a
    const/4 v0, 0x6

    .line 8
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5d

    const/4 p1, 0x0

    goto :goto_61

    .line 10
    :cond_5d
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    .line 11
    :goto_61
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_48

    :goto_67
    return-object p1

    .line 12
    :cond_68
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "not support variableReference:"

    .line 13
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public final i(Lcom/github/catvod/spider/merge/d0/C;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/J/a;->v(Lcom/github/catvod/spider/merge/K/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/github/catvod/spider/merge/d0/c;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 2
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_4d

    .line 3
    :cond_3f
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_4d
    return-object p1
.end method

.method public final k(Lcom/github/catvod/spider/merge/d0/B;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/B;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/B;->m()Lcom/github/catvod/spider/merge/d0/t;

    move-result-object v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/B;->m()Lcom/github/catvod/spider/merge/d0/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v1

    if-nez v1, :cond_20

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/B;

    .line 3
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/B;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto/16 :goto_1c4

    :cond_20
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/B;->m()Lcom/github/catvod/spider/merge/d0/t;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge/d0/t;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v2, p1, Lcom/github/catvod/spider/merge/d0/B;->g:Lcom/github/catvod/spider/merge/G/E;

    if-nez v2, :cond_2f

    goto :goto_7e

    :cond_2f
    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/e;->e()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/e0/e;->d(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/B;

    .line 8
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/B;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    const-string v2, "V"

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_7e

    :cond_6b
    new-instance v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->Q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_7e
    move-object p1, v1

    goto/16 :goto_1c4

    :cond_81
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->r()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_94

    new-instance v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_162

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_b0
    move-object p1, v0

    goto/16 :goto_1c4

    .line 11
    :cond_b3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->l()Z

    move-result v0

    const-string v3, ",val2="

    const-string v4, "can not merge val1="

    if-eqz v0, :cond_12d

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->l()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_b0

    .line 13
    :cond_de
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_eb

    new-instance v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    goto/16 :goto_162

    :cond_eb
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->r()Z

    move-result v0

    if-eqz v0, :cond_10e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_b0

    .line 15
    :cond_10e
    new-instance v0, Lcom/github/catvod/spider/merge/Q/a;

    .line 16
    invoke-static {v4}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/Q/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12d
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->q()Z

    move-result v0

    if-eqz v0, :cond_190

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->r()Z

    move-result v0

    if-eqz v0, :cond_157

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_b0

    .line 19
    :cond_157
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_171

    new-instance v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    :goto_162
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->Q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1c4

    :cond_171
    new-instance v0, Lcom/github/catvod/spider/merge/Q/a;

    .line 20
    invoke-static {v4}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/Q/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/L/h;->d(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1a6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/L/h;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1b7
    const-string p1, ","

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/L/h;->e(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_b0

    :goto_1c4
    return-object p1
.end method

.method public final l(Lcom/github/catvod/spider/merge/d0/A;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/B;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d0/B;

    .line 2
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/d0/B;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/d0/A;->g:Lcom/github/catvod/spider/merge/G/E;

    if-nez p1, :cond_13

    goto :goto_25

    :cond_13
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_25
    return-object v0
.end method

.method public final m(Lcom/github/catvod/spider/merge/d0/e;)Ljava/lang/Object;
    .registers 10

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/o;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 3
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto/16 :goto_98

    :cond_1c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/K/b;

    .line 5
    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/y;->d()I

    move-result v3

    if-ge v2, v3, :cond_93

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/G/y;->c(I)Lcom/github/catvod/spider/merge/K/b;

    move-result-object v3

    instance-of v4, v3, Lcom/github/catvod/spider/merge/d0/o;

    if-eqz v4, :cond_8c

    .line 7
    invoke-interface {v3, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Lcom/github/catvod/spider/merge/e0/f;

    const-string v4, "+"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_90

    :cond_5b
    const-string v4, "-"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_90

    :cond_75
    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "syntax error, "

    .line 9
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    invoke-interface {v3}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 11
    :cond_93
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    :goto_98
    return-object p1
.end method

.method public final n(Lcom/github/catvod/spider/merge/d0/s;)Ljava/lang/Object;
    .registers 5

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/f;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_4a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/K/b;

    .line 3
    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v0

    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/K/b;

    .line 5
    invoke-interface {v2, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 7
    :cond_44
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v0}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_56

    .line 8
    :cond_4a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 9
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    :goto_56
    return-object p1
.end method

.method public final o(Lcom/github/catvod/spider/merge/d0/w;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/p;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_40

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/d0/p;

    .line 3
    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge/d0/p;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_34
    const-string p1, ":"

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/L/h;->e(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_50

    :cond_40
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/K/b;

    .line 7
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return-object v0
.end method

.method public final p(Lcom/github/catvod/spider/merge/d0/q;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    new-instance p1, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->j()Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_46

    :cond_15
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->n()Lcom/github/catvod/spider/merge/d0/w;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->n()Lcom/github/catvod/spider/merge/d0/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->n()Lcom/github/catvod/spider/merge/d0/w;

    move-result-object p1

    goto :goto_3e

    :cond_2a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->m()Lcom/github/catvod/spider/merge/d0/p;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->m()Lcom/github/catvod/spider/merge/d0/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/q;->m()Lcom/github/catvod/spider/merge/d0/p;

    move-result-object p1

    .line 4
    :goto_3e
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    return-object p1
.end method

.method public final q(Lcom/github/catvod/spider/merge/d0/k;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    const-class v1, Lcom/github/catvod/spider/merge/d0/l;

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/d0/l;

    .line 3
    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge/d0/l;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    .line 5
    const-class v2, Lcom/github/catvod/spider/merge/d0/i;

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/G/y;->k(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/d0/i;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/e0/e;->d(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, p0}, Lcom/github/catvod/spider/merge/d0/i;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1d

    :cond_43
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/j0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/github/catvod/spider/merge/e0/c;->a(Lcom/github/catvod/spider/merge/e0/e;Ljava/util/List;)Lcom/github/catvod/spider/merge/e0/f;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/github/catvod/spider/merge/d0/u;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    iget-object v4, v0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-static {v3}, Lcom/github/catvod/spider/merge/e0/e;->b(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/e0/e;->j(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v4, Lcom/github/catvod/spider/merge/d0/i;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/d0/i;

    .line 3
    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/d0/i;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v6, v0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->q()Z

    move-result v6

    if-eqz v6, :cond_114

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->f()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v4, "JX_TEXT"

    const-wide/16 v8, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    cmp-long v15, v6, v12

    if-gez v15, :cond_da

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v15

    if-eq v15, v4, :cond_6e

    if-eqz v15, :cond_6c

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 v15, 0x0

    goto :goto_6f

    :cond_6e
    :goto_6e
    const/4 v15, 0x1

    :goto_6f
    if-eqz v15, :cond_89

    const-string v15, "EL_SAME_TAG_ALL_NUM"

    .line 5
    invoke-virtual {v3, v15}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/github/catvod/spider/merge/L/h;->b(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7f

    const/4 v15, -0x1

    goto :goto_83

    :cond_7f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_83
    int-to-long v10, v15

    add-long/2addr v10, v6

    add-long/2addr v10, v8

    move-wide v6, v10

    move-wide v10, v12

    goto :goto_d5

    .line 6
    :cond_89
    invoke-direct/range {p0 .. p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v10

    .line 7
    new-instance v11, Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {v11}, Lcom/github/catvod/spider/merge/V/g;-><init>()V

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v15

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static/range {v17 .. v17}, Lcom/github/catvod/spider/merge/R/c;->g(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lcom/github/catvod/spider/merge/n/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/github/catvod/spider/merge/V/s;

    invoke-direct {v13, v12, v14}, Lcom/github/catvod/spider/merge/V/s;-><init>(Ljava/lang/String;I)V

    invoke-static {v13, v15}, Lcom/github/catvod/spider/merge/V/c;->a(Lcom/github/catvod/spider/merge/V/N;Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v12

    .line 9
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b1
    :goto_b1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_cb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b1

    invoke-virtual {v11, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_cb
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v6

    add-long/2addr v10, v8

    move-wide v6, v10

    const-wide/16 v10, 0x0

    :goto_d5
    cmp-long v12, v6, v10

    if-gez v12, :cond_da

    move-wide v6, v8

    .line 10
    :cond_da
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->u0()Ljava/lang/String;

    move-result-object v8

    if-eq v8, v4, :cond_eb

    if-eqz v8, :cond_e9

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    goto :goto_eb

    :cond_e9
    const/4 v11, 0x0

    goto :goto_ec

    :cond_eb
    :goto_eb
    const/4 v11, 0x1

    :goto_ec
    if-eqz v11, :cond_106

    const-string v4, "EL_SAME_TAG_INDEX"

    .line 11
    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/L/h;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fc

    const/4 v10, -0x1

    goto :goto_100

    :cond_fc
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_100
    int-to-long v8, v10

    cmp-long v4, v6, v8

    if-nez v4, :cond_13

    goto :goto_157

    .line 12
    :cond_106
    invoke-direct/range {p0 .. p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge/n/a;->c(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/e0/e;)I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-nez v4, :cond_13

    goto :goto_157

    :cond_114
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->l()Z

    move-result v6

    if-eqz v6, :cond_125

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->a()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_157

    :cond_125
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->r()Z

    move-result v6

    if-eqz v6, :cond_136

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/L/h;->d(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_157

    :cond_136
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->n()Z

    move-result v6

    if-eqz v6, :cond_147

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->d()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-lez v4, :cond_13

    goto :goto_157

    :cond_147
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->p()Z

    move-result v6

    if-eqz v6, :cond_15c

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e0/f;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    :goto_157
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_15c
    new-instance v1, Lcom/github/catvod/spider/merge/o/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown expr val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_173
    new-instance v2, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public final s(Lcom/github/catvod/spider/merge/d0/p;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_24

    :cond_15
    const/16 v0, 0x29

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->l(I)Lcom/github/catvod/spider/merge/K/f;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/K/b;->getText()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    .line 7
    :goto_24
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->j()Lcom/github/catvod/spider/merge/e0/f;

    return-object v0
.end method

.method public final t(Lcom/github/catvod/spider/merge/d0/m;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/m;->m()Lcom/github/catvod/spider/merge/d0/y;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/m;->m()Lcom/github/catvod/spider/merge/d0/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/m;->m()Lcom/github/catvod/spider/merge/d0/y;

    move-result-object p1

    goto :goto_1d

    .line 2
    :cond_15
    const-class v0, Lcom/github/catvod/spider/merge/d0/d;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/d;

    .line 3
    :goto_1d
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/K/b;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final u(Lcom/github/catvod/spider/merge/d0/l;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/w;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/w;

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/w;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final w(Lcom/github/catvod/spider/merge/d0/d;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/e0/g;->b:Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/e;->a()Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/e0/e;->c(Lcom/github/catvod/spider/merge/V/g;)Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/e0/e;->j(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/e;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/github/catvod/spider/merge/d0/d;->g:Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/G/E;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_29

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    if-eqz v0, :cond_35

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/e0/g;->G()Lcom/github/catvod/spider/merge/e0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/e;->h()V

    .line 2
    :cond_35
    const-class v0, Lcom/github/catvod/spider/merge/d0/y;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/y;

    .line 3
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/y;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e0/g;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object p1
.end method

.method public final x(Lcom/github/catvod/spider/merge/d0/i;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/s;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/s;

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/s;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final y(Lcom/github/catvod/spider/merge/d0/n;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/i;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/i;

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/i;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge/e0/f;

    return-object p1
.end method

.method public final z(Lcom/github/catvod/spider/merge/d0/o;)Ljava/lang/Object;
    .registers 6

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge/d0/A;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/o;->m()Lcom/github/catvod/spider/merge/d0/o;

    move-result-object v1

    if-eqz v1, :cond_9c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/o;->m()Lcom/github/catvod/spider/merge/d0/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/G/D;->f()Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_9c

    .line 2
    :cond_14
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d0/A;

    .line 3
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/d0/A;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d0/o;->m()Lcom/github/catvod/spider/merge/d0/o;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge/d0/o;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/github/catvod/spider/merge/e0/f;

    iget-object v2, p1, Lcom/github/catvod/spider/merge/d0/o;->g:Lcom/github/catvod/spider/merge/G/E;

    invoke-interface {v2}, Lcom/github/catvod/spider/merge/G/E;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_aa

    new-instance v0, Lcom/github/catvod/spider/merge/o/u;

    const-string v1, "syntax error, "

    .line 7
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/G/D;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/o/u;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4a
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    rem-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_a9

    .line 10
    :pswitch_65
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_a9

    .line 12
    :pswitch_80
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/e0/f;->c()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    goto :goto_a9

    .line 14
    :cond_9c
    :goto_9c
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/G/y;->j(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/G/y;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d0/A;

    .line 15
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/d0/A;->a(Lcom/github/catvod/spider/merge/K/d;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge/e0/f;

    :goto_a9
    return-object v0

    :pswitch_data_aa
    .packed-switch 0x11
        :pswitch_80
        :pswitch_65
        :pswitch_4a
    .end packed-switch
.end method
