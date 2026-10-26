.class final enum Lcom/github/catvod/spider/merge/U/n0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataDoubleEscaped"

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_30

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2a

    const v1, 0xffff

    if-eq v0, v1, :cond_21

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_46

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->q([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    goto :goto_45

    :cond_21
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_45

    :cond_2a
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->F:Lcom/github/catvod/spider/merge/U/r0;

    goto :goto_35

    :cond_30
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->D:Lcom/github/catvod/spider/merge/U/p0;

    :goto_35
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_45

    :cond_39
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->a()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->j(C)V

    :goto_45
    return-void

    :array_46
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
