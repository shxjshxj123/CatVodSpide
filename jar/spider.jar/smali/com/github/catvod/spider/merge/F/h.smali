.class Lcom/github/catvod/spider/merge/F/h;
.super Lcom/github/catvod/spider/merge/F/g;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 5

    if-nez p3, :cond_e

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_16

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/github/catvod/spider/merge/F/h;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)I

    move-result p0

    :goto_16
    return p0
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)I
    .registers 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-gez p2, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    new-instance v2, Lcom/github/catvod/spider/merge/E/c;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le p3, v3, :cond_e

    move p3, v3

    :cond_e
    invoke-direct {v2, p2, p3}, Lcom/github/catvod/spider/merge/E/c;-><init>(II)V

    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4b

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4b

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->a()I

    move-result p2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->b()I

    move-result p3

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->c()I

    move-result v2

    if-ltz v2, :cond_2a

    if-gt p2, p3, :cond_97

    goto :goto_2c

    :cond_2a
    if-lt p2, p3, :cond_97

    :goto_2c
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez p4, :cond_3d

    .line 2
    invoke-virtual {v3, v1, v6, p2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    goto :goto_44

    :cond_3d
    const/4 v5, 0x0

    move v4, p4

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    :goto_44
    if-eqz v3, :cond_47

    goto :goto_91

    :cond_47
    if-eq p2, p3, :cond_97

    add-int/2addr p2, v2

    goto :goto_2c

    .line 3
    :cond_4b
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->a()I

    move-result p2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->b()I

    move-result p3

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/E/a;->c()I

    move-result v2

    if-ltz v2, :cond_5c

    if-gt p2, p3, :cond_97

    goto :goto_5e

    :cond_5c
    if-lt p2, p3, :cond_97

    :goto_5e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz p2, :cond_8e

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ltz v4, :cond_8e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-le p2, v4, :cond_73

    goto :goto_8e

    :cond_73
    const/4 v4, 0x0

    :goto_74
    if-ge v4, v3, :cond_8c

    add-int v5, v1, v4

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int v6, p2, v4

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v5, v6, p4}, Lcom/github/catvod/spider/merge/F/a;->a(CCZ)Z

    move-result v5

    if-nez v5, :cond_89

    goto :goto_8e

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    :cond_8c
    const/4 v3, 0x1

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v3, 0x0

    :goto_8f
    if-eqz v3, :cond_93

    :goto_91
    move v0, p2

    goto :goto_97

    :cond_93
    if-eq p2, p3, :cond_97

    add-int/2addr p2, v2

    goto :goto_5e

    :cond_97
    :goto_97
    return v0
.end method
