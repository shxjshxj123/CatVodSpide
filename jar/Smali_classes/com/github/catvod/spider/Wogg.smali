.class public Lcom/github/catvod/spider/Wogg;
.super Lcom/github/catvod/spider/Ali;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/regex/Pattern;

.field private final c:Ljava/util/regex/Pattern;

.field private d:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/Ali;-><init>()V

    const-string v0, "/vodtype/(\\w+).html"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/Wogg;->b:Ljava/util/regex/Pattern;

    const-string v0, "\\$\\(\"\\.mac_total\"\\)\\.text\\(\'(\\d+)\'\\);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/Wogg;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private b()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Lcom/github/catvod/spider/merge/T/h;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/T/h;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".module-item"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    const-string v2, ".video-name a"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v2

    const-string v3, "href"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".module-item-pic > img"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    const-string v4, "data-src"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".video-name"

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".module-item-text"

    invoke-virtual {v1, v5}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v2, v4, v3, v1, v0}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_4b
    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "http://tvfan.xxooo.cf"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "/index.php/vodsearch/%s----------%s---.html"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Wogg;->b()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string p2, ".module-search-item"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    const-string v1, ".video-serial"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    const-string v3, "href"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".module-item-pic > img"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    const-string v4, "data-src"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".video-tag-icon"

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v2, v1, v3, v0, p2}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3b

    .line 4
    :cond_77
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 11
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

    const/16 p3, 0xc

    new-array v0, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v2, ""

    aput-object v2, v0, p1

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    const/4 v4, 0x6

    aput-object v2, v0, v4

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const/16 v4, 0x8

    aput-object p2, v0, v4

    const/16 v4, 0x9

    aput-object v2, v0, v4

    const/16 v4, 0xa

    aput-object v2, v0, v4

    const/16 v4, 0xb

    aput-object v2, v0, v4

    if-eqz p4, :cond_57

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v5

    goto :goto_3e

    :cond_57
    new-array p4, v3, [Ljava/lang/Object;

    const-string v2, "http://tvfan.xxooo.cf"

    aput-object v2, p4, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_68
    if-ge v3, p3, :cond_77

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, p1

    const-string p3, "%s/index.php/vodshow/%s.html"

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0}, Lcom/github/catvod/spider/Wogg;->b()Ljava/util/Map;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 p4, 0x48

    iget-object v0, p0, Lcom/github/catvod/spider/Wogg;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/T/m;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_ad
    if-gt v1, p4, :cond_b0

    goto :goto_be

    :cond_b0
    int-to-double v2, v1

    int-to-double v4, p4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 1
    :goto_be
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-direct {p0, p3}, Lcom/github/catvod/spider/Wogg;->c(Lcom/github/catvod/spider/merge/T/h;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {v0, p2, p1, p4, v1}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 8
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

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "http://tvfan.xxooo.cf"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/Wogg;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    const-string p1, ".video-info-header > .page-title"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    const-string p1, ".module-item-pic img"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    const-string v2, "data-src"

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    const-string p1, ".video-info-header a.tag-link"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 p1, 0x0

    goto :goto_57

    :cond_4b
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/T/m;

    .line 4
    :goto_57
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->e(Ljava/lang/String;)V

    const-string p1, ".video-info-header div.tag-link a"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_8e

    :goto_7b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    const-string p1, ".module-row-text"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    const-string v2, "data-clipboard-text"

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge/V/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/github/catvod/spider/Ali;->detailContentVodPlayFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/github/catvod/spider/Ali;->detailContentVodPlayUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    const-string p1, ".video-info-item"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b9
    :goto_b9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->o0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5bfc\u6f14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "a"

    if-eqz v3, :cond_10b

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    :goto_f0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f0

    :cond_103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->g(Ljava/lang/String;)V

    goto :goto_b9

    :cond_10b
    const-string v3, "\u4e3b\u6f14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    :goto_12c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12c

    :cond_13f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_148
    const-string v3, "\u5e74\u4ee3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_161

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_161
    const-string v3, "\u5907\u6ce8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_176

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_176
    const-string v3, "\u5267\u60c5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string v2, ".sqjj_a"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\u6536\u8d77\u90e8\u5206]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_199
    invoke-static {v1}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/Wogg;->d:Lcom/google/gson/JsonObject;

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/catvod/spider/Wogg;->b()Ljava/util/Map;

    move-result-object v2

    const-string v3, "http://tvfan.xxooo.cf"

    invoke-static {v3, v2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v2

    const-string v3, ".nav-link"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    iget-object v6, p0, Lcom/github/catvod/spider/Wogg;->b:Ljava/util/regex/Pattern;

    const-string v7, "href"

    invoke-virtual {v4, v7}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_29

    new-instance v7, Lcom/github/catvod/spider/merge/c/a;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1
    invoke-direct {v7, v6, v4, v5}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_5e
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/Wogg;->c(Lcom/github/catvod/spider/merge/T/h;)Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_6c

    .line 3
    invoke-static {v1, v5}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    :cond_6c
    invoke-static {v0, v2, v5}, Lcom/github/catvod/spider/merge/c/f;->m(Ljava/util/List;Ljava/util/List;Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    iput-object p2, p0, Lcom/github/catvod/spider/Wogg;->d:Lcom/google/gson/JsonObject;

    const-string v0, "token"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/Ali;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string p2, "1"

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/Wogg;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/github/catvod/spider/Wogg;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
