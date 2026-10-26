.class abstract Lcom/github/catvod/spider/merge/P/n;
.super Lcom/github/catvod/spider/merge/P/o;
.source "SourceFile"


# instance fields
.field a:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/P/o;-><init>(Lcom/github/catvod/spider/merge/P/e;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final b(Lcom/github/catvod/spider/merge/P/t;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 7

    iget-object p1, p0, Lcom/github/catvod/spider/merge/P/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p3

    if-nez p3, :cond_1d

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return p1

    :cond_1d
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p1, p5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/github/catvod/spider/merge/P/n;->c(Ljava/util/Calendar;Ljava/lang/String;)V

    return p5
.end method

.method abstract c(Ljava/util/Calendar;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
