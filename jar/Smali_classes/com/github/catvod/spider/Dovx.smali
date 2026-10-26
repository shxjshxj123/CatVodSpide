.class public Lcom/github/catvod/spider/Dovx;
.super Lcom/github/catvod/spider/Ali;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/Ali;-><init>()V

    return-void
.end method


# virtual methods
.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const-string p2, "https://api.dovx.tk/ali/search?wd="

    .line 1
    invoke-static {p2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    goto :goto_2b

    .line 6
    :cond_3f
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
