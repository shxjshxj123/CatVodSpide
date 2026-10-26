.class public final Lcom/github/catvod/spider/merge/P/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/TimeZone;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/P/O;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/github/catvod/spider/merge/P/Q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/github/catvod/spider/merge/P/Q;-><init>(ZII)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/O;->b:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 7

    const-string v0, "Z"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "UTC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_57

    :cond_11
    sget-object v0, Lcom/github/catvod/spider/merge/P/O;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    if-nez v0, :cond_3f

    if-nez v2, :cond_3f

    .line 4
    sget-object p0, Lcom/github/catvod/spider/merge/P/O;->b:Ljava/util/TimeZone;

    return-object p0

    :cond_3f
    new-instance v3, Lcom/github/catvod/spider/merge/P/Q;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v5, 0x2d

    if-ne p0, v5, :cond_51

    const/4 v1, 0x1

    .line 6
    :cond_51
    invoke-direct {v3, v1, v0, v2}, Lcom/github/catvod/spider/merge/P/Q;-><init>(ZII)V

    return-object v3

    :cond_55
    const/4 p0, 0x0

    return-object p0

    :cond_57
    :goto_57
    sget-object p0, Lcom/github/catvod/spider/merge/P/O;->b:Ljava/util/TimeZone;

    return-object p0
.end method
