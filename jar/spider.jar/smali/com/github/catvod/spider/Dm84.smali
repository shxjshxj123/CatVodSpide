.class public Lcom/github/catvod/spider/Dm84;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/catvod/spider/merge/c/c;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_9

    :cond_1c
    const-string v2, "\u6309"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "by"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "\u6309\u65f6\u95f4"

    const-string v4, "time"

    .line 1
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u6309\u4eba\u6c14"

    const-string v4, "hits"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u6309\u8bc4\u5206"

    const-string v4, "score"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_44
    new-instance v3, Lcom/github/catvod/spider/merge/c/b;

    invoke-direct {v3, v2, v1}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4d
    new-instance p3, Lcom/github/catvod/spider/merge/c/c;

    invoke-direct {p3, p2, p1, v0}, Lcom/github/catvod/spider/merge/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p3
.end method

.method private b()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
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

    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 10
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

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "type"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_12

    invoke-virtual {p4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v1, "year"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1d

    invoke-virtual {p4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v2, "by"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2a

    const-string v3, "time"

    invoke-virtual {p4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v1, "https://dm84.tv"

    .line 1
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v2, v3, p1

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 p4, 0x4

    aput-object p2, v3, p4

    const-string p2, "/show-%s--%s-%s--%s-%s.html"

    .line 2
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p2

    const-string p4, "div.item"

    invoke-virtual {p2, p4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_bd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/catvod/spider/merge/T/m;

    const-string v0, "a.cover"

    invoke-virtual {p4, v0}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    const-string v1, "data-bg"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a.title"

    invoke-virtual {p4, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    const-string v3, "href"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "span.desc"

    invoke-virtual {p4, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p4

    invoke-virtual {p4}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object p4

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    .line 3
    invoke-static {v2, v1, v0, p4, p3}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7b

    .line 4
    :cond_bd
    invoke-static {p3}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "https://dm84.tv"

    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v0

    const-string v2, "h1.v_title"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "p.v_desc > span.desc"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta[property=og:image]"

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "meta[name=og:video:area]"

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "meta[name=og:video:class]"

    invoke-virtual {v0, v7}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "meta[name=og:video:actor]"

    invoke-virtual {v0, v8}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "meta[property=og:description]"

    invoke-virtual {v0, v9}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "meta[name=og:video:release_date]"

    invoke-virtual {v0, v10}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "meta[name=og:video:director]"

    invoke-virtual {v0, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v11}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v11, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lcom/github/catvod/spider/merge/c/i;->e(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lcom/github/catvod/spider/merge/c/i;->g(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "ul.tab_control > li"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    const-string v3, "ul.play_list"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    const/4 v3, 0x0

    :goto_b6
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_11a

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/T/m;

    const-string v6, "a"

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_d8
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_108

    invoke-virtual {v5, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/T/m;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "href"

    invoke-virtual {v8, v10}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_d8

    :cond_108
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_117

    const-string v5, "#"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_117
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_11a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_138

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "$$$"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    :cond_138
    invoke-static {v11}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 16

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "https://dm84.tv"

    invoke-static {v3, v2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v2

    const-string v3, "ul.nav_row > li > a"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "href"

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v4, v8}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v4, v8}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/github/catvod/spider/merge/c/a;

    const/4 v6, 0x0

    .line 1
    invoke-direct {v5, v7, v4, v6}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/c/a;

    const-string v4, "https://dm84.tv/list-"

    .line 3
    invoke-static {v4}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/c/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".html"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v4

    const-string v9, "ul.list_filter > li > div"

    invoke-virtual {v4, v9}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    const-string v11, "a"

    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v6

    const-string v12, "\u985e\u578b"

    const-string v13, "type"

    invoke-direct {p0, v12, v13, v6}, Lcom/github/catvod/spider/Dm84;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v6

    const-string v12, "\u6642\u9593"

    const-string v13, "year"

    invoke-direct {p0, v12, v13, v6}, Lcom/github/catvod/spider/Dm84;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v6

    const-string v9, "\u6392\u5e8f"

    const-string v11, "by"

    invoke-direct {p0, v9, v11, v6}, Lcom/github/catvod/spider/Dm84;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, v4

    goto/16 :goto_6a

    :cond_fb
    const-string v3, "div.item"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    const-string v4, "a.cover"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    const-string v6, "data-bg"

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "a.title"

    invoke-virtual {v3, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v6

    const-string v9, "span.desc"

    invoke-virtual {v3, v9}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    .line 5
    invoke-static {v7, v6, v4, v3, p1}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_105

    .line 6
    :cond_145
    invoke-static {v0, p1, v1}, Lcom/github/catvod/spider/merge/c/f;->n(Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 4
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

    const-string p1, "https://dm84.tv"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string p2, "iframe"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    const-string p2, "src"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "https://dm84.tv"

    const-string v1, "/s----------.html?wd="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Dm84;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string v0, "div.item"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    const-string v1, "a.cover"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const-string v2, "data-bg"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a.title"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "span.desc"

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 1
    invoke-static {v3, v2, v1, v0, p2}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_27

    .line 2
    :cond_6a
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
