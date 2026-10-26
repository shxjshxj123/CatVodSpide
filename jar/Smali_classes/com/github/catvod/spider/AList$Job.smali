.class Lcom/github/catvod/spider/AList$Job;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/github/catvod/spider/merge/c/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/e/a;

.field private final b:Ljava/lang/String;

.field final synthetic c:Lcom/github/catvod/spider/AList;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/AList;Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/github/catvod/spider/AList$Job;->c:Lcom/github/catvod/spider/AList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    iput-object p3, p0, Lcom/github/catvod/spider/AList$Job;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/AList$Job;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/AList$Job;->c:Lcom/github/catvod/spider/AList;

    iget-object v2, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "/api/fs/search"

    goto :goto_20

    :cond_1e
    const-string v4, "/api/public/search"

    :goto_20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    iget-object v5, p0, Lcom/github/catvod/spider/AList$Job;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v4

    const-string v6, "/"

    if-eqz v4, :cond_5d

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v7, "keywords"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "page"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "parent"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "per_page"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_71

    :cond_5d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v7, "keyword"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "path"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    :goto_71
    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v1, v2, v3, v4}, Lcom/github/catvod/spider/AList;->a(Lcom/github/catvod/spider/AList;Lcom/github/catvod/spider/merge/e/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/AList$Job;->c:Lcom/github/catvod/spider/AList;

    iget-object v3, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v3

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "data"

    if-eqz v3, :cond_98

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_a1

    :cond_98
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_a1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/github/catvod/spider/merge/e/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ad
    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/e/c;

    iget-object v3, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->k()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/e/c;->i(Z)Z

    move-result v3

    if-nez v3, :cond_ad

    iget-object v3, p0, Lcom/github/catvod/spider/AList$Job;->a:Lcom/github/catvod/spider/merge/e/a;

    iget-object v4, p0, Lcom/github/catvod/spider/AList$Job;->c:Lcom/github/catvod/spider/AList;

    invoke-static {v4}, Lcom/github/catvod/spider/AList;->b(Lcom/github/catvod/spider/AList;)Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v11, Lcom/github/catvod/spider/merge/c/i;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge/e/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/e/a;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/e/c;->j()Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_ef
    return-object v0
.end method
