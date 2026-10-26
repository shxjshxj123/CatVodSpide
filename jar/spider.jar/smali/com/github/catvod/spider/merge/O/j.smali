.class public final Lcom/github/catvod/spider/merge/O/j;
.super Lcom/github/catvod/spider/merge/O/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/b;-><init>()V

    return-void
.end method

.method private b(C)Z
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x37

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_77

    if-lez v0, :cond_77

    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/merge/O/j;->b(C)Z

    move-result v5

    if-eqz v5, :cond_77

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 p2, p2, 0x3

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v0, v1, :cond_64

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/github/catvod/spider/merge/O/j;->b(C)Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    if-le v0, v5, :cond_64

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_51

    const/16 v3, 0x33

    if-gt v0, v3, :cond_51

    const/4 v4, 0x1

    :cond_51
    if-eqz v4, :cond_64

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/O/j;->b(C)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_77
    return v4
.end method
