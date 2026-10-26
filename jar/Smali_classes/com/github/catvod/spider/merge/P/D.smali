.class final Lcom/github/catvod/spider/merge/P/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/P/z;


# instance fields
.field private final a:Ljava/util/Locale;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/github/catvod/spider/merge/L/c;->a(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/P/D;->a:Ljava/util/Locale;

    iput p3, p0, Lcom/github/catvod/spider/merge/P/D;->b:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2}, Lcom/github/catvod/spider/merge/P/N;->h(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/P/D;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0, p3, p2}, Lcom/github/catvod/spider/merge/P/N;->h(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/D;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_e

    const/4 p2, 0x0

    goto :goto_f

    :cond_e
    const/4 p2, 0x1

    :goto_f
    iget v1, p0, Lcom/github/catvod/spider/merge/P/D;->b:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/D;->a:Ljava/util/Locale;

    invoke-static {v0, p2, v1, v2}, Lcom/github/catvod/spider/merge/P/N;->h(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final c()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/D;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/D;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
