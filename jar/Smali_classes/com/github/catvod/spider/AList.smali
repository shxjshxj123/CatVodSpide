.class public Lcom/github/catvod/spider/AList;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method static a(Lcom/github/catvod/spider/AList;Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/catvod/spider/AList;->g(Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/github/catvod/spider/AList;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/AList;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/AList;->a:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/AList;->c:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/AList;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/AList;->c:Ljava/lang/String;

    :cond_1e
    iget-object v0, p0, Lcom/github/catvod/spider/AList;->c:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e/a;

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/AList;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/AList;->b:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/c;
    .registers 6

    const-string v0, "/"

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_22
    const-string p1, ""

    :goto_24
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/AList;->e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_46

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "path"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "password"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "/api/fs/get"

    goto :goto_70

    :cond_6e
    const-string v3, "/api/public/path"

    :goto_70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1, v3}, Lcom/github/catvod/spider/AList;->g(Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v0

    const-string v1, "data"

    if-eqz v0, :cond_92

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_a5

    :cond_92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "files"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    :goto_a5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/github/catvod/spider/merge/e/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/e/c;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b6} :catch_b7

    return-object p1

    .line 7
    :catch_b7
    new-instance p1, Lcom/github/catvod/spider/merge/e/c;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/e/c;-><init>()V

    return-object p1
.end method

.method private e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/a;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/AList;->a:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge/e/a;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/e/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e/a;->a()Lcom/github/catvod/spider/merge/e/a;

    return-object p1
.end method

.method private f(Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/e/c;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_22
    const-string p1, ""

    :goto_24
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/AList;->e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_46

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "/api/fs/list"

    goto :goto_70

    :cond_6e
    const-string v2, "/api/public/path"

    :goto_70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/github/catvod/spider/AList;->g(Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v1

    const-string v2, "data"

    if-eqz v1, :cond_94

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "content"

    goto :goto_9f

    :cond_94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "files"

    :goto_9f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/github/catvod/spider/merge/e/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz p2, :cond_cb

    :cond_b1
    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/e/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge/e/c;->i(Z)Z

    move-result p2

    if-eqz p2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ca} :catch_cc

    goto :goto_b1

    :cond_cb
    return-object p1

    :catch_cc
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_7d

    const-string p4, "Guest user is disabled"

    invoke-virtual {v0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7d

    const/4 p4, 0x0

    .line 1
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "username"

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e/a;->f()Lcom/github/catvod/spider/merge/e/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e/a;->f()Lcom/github/catvod/spider/merge/e/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api/auth/login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v1, v3}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/e/a;->m(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6f} :catch_71

    const/4 v1, 0x1

    goto :goto_76

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_76
    if-eqz v1, :cond_7d

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/catvod/spider/AList;->g(Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7d
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

    invoke-direct {p0}, Lcom/github/catvod/spider/AList;->c()V

    const-string p2, "type"

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, ""

    if-eqz p3, :cond_14

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_15

    :cond_14
    move-object p2, v0

    :goto_15
    const-string p3, "order"

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :cond_24
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/github/catvod/spider/AList;->f(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/e/c;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e/c;->j()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_52
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    invoke-static {p2, v0, p3}, Lcom/github/catvod/spider/merge/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p2, v0, p4}, Lcom/github/catvod/spider/merge/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_68
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_82

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/catvod/spider/merge/e/c;

    iget-object v0, p0, Lcom/github/catvod/spider/AList;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Lcom/github/catvod/spider/merge/e/c;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_82
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_86
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/catvod/spider/merge/e/c;

    iget-object p4, p0, Lcom/github/catvod/spider/AList;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p4}, Lcom/github/catvod/spider/merge/e/c;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 1
    :cond_9c
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, v2, v2, p2, v2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/catvod/spider/AList;->c()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    move-object v2, p1

    :goto_1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/AList;->e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/a;

    move-result-object v4

    invoke-direct {p0, v3, v0}, Lcom/github/catvod/spider/AList;->f(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    const-string v5, "name"

    const-string v6, "asc"

    invoke-static {v5, v6, v0}, Lcom/github/catvod/spider/merge/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v5, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v5, v2}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/github/catvod/spider/AList;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/e/c;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/e/c;->k(Z)Z

    move-result v6

    if-eqz v6, :cond_59

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/e/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_90
    :goto_90
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/e/c;

    .line 2
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-static {v9}, Lcom/github/catvod/spider/merge/n/b;->g(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_90

    const-string v9, "~~~"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@@@"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/github/catvod/spider/merge/n/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Lcom/github/catvod/spider/merge/e/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    :cond_d1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    :cond_e1
    const-string v0, "#"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 16

    invoke-direct {p0}, Lcom/github/catvod/spider/AList;->c()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/AList;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/a;->j()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1
    new-instance v3, Lcom/github/catvod/spider/merge/c/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-direct {v3, v4, v2, v5}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

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

    goto/16 :goto_40

    :cond_cc
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->k(Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iput-object p2, p0, Lcom/github/catvod/spider/AList;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/catvod/spider/AList;->c()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
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

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/AList;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/e/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_56

    aget-object v3, p1, v2

    const-string v4, "@@@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_53

    :cond_2d
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, p3

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-direct {p0, v3}, Lcom/github/catvod/spider/AList;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/c;->f()Ljava/lang/String;

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

    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 6
    :cond_56
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    invoke-direct {p0}, Lcom/github/catvod/spider/AList;->c()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/AList;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->l()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Lcom/github/catvod/spider/AList$Job;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->a()Lcom/github/catvod/spider/merge/e/a;

    invoke-direct {v4, p0, v3, p1}, Lcom/github/catvod/spider/AList$Job;-><init>(Lcom/github/catvod/spider/AList;Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_39
    const-wide/16 v2, 0xf

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_45

    :cond_5b
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
