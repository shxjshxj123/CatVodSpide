.class public final Lcom/github/catvod/spider/merge/O/i;
.super Lcom/github/catvod/spider/merge/O/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/github/catvod/spider/merge/O/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/github/catvod/spider/merge/O/h;)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/b;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_b

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_11

    :cond_b
    sget-object p1, Lcom/github/catvod/spider/merge/O/h;->a:Lcom/github/catvod/spider/merge/O/h;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_11
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/O/i;->b:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v1, v3, :cond_dc

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_dc

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_dc

    add-int/lit8 p2, p2, 0x2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2d

    const/16 v3, 0x58

    if-ne v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_33

    :cond_2d
    :goto_2d
    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_32

    return v2

    :cond_32
    const/4 v1, 0x1

    :goto_33
    move v3, p2

    :goto_34
    if-ge v3, v0, :cond_69

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_46

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_66

    :cond_46
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_56

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x66

    if-le v5, v6, :cond_66

    :cond_56
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_69

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x46

    if-gt v5, v6, :cond_69

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_69
    if-eq v3, v0, :cond_75

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_75

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    if-nez v0, :cond_a4

    sget-object v5, Lcom/github/catvod/spider/merge/O/h;->a:Lcom/github/catvod/spider/merge/O/h;

    .line 1
    iget-object v6, p0, Lcom/github/catvod/spider/merge/O/i;->b:Ljava/util/EnumSet;

    if-eqz v6, :cond_86

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    const/4 v5, 0x1

    goto :goto_87

    :cond_86
    const/4 v5, 0x0

    :goto_87
    if-eqz v5, :cond_8a

    return v2

    .line 2
    :cond_8a
    sget-object v5, Lcom/github/catvod/spider/merge/O/h;->b:Lcom/github/catvod/spider/merge/O/h;

    .line 3
    iget-object v6, p0, Lcom/github/catvod/spider/merge/O/i;->b:Ljava/util/EnumSet;

    if-eqz v6, :cond_98

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    const/4 v5, 0x1

    goto :goto_99

    :cond_98
    const/4 v5, 0x0

    :goto_99
    if-nez v5, :cond_9c

    goto :goto_a4

    .line 4
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Semi-colon required at end of numeric entity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_b5

    :try_start_a6
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x10

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_c3

    :cond_b5
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0xa

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_c3} :catch_dc

    :goto_c3
    const v5, 0xffff

    if-le p1, v5, :cond_d3

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    aget-char v2, p1, v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    aget-char p1, p1, v4

    :cond_d3
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    :catch_dc
    :cond_dc
    return v2
.end method
