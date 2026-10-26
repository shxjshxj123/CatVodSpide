.class final Lcom/github/catvod/spider/merge/L/e;
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

    sput-object v0, Lcom/github/catvod/spider/merge/L/e;->b:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/github/catvod/spider/merge/L/e;->c:[C

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
    .registers 15

    if-nez p2, :cond_7e

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/github/catvod/spider/merge/L/e;->c:[C

    sget v1, Lcom/github/catvod/spider/merge/L/h;->a:I

    const/4 v1, 0x0

    if-eqz p2, :cond_46

    if-nez v0, :cond_10

    goto :goto_46

    .line 1
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    array-length v4, v0

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v2, :cond_46

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v4, :cond_43

    aget-char v9, v0, v8

    if-ne v9, v7, :cond_40

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3e

    if-ne v8, v5, :cond_30

    goto :goto_3e

    :cond_30
    if-ge v6, v3, :cond_40

    add-int/lit8 v9, v8, 0x1

    aget-char v9, v0, v9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_40

    :cond_3e
    :goto_3e
    const/4 p2, 0x0

    goto :goto_47

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_46
    :goto_46
    const/4 p2, 0x1

    :goto_47
    if-eqz p2, :cond_51

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_75

    :cond_51
    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/github/catvod/spider/merge/L/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/github/catvod/spider/merge/L/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(I)V

    :goto_75
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CsvEscaper should never reach the [1] index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_87

    :goto_86
    throw p1

    :goto_87
    goto :goto_86
.end method
