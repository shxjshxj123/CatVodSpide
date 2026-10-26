.class public Lcom/github/catvod/spider/Ysj;
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

    if-eqz v1, :cond_2d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v2, Lcom/github/catvod/spider/merge/c/b;

    const-string v3, "\u5168\u90e8"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2d
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

    return-object v0
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 9
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

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "https://ysjdm.net/index.php/vod/show"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "area"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "/area/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const-string v0, "/class/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    const-string p1, "/id/20"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "lang"

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "/lang/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string p1, "letter"

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "/letter/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    const-string p1, "year"

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "/year/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    const-string p1, "/page/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    const-string p1, ".html"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Ysj;->b()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "li.vodlist_item"

    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/catvod/spider/merge/T/m;

    const-string p4, "a"

    invoke-virtual {p3, p4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p3, p4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://ysjdm.net"

    .line 1
    invoke-static {v2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {p3, p4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p4

    const-string v3, "data-original"

    invoke-virtual {p4, v3}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "span.pic_text"

    invoke-virtual {p3, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {v0, v1, p4, p3, p2}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_a6

    .line 4
    :cond_f6
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 15
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

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "https://ysjdm.net/index.php/vod/detail/id/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/catvod/spider/Ysj;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    const-string v2, "h2.title"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://ysjdm.net"

    .line 1
    invoke-static {v3}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "a.vodlist_thumb"

    .line 2
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    const-string v5, "data-original"

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "li.data"

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/T/m;

    const-string v6, "a"

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v8, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u4e3b\u6f14\uff1a"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v4

    const-string v10, "\u5bfc\u6f14\uff1a"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "div.content_desc > span"

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v12}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v12, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lcom/github/catvod/spider/merge/c/i;->e(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/github/catvod/spider/merge/c/i;->g(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "div.play_source_tab > a"

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    const-string v2, "ul.content_playlist"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_161

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    const-string v4, "alt"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_119
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_14f

    invoke-virtual {v4, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/T/m;

    const-string v9, "href"

    invoke-virtual {v8, v9}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/index.php/vod/play/id/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "$"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_119

    :cond_14f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15e

    const-string v4, "#"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    :cond_161
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_17f

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "$$$"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    :cond_17f
    invoke-static {v12}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 15

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lcom/github/catvod/spider/Ysj;->b()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "https://ysjdm.net/index.php/vod/show/id/20.html"

    invoke-static {v4, v3}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v3

    const-string v4, "div#hl03"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v4

    const-string v6, "\u5730\u5340"

    const-string v7, "area"

    invoke-direct {p0, v6, v7, v4}, Lcom/github/catvod/spider/Ysj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "div#hl04"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v4

    const-string v6, "\u5e74\u4efd"

    const-string v7, "year"

    invoke-direct {p0, v6, v7, v4}, Lcom/github/catvod/spider/Ysj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "div#hl05"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v4

    const-string v6, "\u8a9e\u8a00"

    const-string v7, "lang"

    invoke-direct {p0, v6, v7, v4}, Lcom/github/catvod/spider/Ysj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "div#hl06"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/V/g;->c()Ljava/util/List;

    move-result-object v4

    const-string v6, "\u5b57\u6bcd"

    const-string v7, "letter"

    invoke-direct {p0, v6, v7, v4}, Lcom/github/catvod/spider/Ysj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/catvod/spider/merge/c/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "div#hl02"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/V/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x5

    const-string v8, "/"

    const-string v9, "href"

    if-eqz v6, :cond_d3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6, v9}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_bc

    move-object v7, v9

    :cond_bc
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BD"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/github/catvod/spider/merge/c/a;

    const/4 v9, 0x0

    .line 1
    invoke-direct {v8, v7, v6, v9}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    :cond_d3
    const-string v1, "li.vodlist_item"

    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v6

    const-string v10, "title"

    invoke-virtual {v6, v10}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "https://ysjdm.net"

    .line 3
    invoke-static {v10}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4
    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v11

    const-string v12, "data-original"

    invoke-virtual {v11, v12}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "span.pic_text"

    invoke-virtual {v3, v11}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v4, v6, v10, v3, p1}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_dd

    .line 6
    :cond_126
    invoke-static {v0, p1, v2}, Lcom/github/catvod/spider/merge/c/f;->n(Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
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

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://ysjdm.net/index.php/vod/play/id/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p0}, Lcom/github/catvod/spider/Ysj;->b()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "https://ysjdm.net/index.php/vod/search.html"

    const-string v1, "?wd="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&submit="

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Ysj;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->d0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49\uff0c\u6682\u65e0\u76f8\u5173\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_34
    const-string v0, "li.searchlist_item"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v2

    const-string v3, "href"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://ysjdm.net"

    .line 1
    invoke-static {v4}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const-string v5, "data-original"

    invoke-virtual {v1, v5}, Lcom/github/catvod/spider/merge/V/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "span.pic_text"

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/V/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v2, v3, v1, v0, p2}, Lcom/github/catvod/spider/merge/l/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3e

    .line 4
    :cond_8e
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
