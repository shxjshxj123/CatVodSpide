.class public final Lcom/github/catvod/spider/merge/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/AlertDialog;

.field private d:Ljava/lang/String;

.field private e:Lcom/github/catvod/spider/merge/d/m;

.field private f:Lcom/github/catvod/spider/merge/d/g;

.field private g:Lcom/github/catvod/spider/merge/d/e;

.field private h:Lcom/github/catvod/spider/merge/d/n;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    const-string v0, "aliyundrive_user"

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/n;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    const-string v0, "aliyundrive_oauth"

    .line 4
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    const-string v0, "aliyundrive_drive"

    .line 6
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/e;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://open.aliyundrive.com/adrive/v1.0/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/g;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_dc

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result p3

    const/16 v1, 0x190

    if-eq p3, v1, :cond_59

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result p3

    const/16 v1, 0x191

    if-ne p3, v1, :cond_dc

    .line 4
    :cond_59
    iget-object p3, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/d/g;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const-string v1, "grant_type"

    if-eqz p3, :cond_b6

    const-string p3, "OAuth Request..."

    .line 5
    invoke-static {p3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "authorize"

    invoke-virtual {p3, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "scope"

    const-string v4, "user:base,file:all:read,file:all:write"

    invoke-virtual {p3, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "https://open.aliyundrive.com/oauth/users/authorize?client_id=76917ccccd4441c39457a04f6084fb2f&redirect_uri=https://alist.nn.ci/tool/aliyundrive/callback&scope=user:base,file:all:read,file:all:write&state="

    invoke-direct {p0, v3, p3, v2}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 6
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/github/catvod/spider/merge/d/b;

    invoke-virtual {v2, p3, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/catvod/spider/merge/d/b;

    .line 7
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/d/b;->a()Ljava/lang/String;

    move-result-object p3

    const-string v2, "OAuth Redirect..."

    .line 8
    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "code"

    invoke-virtual {v2, v3, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "authorization_code"

    invoke-virtual {v2, v1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/github/catvod/spider/merge/b/t;->m(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    move-result p3

    goto :goto_d4

    :cond_b6
    const-string p3, "refreshOpenToken..."

    .line 9
    invoke-static {p3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "refresh_token"

    invoke-virtual {p3, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    invoke-direct {p0, v1, p3}, Lcom/github/catvod/spider/merge/b/t;->m(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    move-result p3

    :goto_d4
    if-eqz p3, :cond_dc

    const/4 p3, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/b/t;->A(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_dc
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private C(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .registers 5

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://api.aliyundrive.com/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private E()Z
    .registers 8

    const-string v0, "refresh_token"

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa

    :try_start_5
    const-string v4, "refreshAccessToken..."

    invoke-static {v4}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v5, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge/d/n;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v5, p0, Lcom/github/catvod/spider/merge/b/t;->d:Ljava/lang/String;

    :cond_1d
    if-eqz v5, :cond_34

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v6, 0x0

    .line 1
    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    :catchall_31
    move-exception v0

    goto/16 :goto_a8

    :cond_34
    :goto_34
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "grant_type"

    invoke-virtual {v4, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "https://auth.aliyundrive.com/v2/account/token"

    invoke-direct {p0, v0, v4}, Lcom/github/catvod/spider/merge/b/t;->C(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/n;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/d/n;->g()Lcom/github/catvod/spider/merge/d/n;

    iput-object v4, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/d/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_53} :catch_6c
    .catchall {:try_start_5 .. :try_end_53} :catchall_31

    if-nez v4, :cond_66

    :goto_55
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_55

    :cond_65
    return v1

    :cond_66
    :try_start_66
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_31

    :catch_6c
    move-exception v0

    :try_start_6d
    instance-of v4, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v4, :cond_86

    .line 3
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->K()V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_31

    const/4 v0, 0x0

    .line 4
    :goto_75
    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_75

    :cond_85
    return v0

    :cond_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/n;->a()Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/n;->g()Lcom/github/catvod/spider/merge/d/n;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->K()V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->J()V
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_31

    :goto_97
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_97

    :cond_a7
    return v1

    :goto_a8
    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_a8

    :cond_b8
    goto :goto_ba

    :goto_b9
    throw v0

    :goto_ba
    goto :goto_b9
.end method

.method private F(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->e:Lcom/github/catvod/spider/merge/d/m;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/d/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const-string v0, "refreshShareToken..."

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "share_id"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "share_pwd"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v2/share_link/get_share_token"

    invoke-direct {p0, v1, v0}, Lcom/github/catvod/spider/merge/b/t;->C(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge/d/m;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d/m;

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/d/m;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/m;->g()Lcom/github/catvod/spider/merge/d/m;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->e:Lcom/github/catvod/spider/merge/d/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/m;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "\u4f86\u665a\u5566\uff0c\u8a72\u5206\u4eab\u5df2\u5931\u6548\u3002"

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method private H(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/d/n;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->E()Z

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->K()V

    return-void
.end method

.method private I(Lcom/github/catvod/spider/merge/d/c;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/R/c;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/github/catvod/spider/merge/b/i;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/b/i;-><init>(Lcom/github/catvod/spider/merge/b/t;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/github/catvod/spider/merge/b/l;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/b/l;-><init>(Lcom/github/catvod/spider/merge/b/t;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/t;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "\u8acb\u4f7f\u7528\u963f\u91cc\u96f2\u76e4 App \u6383\u63cf\u4e8c\u7dad\u78bc"

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method

.method private J()V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    if-eqz v2, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    if-eqz v0, :cond_41

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge/b/p;

    invoke-direct {v0, p0, v3}, Lcom/github/catvod/spider/merge/b/p;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    goto :goto_44

    :cond_41
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->u()V

    :goto_44
    return-void
.end method

.method private K()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_7
    new-instance v0, Lcom/github/catvod/spider/merge/b/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/o;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/github/catvod/spider/merge/b/t;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_16

    goto :goto_2a

    :cond_16
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "http://"

    const-string v2, "/proxy?do=ali&type=token"

    .line 2
    invoke-static {v0, p1, v2}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_26
    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_2a
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/b/t;->H(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public static b(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/d/e;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v5, 0x2

    aput-object v1, v2, v5

    const-string v5, "{\"requests\":[{\"body\":{\"drive_id\":\"%s\",\"file_id\":\"%s\"},\"headers\":{\"Content-Type\":\"application/json\"},\"id\":\"%s\",\"method\":\"POST\",\"url\":\"/file/delete\"}],\"resource\":\"file\"}"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "adrive/v2/batch"

    invoke-direct {p0, v5, v2, v3}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/github/catvod/spider/merge/d/l;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/d/l;

    .line 4
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/l;->b()Lcom/github/catvod/spider/merge/d/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/l;->c()I

    move-result v2

    const/16 v5, 0x194

    if-ne v2, v5, :cond_66

    const/4 v4, 0x1

    :cond_66
    if-eqz v4, :cond_e

    .line 5
    iget-object v2, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_6e
    return-void
.end method

.method public static c(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->K()V

    return-void
.end method

.method public static d(Lcom/github/catvod/spider/merge/b/t;Ljava/util/Map;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "https://passport.aliyundrive.com/newlogin/qrcode/query.do?appName=aliyun_drive&fromSite=52&_bx-v=2.2.3"

    .line 1
    invoke-static {v1, p1, v0, v0}, Lcom/github/catvod/spider/merge/k/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge/d/c;->g(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->b()Lcom/github/catvod/spider/merge/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->c()Lcom/github/catvod/spider/merge/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->f()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/b/t;->H(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public static synthetic e(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->p()V

    return-void
.end method

.method public static f(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->p()V

    new-instance v0, Lcom/github/catvod/spider/merge/b/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/q;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->K()V

    return-void
.end method

.method public static h(Lcom/github/catvod/spider/merge/b/t;Landroid/widget/EditText;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->p()V

    new-instance v0, Lcom/github/catvod/spider/merge/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/catvod/spider/merge/b/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i(Lcom/github/catvod/spider/merge/b/t;Lcom/github/catvod/spider/merge/d/c;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/c;->d()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/github/catvod/spider/merge/b/e;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lcom/github/catvod/spider/merge/b/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static j(Lcom/github/catvod/spider/merge/b/t;Ljava/lang/String;Lcom/github/catvod/spider/merge/d/c;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.alicloud.databox"

    const-string v3, "com.taobao.login4android.scan.QrScanActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "key_scanParam"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_26
    .catchall {:try_start_4 .. :try_end_1e} :catchall_24

    new-instance p1, Lcom/github/catvod/spider/merge/b/g;

    invoke-direct {p1, p0, p2}, Lcom/github/catvod/spider/merge/b/g;-><init>(Lcom/github/catvod/spider/merge/b/t;Lcom/github/catvod/spider/merge/d/c;)V

    goto :goto_2e

    :catchall_24
    move-exception p1

    goto :goto_32

    :catch_26
    :try_start_26
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/b/t;->I(Lcom/github/catvod/spider/merge/d/c;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_24

    new-instance p1, Lcom/github/catvod/spider/merge/b/c;

    invoke-direct {p1, p0, p2, v0}, Lcom/github/catvod/spider/merge/b/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_2e
    invoke-static {p1}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_32
    new-instance v1, Lcom/github/catvod/spider/merge/b/b;

    invoke-direct {v1, p0, p2, v0}, Lcom/github/catvod/spider/merge/b/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    throw p1
.end method

.method public static synthetic k(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->u()V

    return-void
.end method

.method public static l(Lcom/github/catvod/spider/merge/b/t;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v3

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v4

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8acb\u8f38\u5165Token"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "QRCode"

    new-instance v3, Lcom/github/catvod/spider/merge/b/j;

    invoke-direct {v3, p0}, Lcom/github/catvod/spider/merge/b/j;-><init>(Lcom/github/catvod/spider/merge/b/t;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/github/catvod/spider/merge/b/k;

    invoke-direct {v3, p0, v2}, Lcom/github/catvod/spider/merge/b/k;-><init>(Lcom/github/catvod/spider/merge/b/t;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->c:Landroid/app/AlertDialog;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_6b

    :catch_6b
    return-void
.end method

.method private m(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z
    .registers 5

    const-string v0, "https://aliapi.ewwe.gq/alist/ali_open/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Too Many Requests"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_47

    const/4 p1, 0x0

    goto :goto_55

    :cond_47
    const-string p1, "\u6d17\u6d17\u7761\u5427\uff0cToo Many Requests\u3002"

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/g;->a()Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/g;->e()Lcom/github/catvod/spider/merge/d/g;

    const/4 p1, 0x1

    :goto_55
    if-eqz p1, :cond_58

    return v1

    .line 4
    :cond_58
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/d/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/g;->e()Lcom/github/catvod/spider/merge/d/g;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/t;->f:Lcom/github/catvod/spider/merge/d/g;

    return v0
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://api.aliyundrive.com/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge/k/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/github/catvod/spider/merge/k/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_52

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_52

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->E()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-direct {p0, p1, p2, v1}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_52
    if-eqz p3, :cond_61

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->b()I

    move-result p3

    const/16 v2, 0x1ad

    if-ne p3, v2, :cond_61

    invoke-direct {p0, p1, p2, v1}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_61
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/k/d;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    const-string v0, "Get Drive Id..."

    .line 1
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    const-string v0, "https://user.aliyundrive.com/v2/user/get"

    const-string v2, "{}"

    invoke-direct {p0, v0, v2, v1}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/e;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/e;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/github/catvod/spider/merge/b/t;->q()Lcom/github/catvod/spider/merge/b/t;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "aliyundrive_drive"

    .line 3
    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/n/a;->k(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    .line 6
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copy..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/e;->a()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "{\"requests\":[{\"body\":{\"file_id\":\"%s\",\"share_id\":\"%s\",\"auto_rename\":true,\"to_parent_file_id\":\"root\",\"to_drive_id\":\"%s\"},\"headers\":{\"Content-Type\":\"application/json\"},\"id\":\"0\",\"method\":\"POST\",\"url\":\"/file/copy\"}],\"resource\":\"file\"}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "adrive/v2/batch"

    invoke-direct {p0, p2, p1, v1}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/github/catvod/spider/merge/d/l;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d/l;

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/l;->b()Lcom/github/catvod/spider/merge/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/l;->a()Lcom/github/catvod/spider/merge/d/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/k;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private p()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge/b/t;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public static q()Lcom/github/catvod/spider/merge/b/t;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/b/s;->a:Lcom/github/catvod/spider/merge/b/t;

    return-object v0
.end method

.method private t()Ljava/util/HashMap;
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

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->e:Lcom/github/catvod/spider/merge/d/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/m;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-share-token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-Canary"

    const-string v2, "client=Android,app=adrive,version=v4.3.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/n;->e()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/n;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-object v0
.end method

.method private u()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "https://passport.aliyundrive.com/newlogin/qrcode/generate.do?appName=aliyun_drive&fromSite=52&appName=aliyun_drive&appEntrance=web&isMobile=false&lang=zh_CN&returnUrl=&bizParams=&_bx-v=2.2.3"

    .line 1
    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge/d/c;->g(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/c;->b()Lcom/github/catvod/spider/merge/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/c;->c()Lcom/github/catvod/spider/merge/d/c;

    move-result-object v1

    new-instance v2, Lcom/github/catvod/spider/merge/b/h;

    invoke-direct {v2, p0, v0, v1}, Lcom/github/catvod/spider/merge/b/h;-><init>(Lcom/github/catvod/spider/merge/b/t;Ljava/lang/String;Lcom/github/catvod/spider/merge/d/c;)V

    invoke-static {v2}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method private y(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/d/f;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/d/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/d/f;",
            ">;)V"
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/b/t;->z(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private z(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/d/f;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/d/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/d/f;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "share_id"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/f;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent_file_id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "order_by"

    const-string v3, "name"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "order_direction"

    const-string v3, "ASC"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    const-string v2, "marker"

    invoke-virtual {v1, v2, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x1

    const-string v2, "adrive/v3/file/list"

    invoke-direct {p0, v2, p5, v1}, Lcom/github/catvod/spider/merge/b/t;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    .line 1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge/d/f;

    invoke-virtual {v1, p5, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/catvod/spider/merge/d/f;

    .line 2
    invoke-virtual {p5}, Lcom/github/catvod/spider/merge/d/f;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5c
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/d/f;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/f;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_78
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/f;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_9f

    :cond_91
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/n/b;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_9f
    :goto_9f
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/d/f;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/f;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_aa
    invoke-virtual {p5}, Lcom/github/catvod/spider/merge/d/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c0

    invoke-virtual {p5}, Lcom/github/catvod/spider/merge/d/f;->g()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/github/catvod/spider/merge/b/t;->z(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_c0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_d4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/github/catvod/spider/merge/d/f;

    invoke-direct {p0, p1, p5, p3, p4}, Lcom/github/catvod/spider/merge/b/t;->y(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;)V

    goto :goto_c4

    :cond_d4
    return-void
.end method


# virtual methods
.method public final B([Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2a

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    aget-object v1, p1, v1

    aget-object v0, p1, v0

    invoke-virtual {p0, v1, v0}, Lcom/github/catvod/spider/merge/b/t;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->f()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/b/t;->v([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2a
    aget-object p2, p1, v1

    aget-object v2, p1, v0

    .line 5
    :try_start_2e
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/b/t;->F(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoPreviewPlayInfo..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v2}, Lcom/github/catvod/spider/merge/b/t;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "file_id"

    iget-object v3, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "drive_id"

    iget-object v3, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/d/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "category"

    const-string v3, "live_transcoding"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url_expire_sec"

    const-string v3, "14400"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "openFile/getVideoPreviewPlayInfo"

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2, v0}, Lcom/github/catvod/spider/merge/b/t;->A(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge/d/j;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge/d/j;

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/j;->a()Lcom/github/catvod/spider/merge/d/h;

    move-result-object p2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_94} :catch_9d
    .catchall {:try_start_2e .. :try_end_94} :catchall_9a

    new-instance v0, Lcom/github/catvod/spider/merge/b/q;

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/q;-><init>(Ljava/lang/Object;I)V

    goto :goto_ab

    :catchall_9a
    move-exception p1

    goto/16 :goto_11f

    :catch_9d
    move-exception p2

    :try_start_9e
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/github/catvod/spider/merge/d/h;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/d/h;-><init>()V
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_9a

    new-instance v0, Lcom/github/catvod/spider/merge/b/n;

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/n;-><init>(Ljava/lang/Object;I)V

    :goto_ab
    invoke-static {v0}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/h;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_bb
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_da

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/d/i;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/d/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/d/i;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/d/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 9
    :cond_da
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/b/t;->v([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/d/h;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_eb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/d/i;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/i;->a()Lcom/github/catvod/spider/merge/c/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    .line 11
    :cond_ff
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 13
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge/c/f;->r(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->e()Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/b/t;->s()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 14
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :goto_11f
    new-instance p2, Lcom/github/catvod/spider/merge/b/a;

    invoke-direct {p2, p0, v1}, Lcom/github/catvod/spider/merge/b/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    goto :goto_129

    :goto_128
    throw p1

    :goto_129
    goto :goto_128
.end method

.method public final D(Ljava/util/Map;)[Ljava/lang/Object;
    .registers 5
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

    const-string v0, "fileId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "shareId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge/b/t;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/b/t;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->a(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    .line 1
    :try_start_26
    new-instance v0, Lcom/github/catvod/spider/merge/W/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/W/b;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/github/catvod/spider/merge/W/b;->c([BI)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/W/b;->a()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/W/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_41} :catch_41

    :catch_41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xc8

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final G(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/b/t;->d:Ljava/lang/String;

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/b/t;->F(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadUrl..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge/b/t;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p2, "file_id"

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "drive_id"

    iget-object v1, p0, Lcom/github/catvod/spider/merge/b/t;->g:Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "openFile/getDownloadUrl"

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/github/catvod/spider/merge/b/t;->A(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/github/catvod/spider/merge/d/d;

    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/d/d;

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/d/d;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_62
    .catchall {:try_start_1 .. :try_end_5a} :catchall_60

    new-instance p2, Lcom/github/catvod/spider/merge/b/f;

    invoke-direct {p2, p0}, Lcom/github/catvod/spider/merge/b/f;-><init>(Lcom/github/catvod/spider/merge/b/t;)V

    goto :goto_6d

    :catchall_60
    move-exception p1

    goto :goto_71

    :catch_62
    move-exception p1

    :try_start_63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    new-instance p2, Lcom/github/catvod/spider/merge/b/f;

    invoke-direct {p2, p0}, Lcom/github/catvod/spider/merge/b/f;-><init>(Lcom/github/catvod/spider/merge/b/t;)V

    :goto_6d
    invoke-static {p2}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :goto_71
    new-instance p2, Lcom/github/catvod/spider/merge/b/m;

    invoke-direct {p2, p0, v0}, Lcom/github/catvod/spider/merge/b/m;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    throw p1
.end method

.method public final s()Ljava/util/HashMap;
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

    const-string v1, "Referer"

    const-string v2, "https://www.aliyundrive.com/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final v([Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_58

    aget-object v4, p1, v3

    const-string v5, "@@@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_55

    :cond_15
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/Proxy;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?do=ali&type=sub&shareId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1
    new-instance v7, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v7}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 2
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_58
    return-object v0
.end method

.method public final w()[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/b/t;->h:Lcom/github/catvod/spider/merge/d/n;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/d/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v6, v8}, Lcom/github/catvod/spider/merge/b/t;->F(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "share_id"

    invoke-virtual {v0, v1, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adrive/v3/share_link/get_share_by_anonymous"

    invoke-direct {v6, v1, v0}, Lcom/github/catvod/spider/merge/b/t;->C(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge/d/m;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/github/catvod/spider/merge/d/m;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/github/catvod/spider/merge/d/f;

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_3d

    move-object/from16 v0, p3

    goto :goto_67

    :cond_3d
    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/d/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, ""

    goto :goto_67

    :cond_4a
    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/d/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/d/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/f;->j()Ljava/lang/String;

    move-result-object v1

    const-string v3, "folder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/d/f;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    :cond_65
    const-string v0, "root"

    .line 4
    :goto_67
    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge/d/f;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v10

    move-object v4, v11

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/b/t;->z(Ljava/lang/String;Lcom/github/catvod/spider/merge/d/f;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u539f\u756b"

    aput-object v1, v0, v12

    const-string v1, "\u666e\u756b"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_154

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/d/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/d/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "+"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/d/f;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/d/f;->f()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_100

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/catvod/spider/merge/d/f;

    invoke-virtual {v15}, Lcom/github/catvod/spider/merge/d/f;->f()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_fb

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_fe

    :cond_fb
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    const/4 v12, 0x0

    goto :goto_d7

    .line 9
    :cond_100
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_112
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_143

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/catvod/spider/merge/d/f;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/d/f;->f()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/github/catvod/spider/merge/n/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "@@@"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/d/f;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/d/f;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_112

    :cond_143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto/16 :goto_96

    :cond_154
    const/4 v12, 0x0

    :goto_155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_167

    const-string v3, "#"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_155

    :cond_167
    new-instance v1, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/d/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/d/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    const-string v3, "$$$"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    const-string v0, "\u963f\u91cc\u96f2\u76e4"

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    return-object v1
.end method
