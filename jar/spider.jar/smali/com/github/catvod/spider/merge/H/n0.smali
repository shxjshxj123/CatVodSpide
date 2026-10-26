.class public Lcom/github/catvod/spider/merge/H/n0;
.super Lcom/github/catvod/spider/merge/H/X;
.source "SourceFile"


# instance fields
.field public final c:Lcom/github/catvod/spider/merge/H/X;

.field public final d:I


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/H/X;I)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    goto :goto_16

    :cond_11
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    .line 3
    :goto_16
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/H/X;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    iput p2, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    return-void
.end method

.method public static i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    if-nez p0, :cond_a

    sget-object p0, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    return-object p0

    :cond_a
    new-instance v0, Lcom/github/catvod/spider/merge/H/n0;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/H/n0;-><init>(Lcom/github/catvod/spider/merge/H/X;I)V

    return-object v0
.end method


# virtual methods
.method public c(I)Lcom/github/catvod/spider/merge/H/X;
    .registers 2

    iget-object p1, p0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    return-object p1
.end method

.method public d(I)I
    .registers 2

    iget p1, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/n0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1
    :cond_a
    iget v1, p0, Lcom/github/catvod/spider/merge/H/X;->a:I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    check-cast p1, Lcom/github/catvod/spider/merge/H/n0;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    iget v3, p1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    if-ne v1, v3, :cond_28

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v1, :cond_28

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    iget v0, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    const-string v0, "$"

    return-object v0

    :cond_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
