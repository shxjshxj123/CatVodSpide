.class public final Lcom/github/catvod/spider/merge/L/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_6

    goto :goto_23

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    goto :goto_26

    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p0, v0, v1, p1, v2}, Lcom/github/catvod/spider/merge/L/a;->b(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_26

    :cond_23
    :goto_23
    if-ne p0, p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v1, 0x0

    goto :goto_9

    .line 1
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_9
    const/4 v2, 0x1

    if-nez v1, :cond_d

    return v2

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1e

    .line 2
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    return v2
.end method

.method public static c(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static d(Ljava/lang/CharSequence;)Z
    .registers 1

    invoke-static {p0}, Lcom/github/catvod/spider/merge/L/h;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static e(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_49

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1e

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_21

    :goto_1e
    const-string v0, ""

    goto :goto_49

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v0, :cond_30

    goto :goto_41

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    :goto_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {p1}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    if-eqz p2, :cond_56

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1a

    if-nez p1, :cond_15

    goto :goto_1a

    .line 2
    :cond_15
    invoke-static {p0, p1, v0}, Lcom/github/catvod/spider/merge/L/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, -0x1

    :goto_1b
    if-ne v2, v1, :cond_1e

    goto :goto_56

    .line 3
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, -0x1

    :goto_38
    if-eq v2, v1, :cond_4b

    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    add-int/2addr v4, v1

    if-nez v4, :cond_46

    goto :goto_4b

    .line 4
    :cond_46
    invoke-static {p0, p1, v0}, Lcom/github/catvod/spider/merge/L/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_38

    .line 5
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_56
    :goto_56
    return-object p0
.end method

.method public static i(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    const-string p0, ""

    return-object p0

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gez p2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_b
    if-gez p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1c
    if-le p1, p2, :cond_21

    const-string p0, ""

    return-object p0

    :cond_21
    const/4 v0, 0x0

    if-gez p1, :cond_25

    const/4 p1, 0x0

    :cond_25
    if-gez p2, :cond_28

    const/4 p2, 0x0

    :cond_28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
