.class public final Lcom/github/catvod/spider/merge/L/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_f
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1e
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2d

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;I)Z
    .registers 12

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_17

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_17

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    if-ltz p2, :cond_5e

    if-gez p4, :cond_27

    goto :goto_5e

    :cond_27
    if-lt v0, p4, :cond_5e

    if-ge v1, p4, :cond_2c

    goto :goto_5e

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_5c

    add-int/lit8 p4, p2, 0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p2, v0, :cond_40

    goto :goto_58

    :cond_40
    if-nez p1, :cond_43

    return v2

    :cond_43
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq p2, v0, :cond_58

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq p2, v0, :cond_58

    return v2

    :cond_58
    :goto_58
    move p2, p4

    move p4, v1

    move v0, v3

    goto :goto_2d

    :cond_5c
    const/4 p0, 0x1

    return p0

    :cond_5e
    :goto_5e
    return v2
.end method
