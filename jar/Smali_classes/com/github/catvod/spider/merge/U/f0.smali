.class final enum Lcom/github/catvod/spider/merge/U/f0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscapeStartDash"

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 4

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->E(C)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->x:Lcom/github/catvod/spider/merge/U/i0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_16

    :cond_11
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->f:Lcom/github/catvod/spider/merge/U/e1;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_16
    return-void
.end method
