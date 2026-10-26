.class public Lcom/github/catvod/spider/Spermik;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method private a(Lcom/github/catvod/spider/merge/T/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, ""

    goto :goto_f

    :cond_9
    const-string p2, "content"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;
    .registers 4

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    const-string v0, "https://www.spermik.com/"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    iget-object v0, p0, Lcom/github/catvod/spider/Spermik;->a:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/c/i;
    .registers 7

    const-string v0, "a.stui-vodlist__thumb"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string v2, "href"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_30

    const-string v0, "h4.stui-vodlist__title a"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-nez v0, :cond_28

    move-object v0, v4

    goto :goto_30

    :cond_28
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    return-object v1

    :cond_37
    const-string v1, "mip-img"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    if-nez v1, :cond_41

    move-object v1, v4

    goto :goto_47

    :cond_41
    const-string v3, "src"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    const-string v3, "span.pic-text"

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    if-nez p1, :cond_50

    goto :goto_58

    :cond_50
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_58
    new-instance p1, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {p1, v2, v0, v1, v4}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/search.php?searchword="

    .line 1
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Spermik;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string p2, "li.stui-vodlist__item"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/Spermik;->c(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p2

    if-eqz p2, :cond_2e

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3
    :cond_44
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 p2, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, p2, v1, p2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 8
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

    const-string p4, ".html"

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_14

    :cond_e
    const-string v0, "/xndj/"

    .line 1
    invoke-static {v0, p1, p4}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_14
    if-eqz p2, :cond_44

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_44

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\.html$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Spermik;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string p2, "li.stui-vodlist__item"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/Spermik;->c(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p2

    if-eqz p2, :cond_52

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 3
    :cond_68
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 p2, 0x1

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p1, p2, p2, p4, p2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

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

    const-string v0, "^/xiniuduanju/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\.html$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/xiniuduanju/"

    const-string v2, ".html"

    .line 1
    invoke-static {v0, p1, v2}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-direct {p0, v3}, Lcom/github/catvod/spider/Spermik;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v3

    new-instance v4, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    const-string v0, "h3.title"

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-nez v0, :cond_45

    move-object v0, v1

    goto :goto_4d

    :cond_45
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    const-string v0, "meta[property=og:image]"

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-nez v0, :cond_5a

    move-object v0, v1

    goto :goto_60

    :cond_5a
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    const-string v0, "meta[property=og:video:class]"

    invoke-direct {p0, v3, v0}, Lcom/github/catvod/spider/Spermik;->a(Lcom/github/catvod/spider/merge/T/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    const-string v0, "meta[property=og:video:area]"

    invoke-direct {p0, v3, v0}, Lcom/github/catvod/spider/Spermik;->a(Lcom/github/catvod/spider/merge/T/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->e(Ljava/lang/String;)V

    const-string v0, "meta[property=og:video:director]"

    invoke-direct {p0, v3, v0}, Lcom/github/catvod/spider/Spermik;->a(Lcom/github/catvod/spider/merge/T/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->g(Ljava/lang/String;)V

    const-string v0, "meta[property=og:video:actor]"

    invoke-direct {p0, v3, v0}, Lcom/github/catvod/spider/Spermik;->a(Lcom/github/catvod/spider/merge/T/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->d(Ljava/lang/String;)V

    const-string v0, "p.data"

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/github/catvod/spider/merge/l/h;->a:Lcom/github/catvod/spider/merge/l/h;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5e74\u4efd\uff1a"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->o(Ljava/lang/String;)V

    :cond_b5
    const-string v0, ".stui-content__desc"

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    :cond_c8
    const-string v0, "\u7280\u725b\u77ed\u5267"

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u64ad\u653e$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/1.html"

    const-string v2, "\u91cd\u751f"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/2.html"

    const-string v2, "\u7a7f\u8d8a"

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/3.html"

    const-string v2, "\u723d\u5267"

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/4.html"

    const-string v2, "\u8a00\u60c5"

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/5.html"

    const-string v2, "\u90fd\u5e02"

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/6.html"

    const-string v2, "\u53e4\u88c5"

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/7.html"

    const-string v2, "\u60ac\u7591"

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "/xndj/8.html"

    const-string v2, "\u5267\u60c5"

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Spermik;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    const-string v2, "li.stui-vodlist__item"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/Spermik;->c(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object v2

    if-eqz v2, :cond_7b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_91
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->l(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/Spermik;->a:Ljava/util/HashMap;

    const-string p2, "User-Agent"

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/github/catvod/spider/Spermik;->a:Ljava/util/HashMap;

    const-string p2, "Referer"

    const-string v0, "https://www.spermik.com/"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
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

    const-string p1, "^/xiniuduanju/"

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\.html$"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/play/"

    const-string v0, "-0-0.html"

    .line 1
    invoke-static {p2, p1, v0}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Spermik;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p1

    const-string p2, "mip-iframe[src*=player]"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/m;->q0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object p1

    if-nez p1, :cond_24

    move-object p1, p3

    goto :goto_2a

    :cond_24
    const-string p2, "src"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    const-string p2, "url="

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_3c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_57

    const-string p2, "url=([^\"]+\\.(?:m3u8|mp4))"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_57

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    :cond_57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/github/catvod/spider/Spermik;->a:Ljava/util/HashMap;

    const-string v0, "User-Agent"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Referer"

    const-string v0, "https://www.spermik.com/"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p3}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string p2, "1"

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/Spermik;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/github/catvod/spider/Spermik;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
