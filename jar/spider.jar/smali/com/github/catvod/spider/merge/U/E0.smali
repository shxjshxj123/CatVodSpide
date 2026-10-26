.class final enum Lcom/github/catvod/spider/merge/U/E0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "MarkupDeclarationOpen"

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 4

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1
    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->n:Lcom/github/catvod/spider/merge/U/J;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/J;->h()Lcom/github/catvod/spider/merge/U/P;

    .line 2
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->S:Lcom/github/catvod/spider/merge/U/F0;

    goto :goto_31

    :cond_10
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->Y:Lcom/github/catvod/spider/merge/U/M0;

    goto :goto_31

    :cond_1b
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->C(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->o0:Lcom/github/catvod/spider/merge/U/d1;

    goto :goto_31

    :cond_29
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->f()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->Q:Lcom/github/catvod/spider/merge/U/D0;

    :goto_31
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    return-void
.end method
