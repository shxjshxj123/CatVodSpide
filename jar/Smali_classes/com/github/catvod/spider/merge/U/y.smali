.class final enum Lcom/github/catvod/spider/merge/U/y;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Text"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto :goto_34

    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Y()Lcom/github/catvod/spider/merge/U/B;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result p1

    return p1

    :cond_24
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/P;->f()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/b;->Y()Lcom/github/catvod/spider/merge/U/B;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_34
    :goto_34
    const/4 p1, 0x1

    return p1
.end method
