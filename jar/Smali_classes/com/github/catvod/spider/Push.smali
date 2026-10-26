.class public Lcom/github/catvod/spider/Push;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/Ali;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/Ali;

    invoke-direct {v0}, Lcom/github/catvod/spider/Ali;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/Push;->a:Lcom/github/catvod/spider/Ali;

    return-void
.end method


# virtual methods
.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/Ali;->a:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/github/catvod/spider/Push;->a:Lcom/github/catvod/spider/Ali;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/Ali;->detailContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    const-string v2, "FongMi"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    :cond_3f
    move-object v2, p1

    :goto_40
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    const-string v2, "https://pic.rmb.bdstatic.com/bjh/1d0b02d0f57f0a42201f92caba5107ed.jpeg"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\u76f4\u9023"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "\u55c5\u63a2"

    aput-object v5, v3, v4

    const/4 v5, 0x2

    const-string v6, "\u89e3\u6790"

    aput-object v6, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "$$$"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u64ad\u653e$"

    .line 2
    invoke-static {v3, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {v3, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v3, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/Push;->a:Lcom/github/catvod/spider/Ali;

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/Ali;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 13
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

    const-string v0, "\u76f4\u9023"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    .line 4
    new-instance v1, Ljava/io/File;

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_30

    goto :goto_78

    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_78

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/catvod/spider/merge/n/b;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 5
    new-instance v7, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v7}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v6

    .line 7
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_78
    :goto_78
    const-string v0, "http://"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "mp4"

    aput-object v3, v1, v2

    const-string v3, "mkv"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "srt"

    aput-object v3, v0, v2

    const-string v2, "ass"

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto :goto_f0

    :cond_a9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_d5

    goto :goto_ad

    :cond_d5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 15
    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 16
    :cond_f0
    :goto_f0
    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 17
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f8
    const-string v0, "\u55c5\u63a2"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 19
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 21
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_110
    const-string v0, "\u89e3\u6790"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 23
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->h()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->d()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 25
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_12b
    iget-object v0, p0, Lcom/github/catvod/spider/Push;->a:Lcom/github/catvod/spider/Ali;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/catvod/spider/Ali;->playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
