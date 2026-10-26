.class final enum Lcom/github/catvod/spider/merge/U/h1;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "EndTagOpen"

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    const-string p2, "</"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3f

    :cond_14
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->H()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->h(Z)Lcom/github/catvod/spider/merge/U/O;

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->j:Lcom/github/catvod/spider/merge/U/T;

    goto :goto_3c

    :cond_21
    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/U/a;->E(C)Z

    move-result p2

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    if-eqz p2, :cond_30

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3f

    :cond_30
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->f()V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/J;->k(C)Lcom/github/catvod/spider/merge/U/J;

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->Q:Lcom/github/catvod/spider/merge/U/D0;

    :goto_3c
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_3f
    return-void
.end method
