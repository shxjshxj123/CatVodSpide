.class final Lcom/github/catvod/spider/merge/L/f;
.super Lcom/github/catvod/spider/merge/O/b;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/L/f;->b:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/github/catvod/spider/merge/L/f;->c:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 16

    if-nez p2, :cond_9c

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_8c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_19

    goto/16 :goto_8c

    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/L/f;->c:[C

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/L/h;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    if-nez v1, :cond_32

    const/4 v3, 0x0

    goto :goto_36

    .line 2
    :cond_32
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    :goto_36
    if-nez v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    if-eqz v3, :cond_3e

    goto :goto_73

    .line 3
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v1

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    :goto_48
    if-ge v7, v3, :cond_73

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x0

    :goto_4f
    if-ge v9, v4, :cond_70

    aget-char v10, v1, v9

    if-ne v10, v8, :cond_6d

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_74

    if-ne v9, v6, :cond_5e

    goto :goto_74

    :cond_5e
    if-ge v7, v5, :cond_6d

    add-int/lit8 v10, v9, 0x1

    aget-char v10, v1, v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_6d

    goto :goto_74

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4f

    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_73
    :goto_73
    const/4 v2, 0x0

    :cond_74
    :goto_74
    if-eqz v2, :cond_8c

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/catvod/spider/merge/L/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge/L/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_8c
    :goto_8c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_90
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_9c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CsvUnescaper should never reach the [1] index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method
