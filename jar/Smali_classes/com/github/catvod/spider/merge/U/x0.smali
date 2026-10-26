.class final enum Lcom/github/catvod/spider/merge/U/x0;
.super Lcom/github/catvod/spider/merge/U/i1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AttributeValue_doubleQuoted"

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/i1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/d0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge/U/S;Lcom/github/catvod/spider/merge/U/a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/U/a;->g(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/U/O;->n(Ljava/lang/String;)V

    goto :goto_16

    :cond_11
    iget-object v0, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/O;->z()V

    :goto_16
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/U/a;->f()C

    move-result p2

    if-eqz p2, :cond_4d

    const/16 v0, 0x22

    if-eq p2, v0, :cond_47

    const/16 v1, 0x26

    if-eq p2, v1, :cond_32

    const v0, 0xffff

    if-eq p2, v0, :cond_2c

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    goto :goto_55

    :cond_2c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->q(Lcom/github/catvod/spider/merge/U/i1;)V

    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->a:Lcom/github/catvod/spider/merge/U/d0;

    goto :goto_49

    :cond_32
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/github/catvod/spider/merge/U/S;->e(Ljava/lang/Character;Z)[I

    move-result-object p2

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    if-eqz p2, :cond_43

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/O;->o([I)V

    goto :goto_58

    :cond_43
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/U/O;->m(C)V

    goto :goto_58

    :cond_47
    sget-object p2, Lcom/github/catvod/spider/merge/U/i1;->O:Lcom/github/catvod/spider/merge/U/B0;

    :goto_49
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto :goto_58

    :cond_4d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/U/S;->r(Lcom/github/catvod/spider/merge/U/i1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/S;->k:Lcom/github/catvod/spider/merge/U/O;

    const p2, 0xfffd

    :goto_55
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/U/O;->m(C)V

    :goto_58
    return-void
.end method
