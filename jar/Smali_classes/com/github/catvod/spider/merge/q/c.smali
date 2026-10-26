.class final Lcom/github/catvod/spider/merge/q/c;
.super Lcom/github/catvod/spider/merge/q/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/q/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/github/catvod/spider/merge/q/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/github/catvod/spider/merge/q/e;-><init>(Lcom/github/catvod/spider/merge/q/a;Ljava/lang/Character;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/q/a;->a(Lcom/github/catvod/spider/merge/q/a;)[C

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-static {p1}, Lcom/github/catvod/spider/merge/o/m;->b(Z)V

    return-void
.end method


# virtual methods
.method final c([BLjava/lang/CharSequence;)I
    .registers 8

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/q/e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/q/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_7a

    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x12

    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_77

    iget-object v1, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v3, v2, :cond_75

    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/e;->b:Lcom/github/catvod/spider/merge/q/a;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/q/a;->b(C)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_77

    :cond_75
    move v0, v3

    goto :goto_12

    :cond_77
    :goto_77
    move v1, v2

    move v0, v4

    goto :goto_12

    :cond_7a
    return v1

    :cond_7b
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

    goto :goto_99

    :goto_98
    throw p1

    :goto_99
    goto :goto_98
.end method
