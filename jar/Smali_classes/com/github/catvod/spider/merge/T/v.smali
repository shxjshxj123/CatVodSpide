.class public Lcom/github/catvod/spider/merge/T/v;
.super Lcom/github/catvod/spider/merge/T/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/T/q;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/T/q;->d:Ljava/lang/Object;

    return-void
.end method

.method static N(Ljava/lang/StringBuilder;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method


# virtual methods
.method public K()Lcom/github/catvod/spider/merge/T/v;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/T/s;->j()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/v;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M()Z
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/S/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/v;->K()Lcom/github/catvod/spider/merge/T/v;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic j()Lcom/github/catvod/spider/merge/T/s;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/v;->K()Lcom/github/catvod/spider/merge/T/v;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/github/catvod/spider/merge/T/s;
    .registers 1

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    const-string v0, "#text"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
    .registers 16

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/g;->g()Z

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    instance-of v2, v1, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    invoke-static {v1}, Lcom/github/catvod/spider/merge/T/m;->n0(Lcom/github/catvod/spider/merge/T/s;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v9, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v9, 0x0

    :goto_1c
    if-eqz v9, :cond_91

    iget v0, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    if-nez v0, :cond_2e

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->t0()Lcom/github/catvod/spider/merge/U/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/G;->c()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_2e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/T/s;->a:Lcom/github/catvod/spider/merge/T/s;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/T/h;

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v1

    if-nez v1, :cond_4b

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->t0()Lcom/github/catvod/spider/merge/U/G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/G;->c()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/s;->s()Lcom/github/catvod/spider/merge/T/s;

    move-result-object v5

    instance-of v6, v5, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v6, :cond_5d

    move-object v6, v5

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6, p3}, Lcom/github/catvod/spider/merge/T/m;->r0(Lcom/github/catvod/spider/merge/T/g;)Z

    move-result v6

    if-nez v6, :cond_6b

    :cond_5d
    instance-of v6, v5, Lcom/github/catvod/spider/merge/T/v;

    if-eqz v6, :cond_6a

    check-cast v5, Lcom/github/catvod/spider/merge/T/v;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/T/v;->M()Z

    move-result v5

    if-eqz v5, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v3, 0x0

    :cond_6b
    :goto_6b
    if-eqz v3, :cond_74

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/v;->M()Z

    move-result v3

    if-eqz v3, :cond_74

    return-void

    :cond_74
    iget v3, p0, Lcom/github/catvod/spider/merge/T/s;->b:I

    if-nez v3, :cond_8e

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->t0()Lcom/github/catvod/spider/merge/U/G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/U/G;->a()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/v;->M()Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_8e

    :cond_8b
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/T/s;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V

    :cond_8e
    :goto_8e
    move v10, v0

    move v11, v1

    goto :goto_93

    :cond_91
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_93
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/T/q;->I()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v11}, Lcom/github/catvod/spider/merge/T/o;->d(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/g;ZZZZ)V

    return-void
.end method

.method x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge/T/g;)V
    .registers 4

    return-void
.end method
