.class public final Lcom/github/catvod/spider/merge/O/e;
.super Lcom/github/catvod/spider/merge/O/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/O/c;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/github/catvod/spider/merge/O/e;->b:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/github/catvod/spider/merge/O/e;->c:I

    return-void
.end method


# virtual methods
.method public final b(ILjava/io/Writer;)Z
    .registers 8

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/O/e;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_c

    iget v0, p0, Lcom/github/catvod/spider/merge/O/e;->c:I

    if-gt p1, v0, :cond_c

    const/4 v1, 0x0

    goto :goto_69

    :cond_c
    const v0, 0xffff

    const-string v3, "\\u"

    if-le p1, v0, :cond_42

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 3
    invoke-static {v3}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    aget-char v2, p1, v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char p1, p1, v1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_69

    :cond_42
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/github/catvod/spider/merge/O/b;->a:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(I)V

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    :goto_69
    return v1
.end method
