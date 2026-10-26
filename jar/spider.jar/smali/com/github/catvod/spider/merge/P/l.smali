.class final Lcom/github/catvod/spider/merge/P/l;
.super Lcom/github/catvod/spider/merge/P/n;
.source "SourceFile"


# static fields
.field private static final b:Lcom/github/catvod/spider/merge/P/l;

.field private static final c:Lcom/github/catvod/spider/merge/P/l;

.field private static final d:Lcom/github/catvod/spider/merge/P/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/P/l;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/P/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/l;->b:Lcom/github/catvod/spider/merge/P/l;

    new-instance v0, Lcom/github/catvod/spider/merge/P/l;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/P/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/l;->c:Lcom/github/catvod/spider/merge/P/l;

    new-instance v0, Lcom/github/catvod/spider/merge/P/l;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/P/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/l;->d:Lcom/github/catvod/spider/merge/P/l;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/P/n;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/P/n;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic d()Lcom/github/catvod/spider/merge/P/o;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/P/l;->d:Lcom/github/catvod/spider/merge/P/l;

    return-object v0
.end method

.method static e(I)Lcom/github/catvod/spider/merge/P/o;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/github/catvod/spider/merge/P/l;->d:Lcom/github/catvod/spider/merge/P/l;

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    sget-object p0, Lcom/github/catvod/spider/merge/P/l;->c:Lcom/github/catvod/spider/merge/P/l;

    return-object p0

    :cond_17
    sget-object p0, Lcom/github/catvod/spider/merge/P/l;->b:Lcom/github/catvod/spider/merge/P/l;

    return-object p0
.end method


# virtual methods
.method final c(Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 3

    invoke-static {p2}, Lcom/github/catvod/spider/merge/P/O;->a(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
