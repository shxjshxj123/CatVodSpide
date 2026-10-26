.class public final Lcom/github/catvod/spider/merge/F/c;
.super Lcom/github/catvod/spider/merge/F/i;
.source "SourceFile"


# direct methods
.method public static c(Ljava/lang/CharSequence;)Z
    .registers 3

    const-string v0, "getsockname failed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/github/catvod/spider/merge/F/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public static d(Ljava/lang/CharSequence;II)I
    .registers 3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p0, Ljava/lang/String;

    const/16 p2, 0x2e

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/github/catvod/spider/merge/F/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_49

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_10

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ltz v5, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :cond_23
    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_32

    goto :goto_39

    :cond_32
    add-int/2addr v1, v3

    invoke-static {p0, p1, v1, v0}, Lcom/github/catvod/spider/merge/F/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-gtz v1, :cond_23

    :goto_39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p0, v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "stringBuilder.append(this, i, length).toString()"

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_49
    return-object p0

    :cond_4a
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto :goto_51

    :goto_50
    throw p0

    :goto_51
    goto :goto_50
.end method
