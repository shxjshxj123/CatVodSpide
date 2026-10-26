.class public Lcom/github/catvod/spider/Local;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/github/catvod/spider/merge/c/i;
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "https://s1.ax1x.com/2023/05/04/p9tgI81.png"

    goto :goto_1e

    :cond_1c
    const-string v1, "https://s1.ax1x.com/2023/05/04/p9tgogx.png"

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/Local;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "folder"

    goto :goto_3d

    :cond_3b
    const-string p1, "file"

    :goto_3d
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/c/i;->n(Ljava/lang/String;)V

    return-object v0
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

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1f

    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    sget-object v0, Lcom/github/catvod/spider/merge/l/g;->a:Lcom/github/catvod/spider/merge/l/g;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_60

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_5d

    :cond_38
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-direct {p0, v3}, Lcom/github/catvod/spider/Local;->a(Ljava/io/File;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_46
    sget-object v4, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-direct {p0, v3}, Lcom/github/catvod/spider/Local;->a(Ljava/io/File;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_60
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2, p2, v1, p2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    const-string v1, "FongMi"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    const-string v1, "https://s1.ax1x.com/2023/05/04/p9tgogx.png"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    const-string v1, "\u64ad\u653e"

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u672c\u5730\u6587\u4ef6"

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2b
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->l(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "emulated"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "sdcard"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v5, "self"

    aput-object v5, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v2, v0

    :goto_47
    if-ge v4, v2, :cond_69

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_66

    :cond_56
    new-instance v6, Lcom/github/catvod/spider/merge/c/a;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2b
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/github/catvod/spider/Local;->a:Ljava/text/SimpleDateFormat;

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

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_76

    :cond_29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    array-length v1, p3

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_76

    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge/n/b;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 4
    new-instance v5, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v4

    .line 6
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 8
    :cond_76
    :goto_76
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
