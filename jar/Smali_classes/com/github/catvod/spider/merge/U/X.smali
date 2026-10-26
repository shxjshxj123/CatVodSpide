.class final enum Lcom/github/catvod/spider/merge/U/X;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RawtextLessthanSign"

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->i()V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->o:Lcom/github/catvod/spider/merge/U/Y;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_1b

    :cond_11
    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->e:Lcom/github/catvod/spider/merge/U/V0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_1b
    return-void
.end method
