.class Lcom/github/catvod/spider/merge/P/m;
.super Lcom/github/catvod/spider/merge/P/o;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/P/o;-><init>(Lcom/github/catvod/spider/merge/P/e;)V

    iput p1, p0, Lcom/github/catvod/spider/merge/P/m;->a:I

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final b(Lcom/github/catvod/spider/merge/P/t;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 8

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p5, :cond_1e

    :goto_a
    if-ge v0, v1, :cond_1a

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p5

    if-nez p5, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    :goto_1a
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_22

    :cond_1e
    add-int/2addr p5, v0

    if-le v1, p5, :cond_22

    move v1, p5

    :cond_22
    :goto_22
    if-ge v0, v1, :cond_32

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->isDigit(C)Z

    move-result p5

    if-nez p5, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    if-ne p5, v0, :cond_3d

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return p1

    :cond_3d
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    invoke-virtual {p3, p5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    iget p4, p0, Lcom/github/catvod/spider/merge/P/m;->a:I

    invoke-virtual {p0, p1, p3}, Lcom/github/catvod/spider/merge/P/m;->c(Lcom/github/catvod/spider/merge/P/t;I)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    return p1
.end method

.method c(Lcom/github/catvod/spider/merge/P/t;I)I
    .registers 3

    return p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "NumberStrategy [field="

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge/P/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
