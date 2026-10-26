.class public Lcom/github/catvod/spider/KanKanYa;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/KanKanYa;->b:Ljava/util/Random;

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "set-cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_41

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_33

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_43

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "PXhw7UT1B0a9kQDKZsjIASmOezxYG4CHo5Jyfg2b8FLpEvRr3WtVnlqMidu6cN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x3e

    if-gez v5, :cond_1c

    goto :goto_23

    :cond_1c
    add-int/lit8 v5, v5, 0x3

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_23
    iget-object v5, p0, Lcom/github/catvod/spider/KanKanYa;->b:Ljava/util/Random;

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/catvod/spider/KanKanYa;->b:Ljava/util/Random;

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/github/catvod/spider/KanKanYa;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4eba\u673a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/KanKanYa;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/github/catvod/spider/KanKanYa;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/github/catvod/spider/merge/k/b;->e(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/KanKanYa;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    goto :goto_97

    :cond_31
    const-string v1, "encrypt(\""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3a

    goto :goto_44

    :cond_3a
    add-int/lit8 v1, v1, 0x9

    const-string v2, "\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_47

    :goto_44
    const-string v0, ""

    goto :goto_4b

    :cond_47
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_4b
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/KanKanYa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://www.kankanya.me/"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "Referer"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "https://www.kankanya.me/robot.php"

    invoke-static {v3, v2, v0, v1}, Lcom/github/catvod/spider/merge/k/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/KanKanYa;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    :try_start_94
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_97

    .line 4
    :catch_97
    :goto_97
    invoke-direct {p0}, Lcom/github/catvod/spider/KanKanYa;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_9f
    return-object v0
.end method

.method private d()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://www.kankanya.me/"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "Referer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v1, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/github/catvod/spider/KanKanYa;->a:Ljava/lang/String;

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_f
    rsub-int/lit8 v2, v0, 0x4

    if-ge p1, v2, :cond_1b

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string v1, "a[href*=detail]"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    :try_start_1f
    const-string v2, "href"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/detail/[A-Za-z0-9]+\\.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_13

    :cond_2e
    const-string v3, "^/detail/([A-Za-z0-9]+)\\.html$"

    const-string v4, "$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_86

    const-string v5, ""

    if-eqz v4, :cond_56

    :try_start_44
    const-string v3, ".module-poster-item-title"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    :cond_55
    move-object v3, v5

    :cond_56
    :goto_56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_13

    :cond_5d
    const-string v4, "img[data-original]"

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v4

    if-eqz v4, :cond_6c

    const-string v6, "data-original"

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6d

    :cond_6c
    move-object v4, v5

    :goto_6d
    const-string v6, ".module-item-note"

    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_7d
    new-instance v1, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_85} :catch_86

    goto :goto_13

    :catch_86
    nop

    goto :goto_13

    :cond_88
    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "https://www.kankanya.me/index.php?searchword="

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_a

    const/4 p2, 0x0

    goto :goto_13

    :cond_a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p2, v0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_13
    const-string p3, "dianying"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.kankanya.me/show/dianying-----------"

    goto :goto_4a

    :cond_23
    const-string p3, "juji"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_33

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.kankanya.me/show/juji-----------"

    goto :goto_4a

    :cond_33
    const-string p3, "zongyi"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.kankanya.me/show/zongyi-----------"

    goto :goto_4a

    :cond_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://www.kankanya.me/show/dongman-----------"

    :goto_4a
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".html"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p2, v0, v0, p4, v0}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "https://www.kankanya.me/detail/"

    const-string v3, ".html"

    .line 1
    invoke-static {v2, v1, v3}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    .line 2
    invoke-direct {v3, v2}, Lcom/github/catvod/spider/KanKanYa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/github/catvod/spider/merge/U/F;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v2

    const-string v4, "h1"

    .line 4
    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_2e
    move-object v4, v5

    :goto_2f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u8be6\u60c5\u4ecb\u7ecd-"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "-\u770b\u770b\u9e2d"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_51
    const-string v6, ".module-info-poster img"

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v6

    if-eqz v6, :cond_6c

    const-string v7, "data-original"

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6d

    const-string v7, "src"

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6d

    :cond_6c
    move-object v7, v5

    :cond_6d
    :goto_6d
    const-string v6, ".module-info-introduction-content"

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v6

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_7f

    :cond_7e
    move-object v6, v5

    :goto_7f
    const-string v8, ".module-info-item"

    invoke-virtual {v2, v8}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v5

    move-object v10, v9

    :cond_8b
    :goto_8b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/catvod/spider/merge/T/m;

    const-string v12, ".module-info-item-title"

    invoke-virtual {v11, v12}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v13

    if-eqz v13, :cond_a8

    invoke-virtual {v11, v12}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v12

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v12

    goto :goto_a9

    :cond_a8
    move-object v12, v5

    :goto_a9
    const-string v13, ".module-info-item-content"

    invoke-virtual {v11, v13}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v14

    if-eqz v14, :cond_be

    invoke-virtual {v11, v13}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    goto :goto_bf

    :cond_be
    move-object v11, v5

    :goto_bf
    const-string v13, "\u5e74\u4efd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e2

    const-string v13, "\u4e0a\u6620"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d0

    goto :goto_e2

    :cond_d0
    const-string v13, "\u4e3b\u6f14"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e0

    const-string v13, "\u6f14\u5458"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8b

    :cond_e0
    move-object v10, v11

    goto :goto_8b

    :cond_e2
    :goto_e2
    move-object v9, v11

    goto :goto_8b

    :cond_e4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "#y-playList .module-tab-item"

    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_109

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge/T/m;

    const-string v13, "data-dropdown-value"

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    :cond_109
    const-string v11, ".module-list.sort-list.tab-list.his-tab-list"

    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v14, "#"

    if-ge v0, v13, :cond_1df

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/catvod/spider/merge/T/m;

    add-int/lit8 v15, v0, 0x1

    move-object/from16 p1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "a.module-play-list-link"

    invoke-virtual {v13, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_136
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v10

    const-string v10, "href"

    invoke-virtual {v13, v10}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "/play/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15d

    goto :goto_198

    :cond_15d
    const-string v10, "[^0-9]"

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_173

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :cond_173
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_198
    move-object/from16 v10, v16

    move-object/from16 v3, v17

    goto :goto_136

    :cond_19d
    move-object/from16 v16, v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1b2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1b8

    :cond_1b2
    const-string v0, "\u6e90"

    .line 5
    invoke-static {v0, v15}, Lcom/github/catvod/spider/merge/l/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_1b8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1c1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c1
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v12

    move v12, v0

    :cond_1d6
    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move v0, v15

    move-object/from16 v10, v16

    goto/16 :goto_115

    :cond_1df
    move-object/from16 v16, v10

    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u770b\u770b\u9e2d"

    if-eqz v2, :cond_1f5

    .line 7
    invoke-static {v3, v1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    :cond_1f5
    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    if-lez v12, :cond_214

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_214
    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    move-object/from16 v10, v16

    invoke-virtual {v0, v10}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    invoke-static {v14, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "dianying"

    const-string v2, "\u7535\u5f71"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "juji"

    const-string v2, "\u5267\u96c6"

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "zongyi"

    const-string v2, "\u7efc\u827a"

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "dongman"

    const-string v2, "\u52a8\u6f2b"

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "https://www.kankanya.me/"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/KanKanYa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/KanKanYa;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->l(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "\\|"

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    array-length v0, p1

    const/4 v1, 0x1

    const-string v2, ""

    if-le v0, v1, :cond_13

    aget-object v0, p1, v1

    goto :goto_14

    :cond_13
    move-object v0, v2

    .line 1
    :goto_14
    :try_start_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    const/4 v0, 0x1

    .line 2
    :goto_1a
    array-length v3, p1

    const/4 v4, 0x2

    if-le v3, v4, :cond_21

    aget-object p1, p1, v4

    goto :goto_23

    :cond_21
    const-string p1, "1"

    .line 3
    :goto_23
    :try_start_23
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    const/4 p1, 0x1

    .line 4
    :goto_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.kankanya.me/play/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".html"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "player_aaaa"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-gez v0, :cond_5b

    goto :goto_8c

    :cond_5b
    const-string v5, "<script"

    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "</script>"

    invoke-virtual {p3, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v5, :cond_8c

    if-gez v0, :cond_6c

    goto :goto_8c

    :cond_6c
    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x7b

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v5, 0x7d

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v0, :cond_8c

    if-ge v5, v0, :cond_81

    goto :goto_8c

    :cond_81
    :try_start_81
    new-instance v6, Lorg/json/JSONObject;

    add-int/2addr v5, v1

    invoke-virtual {p3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v6, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8b} :catch_8c

    goto :goto_8d

    :catch_8c
    :cond_8c
    :goto_8c
    move-object v6, v3

    :goto_8d
    const-string p3, "Referer"

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

    const-string v5, "User-Agent"

    if-nez v6, :cond_97

    goto/16 :goto_1d2

    :cond_97
    const-string v7, "url"

    .line 6
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a5

    goto/16 :goto_1d2

    :cond_a5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "vid"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Content-Type"

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "https://www.kankanya.me/kkyplayer/index.php"

    invoke-virtual {v6, p3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "https://www.kankanya.me/kkyplayer/api.php"

    .line 7
    invoke-static {v9, v8, v6, v3}, Lcom/github/catvod/spider/merge/k/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_d8

    goto/16 :goto_1d2

    :cond_d8
    const-string v6, "urlmode"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v4, :cond_116

    .line 9
    invoke-direct {p0, v3}, Lcom/github/catvod/spider/KanKanYa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f1
    array-length v3, p2

    if-ge v1, v3, :cond_110

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const-string v4, "PXhw7UT1B0a9kQDKZsjIASmOezxYG4CHo5Jyfg2b8FLpEvRr3WtVnlqMidu6cN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_102

    goto :goto_10a

    :cond_102
    add-int/lit8 v6, v6, 0x3b

    rem-int/lit8 v6, v6, 0x3e

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3

    goto :goto_f1

    :cond_110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1d2

    .line 10
    :cond_116
    :try_start_116
    invoke-direct {p0, v3}, Lcom/github/catvod/spider/KanKanYa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v6, "098f6bcd4621d373cade4e832627b4f6"

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_12c
    array-length v9, v3

    if-ge v8, v9, :cond_13e

    aget-byte v9, v3, v8

    array-length v10, v6

    rem-int v10, v8, v10

    aget-byte v10, v6, v10

    xor-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12c

    :cond_13e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-ge v6, v4, :cond_14d

    goto/16 :goto_1d2

    :cond_14d
    new-instance v6, Ljava/lang/String;

    aget-object v7, v3, p2

    invoke-direct {p0, v7}, Lcom/github/catvod/spider/KanKanYa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v7, Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/KanKanYa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    :goto_17f
    array-length v9, v3

    if-ge v8, v9, :cond_191

    if-le v8, v4, :cond_189

    const/16 v9, 0x2f

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_189
    aget-object v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_17f

    :cond_191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge p2, v7, :cond_1ce

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-lt v7, v8, :cond_1ac

    const/16 v8, 0x5a

    if-le v7, v8, :cond_1b4

    :cond_1ac
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1c8

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_1c8

    :cond_1b4
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1cb

    :cond_1c8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1cb
    add-int/lit8 p2, p2, 0x1

    goto :goto_19a

    :cond_1ce
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_1d2} :catch_1d2

    .line 12
    :catch_1d2
    :goto_1d2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->e()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 15
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/KanKanYa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
