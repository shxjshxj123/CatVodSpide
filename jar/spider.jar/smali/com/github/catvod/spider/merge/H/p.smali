.class public final Lcom/github/catvod/spider/merge/H/p;
.super Lcom/github/catvod/spider/merge/H/X;
.source "SourceFile"


# instance fields
.field public final c:[Lcom/github/catvod/spider/merge/H/X;

.field public final d:[I


# direct methods
.method public constructor <init>([Lcom/github/catvod/spider/merge/H/X;[I)V
    .registers 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_f

    aget-object v4, p1, v3

    invoke-static {v2, v4}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    array-length v0, p2

    :goto_10
    if-ge v1, v0, :cond_1b

    aget v3, p2, v1

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/H/X;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    return-void
.end method


# virtual methods
.method public final c(I)Lcom/github/catvod/spider/merge/H/X;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d(I)I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/p;

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
    check-cast p1, Lcom/github/catvod/spider/merge/H/p;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    iget-object v3, p1, Lcom/github/catvod/spider/merge/H/p;->d:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public final f()Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final h()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/p;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "[]"

    return-object v0

    :cond_9
    const-string v0, "["

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_10
    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v2, v2

    if-ge v1, v2, :cond_49

    if-lez v1, :cond_1c

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    aget v3, v2, v1

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_28

    const-string v2, "$"

    goto :goto_43

    :cond_28
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v2, v2, v1

    if-eqz v2, :cond_41

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_41
    const-string v2, "null"

    :goto_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_49
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
