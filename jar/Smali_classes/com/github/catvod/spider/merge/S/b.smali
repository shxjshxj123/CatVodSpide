.class public final Lcom/github/catvod/spider/merge/S/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/lang/StringBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "           "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "            "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "             "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "              "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "               "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "                "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "                 "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "                  "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "                   "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "                    "

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/catvod/spider/merge/S/b;->a:[Ljava/lang/String;

    const-string v0, "^/((\\.{1,2}/)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/S/b;->b:Ljava/util/regex/Pattern;

    const-string v0, "^[a-zA-Z][a-zA-Z0-9+-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/S/b;->c:Ljava/util/regex/Pattern;

    const-string v0, "[\\x00-\\x1f]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/S/b;->d:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/github/catvod/spider/merge/S/a;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/S/a;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/S/b;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_52

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2a

    const/16 v8, 0x9

    if-eq v5, v8, :cond_2a

    const/16 v8, 0xa

    if-eq v5, v8, :cond_2a

    const/16 v8, 0xc

    if-eq v5, v8, :cond_2a

    const/16 v8, 0xd

    if-eq v5, v8, :cond_2a

    const/16 v8, 0xa0

    if-ne v5, v8, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v8, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v8, 0x1

    :goto_2b
    if-eqz v8, :cond_39

    if-eqz p2, :cond_31

    if-eqz v3, :cond_4c

    :cond_31
    if-eqz v4, :cond_34

    goto :goto_4c

    :cond_34
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_4c

    :cond_39
    const/16 v6, 0x200b

    if-eq v5, v6, :cond_44

    const/16 v6, 0xad

    if-ne v5, v6, :cond_42

    goto :goto_44

    :cond_42
    const/4 v6, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v6, 0x1

    :goto_45
    if-nez v6, :cond_4c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_4c
    :goto_4c
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_8

    :cond_52
    return-void
.end method

.method public static b()Ljava/lang/StringBuilder;
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/S/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1c

    :cond_16
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    :goto_1c
    return-object v0
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_20

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/S/b;->e(I)Z

    move-result v4

    if-nez v4, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    :goto_20
    return v0
.end method

.method public static e(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xc

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static f(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    const-string p0, ""

    goto :goto_39

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object p0, v0

    goto :goto_39

    .line 2
    :cond_1d
    invoke-static {}, Lcom/github/catvod/spider/merge/S/b;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 6
    :cond_35
    invoke-static {v1}, Lcom/github/catvod/spider/merge/S/b;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    :goto_39
    return-object p0
.end method

.method public static g(II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "width must be >= 0"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/R/c;->f(ZLjava/lang/String;)V

    const/4 v2, -0x1

    if-lt p1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    if-eq p1, v2, :cond_1a

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_1a
    sget-object p1, Lcom/github/catvod/spider/merge/S/b;->a:[Ljava/lang/String;

    const/16 v0, 0x15

    if-ge p0, v0, :cond_23

    aget-object p0, p1, p0

    return-object p0

    :cond_23
    new-array p1, p0, [C

    :goto_25
    if-ge v1, p0, :cond_2e

    const/16 v0, 0x20

    aput-char v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2e
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/github/catvod/spider/merge/R/c;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_15

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1d

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1d
    sget-object v1, Lcom/github/catvod/spider/merge/S/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/16 v2, 0x8

    if-le p0, v2, :cond_34

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_28

    :cond_34
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/github/catvod/spider/merge/S/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/github/catvod/spider/merge/S/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_d} :catch_16

    :try_start_d
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/S/b;->j(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_16
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    nop

    sget-object p0, Lcom/github/catvod/spider/merge/S/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const-string p1, ""

    :goto_30
    return-object p1
.end method

.method public static j(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge/S/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    sget-object p0, Lcom/github/catvod/spider/merge/S/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_52
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p1, v1, v2, v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/S/b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
