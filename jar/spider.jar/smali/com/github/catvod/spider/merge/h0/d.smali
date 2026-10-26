.class public final Lcom/github/catvod/spider/merge/h0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/e0/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/f;
    .registers 5

    const-string v0, "allText"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/j0/a;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/catvod/spider/merge/e0/d;->a(Lcom/github/catvod/spider/merge/e0/e;)Lcom/github/catvod/spider/merge/e0/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e0/f;->e()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/L/h;->e(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/github/catvod/spider/merge/e0/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_46

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2
    :cond_46
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_54
    const/4 p1, 0x0

    new-instance v0, Lcom/github/catvod/spider/merge/e0/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/e0/f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    const-string v0, "num"

    return-object v0
.end method
