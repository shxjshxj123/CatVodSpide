.class final enum Lcom/github/catvod/spider/merge/U/b1;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterDoctypeSystemIdentifier"

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3a

    const/16 v1, 0xa

    if-eq p2, v1, :cond_3a

    const/16 v1, 0xc

    if-eq p2, v1, :cond_3a

    const/16 v1, 0xd

    if-eq p2, v1, :cond_3a

    const/16 v1, 0x20

    if-eq p2, v1, :cond_3a

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_34

    const v1, 0xffff

    if-eq p2, v1, :cond_2c

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->n0:Lcom/github/catvod/spider/merge/U/c1;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_3a

    :cond_2c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge/U/S;->m:Lcom/github/catvod/spider/merge/U/K;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge/U/K;->h:Z

    :cond_34
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/U/S;->o()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    :cond_3a
    :goto_3a
    return-void
.end method
