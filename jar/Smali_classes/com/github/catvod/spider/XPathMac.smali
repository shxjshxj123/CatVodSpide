.class public Lcom/github/catvod/spider/XPathMac;
.super Lcom/github/catvod/spider/XPath;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/HashMap;
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
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/XPath;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/github/catvod/spider/XPathMac;->e:Ljava/lang/String;

    const-string v0, "[\\W|\\S|.]*?MacPlayerConfig.player_list[\\W|\\S|.]*?=([\\W|\\S|.]*?),MacPlayerConfig.downer_list"

    iput-object v0, p0, Lcom/github/catvod/spider/XPathMac;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/XPathMac;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected final d(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dcPlayUrl"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/catvod/spider/XPathMac;->c:Z

    const-string p1, "dcVipFlag"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/catvod/spider/XPathMac;->d:Z

    const-string p1, "dcShow2Vip"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/github/catvod/spider/XPathMac;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_40
    const-string p1, "pCfgJs"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/XPathMac;->e:Ljava/lang/String;

    const-string p1, "pCfgJsR"

    iget-object v1, p0, Lcom/github/catvod/spider/XPathMac;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/XPathMac;->f:Ljava/lang/String;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p1

    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_5f
    return-void
.end method

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

    const-string v0, "vod_play_from"

    const-string v1, "list"

    invoke-super {p0, p1}, Lcom/github/catvod/spider/XPath;->detailContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v2, p0, Lcom/github/catvod/spider/XPathMac;->d:Z

    if-eqz v2, :cond_64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64

    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\$\\$\\$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-lez v5, :cond_64

    const/4 v5, 0x0

    :goto_2e
    array-length v6, v3

    if-ge v5, v6, :cond_4a

    iget-object v6, p0, Lcom/github/catvod/spider/XPathMac;->g:Ljava/util/HashMap;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v6, p0, Lcom/github/catvod/spider/XPathMac;->g:Ljava/util/HashMap;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_4a
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "$$$"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lcom/github/catvod/spider/XPath;->homeContent(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/github/catvod/spider/XPathMac;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/github/catvod/spider/XPathMac;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/XPathMac;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_64

    :try_start_28
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_49

    goto :goto_36

    :cond_49
    const-string v4, "show"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_36

    :cond_5a
    iget-object v4, p0, Lcom/github/catvod/spider/XPathMac;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5f} :catch_60

    goto :goto_36

    :catch_60
    move-exception v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_64
    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/XPath;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 14
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

    const-string v0, "encrypt"

    invoke-virtual {p0}, Lcom/github/catvod/spider/XPath;->c()V

    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, p2

    goto :goto_1f

    :cond_13
    iget-object v1, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/i/a;->j0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{playUrl}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/github/catvod/spider/XPathMac;->c:Z

    const/4 v4, 0x2

    const-string v5, "url"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_99

    :try_start_29
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/XPath;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/R/c;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    const-string v3, "script"

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/T/m;->p0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/V/g;

    move-result-object v1

    const/4 v3, 0x0

    :goto_38
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v3, v8, :cond_99

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge/T/m;->d0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "var player_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_92

    const/16 v1, 0x7b

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v3, 0x7d

    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_80

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7e
    move-object v2, v0

    goto :goto_99

    :cond_80
    if-ne v0, v4, :cond_90

    new-instance v0, Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_8f} :catch_95

    goto :goto_7e

    :cond_90
    move-object v2, v1

    goto :goto_99

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :catch_95
    move-exception v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    if-eqz v2, :cond_198

    iget-boolean v0, p0, Lcom/github/catvod/spider/XPathMac;->d:Z

    const-string v1, "parse"

    if-eqz v0, :cond_11a

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "iqiyi.com"

    aput-object v3, v0, v6

    const-string v3, "v.qq.com"

    aput-object v3, v0, v7

    const-string v3, "youku.com"

    aput-object v3, v0, v4

    const/4 v3, 0x3

    const-string v4, "le.com"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "tudou.com"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "mgtv.com"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "sohu.com"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "acfun.cn"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "bilibili.com"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "baofeng.com"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "pptv.com"

    aput-object v4, v0, v3

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v0, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v0, 0x0

    :goto_fb
    if-eqz v0, :cond_11a

    .line 2
    :try_start_fd
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jx"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_113} :catch_114

    return-object p1

    :catch_114
    move-exception v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_198

    :cond_11a
    iget-boolean v0, p0, Lcom/github/catvod/spider/XPathMac;->d:Z

    const-string v3, "header"

    const-string v4, "playUrl"

    const-string v8, ""

    if-eqz v0, :cond_140

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    :try_start_12a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_13f} :catch_114

    return-object p1

    :cond_140
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/XPath;->isVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    :try_start_146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_170

    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->i0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_170
    iget-object v2, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/i/a;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_187

    const-string v2, "Referer"

    iget-object v4, p0, Lcom/github/catvod/spider/XPath;->b:Lcom/github/catvod/spider/merge/i/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/i/a;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_187
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_197} :catch_114

    return-object p1

    :cond_198
    :goto_198
    invoke-super {p0, p1, p2, p3}, Lcom/github/catvod/spider/XPath;->playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
