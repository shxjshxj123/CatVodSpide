.class Lcom/github/catvod/spider/merge/q/e;
.super Lcom/github/catvod/spider/merge/q/f;
.source "SourceFile"


# instance fields
.field final b:Lcom/github/catvod/spider/merge/q/a;

.field final c:Ljava/lang/Character;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/q/a;Ljava/lang/Character;)V
    .registers 6

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/q/f;-><init>()V

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/q/a;->e(C)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    if-eqz p1, :cond_1c

    iput-object p2, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    return-void

    .line 2
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Padding character %s was already in alphabet"

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/o/s;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method c([BLjava/lang/CharSequence;)I
    .registers 16

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/q/e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/q/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_65

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1d
    iget-object v7, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    iget v8, v7, Lcom/github/catvod/spider/merge/q/a;->d:I

    if-ge v5, v8, :cond_41

    iget v7, v7, Lcom/github/catvod/spider/merge/q/a;->c:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_3e

    iget-object v7, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_41
    iget v5, v7, Lcom/github/catvod/spider/merge/q/a;->e:I

    mul-int/lit8 v8, v5, 0x8

    iget v7, v7, Lcom/github/catvod/spider/merge/q/a;->c:I

    mul-int v6, v6, v7

    sub-int/2addr v8, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    :goto_4e
    if-lt v5, v8, :cond_5f

    add-int/lit8 v6, v2, 0x1

    ushr-long v9, v3, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v7, v9

    int-to-byte v7, v7

    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, -0x8

    move v2, v6

    goto :goto_4e

    :cond_5f
    iget-object v3, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    iget v3, v3, Lcom/github/catvod/spider/merge/q/a;->d:I

    add-int/2addr v1, v3

    goto :goto_13

    :cond_65
    return v2

    :cond_66
    new-instance p1, Lcom/github/catvod/spider/merge/q/d;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid input length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/github/catvod/spider/merge/q/d;-><init>(Ljava/lang/String;)V

    goto :goto_84

    :goto_83
    throw p1

    :goto_84
    goto :goto_83
.end method

.method final d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_1e

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/github/catvod/spider/merge/q/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/github/catvod/spider/merge/q/e;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    iget-object v2, p1, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/q/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/N/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/q/a;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/q/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    iget v1, v1, Lcom/github/catvod/spider/merge/q/a;->c:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2f

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    if-nez v1, :cond_20

    const-string v1, ".omitPadding()"

    goto :goto_2c

    :cond_20
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/e;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
