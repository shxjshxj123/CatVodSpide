.class final enum Lcom/github/catvod/spider/merge/U/V;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RCDATAEndTagOpen"

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->H()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->h(Z)Lcom/github/catvod/spider/merge/U/O;

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/O;->p(C)V

    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->m:Lcom/github/catvod/spider/merge/U/W;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->a(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_2c

    :cond_22
    const-string p2, "</"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->l(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->c:Lcom/github/catvod/spider/merge/U/z0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :goto_2c
    return-void
.end method
