.class final enum Lcom/github/catvod/spider/merge/U/U;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RcdataLessthanSign"

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->E(C)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->l:Lcom/github/catvod/spider/merge/U/V;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_45

    :cond_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->H()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3b

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->h(Z)Lcom/github/catvod/spider/merge/U/O;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/O;->v(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/O;

    iput-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->p()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->h:Lcom/github/catvod/spider/merge/U/g1;

    goto :goto_42

    :cond_3b
    const-string p2, "<"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->c:Lcom/github/catvod/spider/merge/U/z0;

    :goto_42
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_45
    return-void
.end method
