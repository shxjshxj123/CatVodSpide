.class public Lcom/github/catvod/spider/WebDAV;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# static fields
.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/h/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/h/a;
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/WebDAV;->c:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge/h/a;

    invoke-direct {v1, p0}, Lcom/github/catvod/spider/merge/h/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/h/a;

    return-object p0
.end method

.method private b(Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/github/catvod/spider/merge/h/a;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/h/a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_2a

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->e()Lcom/thegrizzlylabs/sardineandroid/Sardine;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_62
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_41

    :cond_7a
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/Proxy;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?do=webdav&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static vod(Ljava/util/Map;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "url"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, p0

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/github/catvod/spider/WebDAV;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/h/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "application/octet-stream"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/h/a;->e()Lcom/thegrizzlylabs/sardineandroid/Sardine;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/h/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1
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

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_13

    :cond_12
    move-object p3, p1

    :goto_13
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_24

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    move-object p1, v2

    :goto_25
    const-string p2, "order"

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_35

    :cond_34
    move-object p2, v2

    :goto_35
    const-string v1, "type"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    :cond_44
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/github/catvod/spider/WebDAV;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/h/a;

    move-result-object p3

    sget-object v4, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    invoke-direct {p0, p3, p1, v4}, Lcom/github/catvod/spider/WebDAV;->c(Lcom/github/catvod/spider/merge/h/a;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_77
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_7b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8d

    invoke-static {v2, p2, p4}, Lcom/github/catvod/spider/merge/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2, p2, v1}, Lcom/github/catvod/spider/merge/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_8d
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    const-string p4, "https://s1.ax1x.com/2023/05/04/p9tgI81.png"

    invoke-virtual {p3, p2, p4}, Lcom/github/catvod/spider/merge/h/a;->f(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_a7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ab
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    const-string p4, "https://s1.ax1x.com/2023/05/04/p9tgogx.png"

    invoke-virtual {p3, p2, p4}, Lcom/github/catvod/spider/merge/h/a;->f(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 1
    :cond_c1
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2, p2, v0, p2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 16
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

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, p1

    :goto_19
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, ""

    :goto_41
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lcom/github/catvod/spider/WebDAV;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/h/a;

    move-result-object v1

    iget-object v3, p0, Lcom/github/catvod/spider/WebDAV;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v3}, Lcom/github/catvod/spider/WebDAV;->c(Lcom/github/catvod/spider/merge/h/a;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5e
    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/WebDAV;->b(Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/catvod/spider/merge/n/b;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_78
    const-string v4, "name"

    const-string v5, "asc"

    .line 2
    invoke-static {v4, v5, v0}, Lcom/github/catvod/spider/merge/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    sget-object v6, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/WebDAV;->b(Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c8
    :goto_c8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "~~~"

    const-string v11, "@@@"

    if-eqz v9, :cond_124

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    .line 4
    invoke-virtual {v9}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v9}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    :cond_124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_12f

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_17e

    .line 8
    :cond_12f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_138
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v8}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_138

    :cond_17a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    :goto_17e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_88

    :cond_18a
    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    const-string p1, "https://s1.ax1x.com/2023/05/04/p9tgogx.png"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    const-string p1, "#"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 16

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/github/catvod/spider/WebDAV;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/h/a;

    .line 1
    new-instance v3, Lcom/github/catvod/spider/merge/c/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-direct {v3, v4, v2, v5}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2f
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/c/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/c/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/github/catvod/spider/merge/c/c;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/github/catvod/spider/merge/c/b;

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v7, "\u9810\u8a2d"

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    aput-object v6, v5, v9

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v10, "\u540d\u7a31"

    const-string v11, "name"

    invoke-direct {v6, v10, v11}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v6, v5, v10

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v11, "\u5927\u5c0f"

    const-string v12, "size"

    invoke-direct {v6, v11, v12}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    aput-object v6, v5, v11

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v12, "\u4fee\u6539\u6642\u9593"

    const-string v13, "date"

    invoke-direct {v6, v12, v13}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x3

    aput-object v6, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "type"

    const-string v13, "\u6392\u5e8f\u985e\u578b"

    invoke-direct {v4, v6, v13, v5}, Lcom/github/catvod/spider/merge/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/github/catvod/spider/merge/c/c;

    new-array v5, v12, [Lcom/github/catvod/spider/merge/c/b;

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    invoke-direct {v6, v7, v8}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v9

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v7, "\u2b06"

    const-string v8, "asc"

    invoke-direct {v6, v7, v8}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v10

    new-instance v6, Lcom/github/catvod/spider/merge/c/b;

    const-string v7, "\u2b07"

    const-string v8, "desc"

    invoke-direct {v6, v7, v8}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "order"

    const-string v7, "\u6392\u5e8f\u65b9\u5f0f"

    invoke-direct {v4, v6, v7, v5}, Lcom/github/catvod/spider/merge/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_33

    :cond_bf
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->k(Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ass"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssa"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "srt"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/github/catvod/spider/WebDAV;->a:Ljava/util/ArrayList;

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/github/catvod/spider/WebDAV;->b:Ljava/lang/String;

    .line 1
    sget-object p1, Lcom/github/catvod/spider/WebDAV;->c:Ljava/util/List;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_57

    :cond_2f
    iget-object p1, p0, Lcom/github/catvod/spider/WebDAV;->b:Ljava/lang/String;

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/github/catvod/spider/WebDAV;->b:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/WebDAV;->b:Ljava/lang/String;

    :cond_42
    iget-object p1, p0, Lcom/github/catvod/spider/WebDAV;->b:Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/github/catvod/spider/merge/h/a;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/h/a;

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->a()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/github/catvod/spider/WebDAV;->c:Ljava/util/List;

    :goto_57
    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 11
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

    const-string p1, "~~~"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 p3, 0x0

    .line 2
    aget-object v0, p1, p3

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/WebDAV;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_4e

    aget-object v3, p1, v2

    const-string v4, "@@@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_4b

    :cond_29
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, p3

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-direct {p0, v3}, Lcom/github/catvod/spider/WebDAV;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v6, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v6}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 5
    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 6
    :cond_4e
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
