.class final enum Lcom/github/catvod/spider/merge/U/g1;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "TagOpen"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_28

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->H()Z

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->h(Z)Lcom/github/catvod/spider/merge/U/O;

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->j:Lcom/github/catvod/spider/merge/U/T;

    goto :goto_2d

    :cond_1d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    goto :goto_2d

    :cond_28
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->f()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->Q:Lcom/github/catvod/spider/merge/U/D0;

    :goto_2d
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_39

    :cond_31
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->i:Lcom/github/catvod/spider/merge/U/h1;

    goto :goto_36

    :cond_34
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->R:Lcom/github/catvod/spider/merge/U/E0;

    :goto_36
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_39
    return-void
.end method
