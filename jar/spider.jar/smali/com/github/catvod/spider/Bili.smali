.class public Lcom/github/catvod/spider/Bili;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/google/gson/JsonObject;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method public static a(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    :try_start_4
    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Bili;->k(Lcom/github/catvod/spider/merge/f/b;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_17
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    new-instance v1, Lcom/github/catvod/spider/merge/b/b;

    invoke-direct {v1, p0, p1, v0}, Lcom/github/catvod/spider/merge/b/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1f

    :catchall_15
    move-exception v0

    goto :goto_23

    :catch_17
    :try_start_17
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Bili;->o(Lcom/github/catvod/spider/merge/f/b;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_15

    new-instance v1, Lcom/github/catvod/spider/merge/b/e;

    invoke-direct {v1, p0, p1, v0}, Lcom/github/catvod/spider/merge/b/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_1f
    invoke-static {v1}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_23
    new-instance v1, Lcom/github/catvod/spider/merge/l/c;

    invoke-direct {v1, p0, p1}, Lcom/github/catvod/spider/merge/l/c;-><init>(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V

    invoke-static {v1}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method

.method public static b(Lcom/github/catvod/spider/Bili;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object p0, p0, Lcom/github/catvod/spider/Bili;->c:Landroid/app/AlertDialog;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public static c(Lcom/github/catvod/spider/Bili;)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->n()Ljava/io/File;

    move-result-object v0

    const-string v1, "buvid3=84B0395D-C9F2-C490-E92E-A09AB48FE26E71636infoc"

    iput-object v1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/n/a;->k(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->p()V

    return-void
.end method

.method public static d(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/Bili;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/github/catvod/spider/merge/b/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/github/catvod/spider/merge/b/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static e(Lcom/github/catvod/spider/Bili;Lcom/github/catvod/spider/merge/f/b;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://passport.bilibili.com/x/passport-login/web/qrcode/poll?qrcode_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&source=main_mini"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_70

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v1, :cond_5b

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_5b
    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->n()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/n/a;->k(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "\u8acb\u91cd\u65b0\u9032\u5165\u64ad\u653e\u9801"

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->p()V

    :cond_70
    return-void
.end method

.method public static f(Lcom/github/catvod/spider/Bili;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->p()V

    return-void
.end method

.method private g(Lcom/github/catvod/spider/merge/f/a;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/f/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/Bili;->l(Lcom/github/catvod/spider/merge/f/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_26
    return-void
.end method

.method private h(Lcom/github/catvod/spider/merge/f/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v5, v1

    const/4 v0, 0x5

    aput-object p2, v5, v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->k()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    aput-object p2, v5, v0

    const/4 p2, 0x7

    aput-object v3, v5, p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->j()Lcom/github/catvod/spider/merge/f/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/f/h;->a()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    aput-object p2, v5, v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->j()Lcom/github/catvod/spider/merge/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/h;->b()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v5, p2

    const-string p1, "<AdaptationSet>\n<ContentComponent contentType=\"%s\"/>\n<Representation id=\"%s\" bandwidth=\"%s\" codecs=\"%s\" mimeType=\"%s\" %s startWithSAP=\"%s\">\n<BaseURL>%s</BaseURL>\n<SegmentBase indexRange=\"%s\">\n<Initialization range=\"%s\"/>\n</SegmentBase>\n</Representation>\n</AdaptationSet>"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "buvid3=84B0395D-C9F2-C490-E92E-A09AB48FE26E71636infoc"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/Bili;->j(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cookie"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "User-Agent"

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Referer"

    const-string v1, "https://www.bilibili.com"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private k(Lcom/github/catvod/spider/merge/f/b;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.bilibili.app.in"

    const-string v2, "tv.danmaku.bili.ui.intent.IntentHandlerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private l(Lcom/github/catvod/spider/merge/f/c;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "height=\'%s\' width=\'%s\' frameRate=\'%s\' sar=\'%s\'"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_36
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/Bili;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "numChannels=\'2\' sampleRate=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-direct {p0, p1, v0}, Lcom/github/catvod/spider/Bili;->h(Lcom/github/catvod/spider/merge/f/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5b
    const-string p1, ""

    return-object p1
.end method

.method private m()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/Bili;->j(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/io/File;
    .registers 2

    const-string v0, "bilibili_user"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private o(Lcom/github/catvod/spider/merge/f/b;)V
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

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/b;->k()Ljava/lang/String;

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

    new-instance v0, Lcom/github/catvod/spider/merge/l/a;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/l/a;-><init>(Lcom/github/catvod/spider/Bili;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/github/catvod/spider/merge/l/b;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/l/b;-><init>(Lcom/github/catvod/spider/Bili;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "\u8acb\u4f7f\u7528 BiliBili App \u6383\u63cf\u4e8c\u7dad\u78bc"

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/b;->h(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/Bili;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_7
    new-instance v0, Lcom/github/catvod/spider/merge/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    return-void
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

    const-string p3, "order"

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_11

    :cond_f
    const-string p3, "totalrank"

    :goto_11
    const-string v0, "duration"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_22

    :cond_20
    const-string v0, "0"

    :goto_22
    const-string v1, "tid"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    const-string p4, "https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword="

    .line 1
    invoke-static {p4}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&order="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&duration="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->i()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/b;->h()Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/f/f;->a(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/catvod/spider/merge/f/f;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/f;->c()Lcom/github/catvod/spider/merge/c/i;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_a2
    invoke-static {p2}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/github/catvod/spider/Bili;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4b

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->m()Ljava/util/Map;

    move-result-object v0

    const-string v2, "https://api.bilibili.com/x/web-interface/nav"

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/b;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/catvod/spider/Bili;->f:Z

    if-nez v0, :cond_4b

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->n()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    const-string v2, "buvid3=84B0395D-C9F2-C490-E92E-A09AB48FE26E71636infoc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4b

    :cond_34
    const/4 v0, 0x0

    const-string v2, "https://passport.bilibili.com/x/passport-login/web/qrcode/generate?source=main-mini"

    .line 3
    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object v0

    new-instance v2, Lcom/github/catvod/spider/merge/b/c;

    invoke-direct {v2, p0, v0, v1}, Lcom/github/catvod/spider/merge/b/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v0

    aget-object v1, v2, v1

    const-string v2, "https://api.bilibili.com/x/web-interface/view?aid="

    .line 6
    invoke-static {v2, v1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->m()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object v2

    new-instance v4, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u9418"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/b;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "+"

    const-string v8, "$"

    if-eqz v6, :cond_101

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/f/d;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/f/d;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/f/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_101
    const-string v1, "#"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "B\u7ad9"

    invoke-virtual {p1, v5, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "https://api.bilibili.com/x/web-interface/archive/related?bvid="

    .line 8
    invoke-static {v5, v3}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->m()Ljava/util/Map;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_12a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_164

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "title"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "aid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    :cond_164
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u76f8\u5173\u63a8\u8350"

    invoke-virtual {p1, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "$$$"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/catvod/spider/Bili;->d:Lcom/google/gson/JsonObject;

    const-string v2, "json"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/github/catvod/spider/Bili;->d:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, v0, Lcom/github/catvod/spider/Bili;->d:Lcom/google/gson/JsonObject;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3b
    if-ge v7, v5, :cond_ed

    aget-object v8, v4, v7

    new-instance v9, Lcom/github/catvod/spider/merge/c/a;

    .line 3
    invoke-direct {v9, v8, v8, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/github/catvod/spider/merge/c/c;

    const/4 v11, 0x5

    new-array v12, v11, [Lcom/github/catvod/spider/merge/c/b;

    new-instance v13, Lcom/github/catvod/spider/merge/c/b;

    const-string v14, "\u9810\u8a2d"

    const-string v15, "totalrank"

    invoke-direct {v13, v14, v15}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v12, v6

    new-instance v13, Lcom/github/catvod/spider/merge/c/b;

    const-string v14, "\u6700\u591a\u9ede\u64ca"

    const-string v15, "click"

    invoke-direct {v13, v14, v15}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v12, v14

    new-instance v13, Lcom/github/catvod/spider/merge/c/b;

    const-string v15, "\u6700\u65b0\u767c\u5e03"

    const-string v3, "pubdate"

    invoke-direct {v13, v15, v3}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v13, v12, v3

    new-instance v13, Lcom/github/catvod/spider/merge/c/b;

    const-string v15, "\u6700\u591a\u5f48\u5e55"

    const-string v3, "dm"

    invoke-direct {v13, v15, v3}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v13, v12, v3

    new-instance v13, Lcom/github/catvod/spider/merge/c/b;

    const-string v15, "\u6700\u591a\u6536\u85cf"

    const-string v3, "stow"

    invoke-direct {v13, v15, v3}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v13, v12, v3

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "order"

    const-string v15, "\u6392\u5e8f"

    invoke-direct {v10, v13, v15, v12}, Lcom/github/catvod/spider/merge/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/github/catvod/spider/merge/c/c;

    new-array v11, v11, [Lcom/github/catvod/spider/merge/c/b;

    new-instance v12, Lcom/github/catvod/spider/merge/c/b;

    const-string v13, "\u5168\u90e8\u6642\u9577"

    const-string v15, "0"

    invoke-direct {v12, v13, v15}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v11, v6

    new-instance v12, Lcom/github/catvod/spider/merge/c/b;

    const-string v13, "60\u5206\u9418\u4ee5\u4e0a"

    const-string v15, "4"

    invoke-direct {v12, v13, v15}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v11, v14

    new-instance v12, Lcom/github/catvod/spider/merge/c/b;

    const-string v13, "30~60\u5206\u9418"

    const-string v14, "3"

    invoke-direct {v12, v13, v14}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    aput-object v12, v11, v13

    new-instance v12, Lcom/github/catvod/spider/merge/c/b;

    const-string v13, "10~30\u5206\u9418"

    const-string v14, "2"

    invoke-direct {v12, v13, v14}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x3

    aput-object v12, v11, v13

    new-instance v12, Lcom/github/catvod/spider/merge/c/b;

    const-string v13, "10\u5206\u9418\u4ee5\u4e0b"

    const-string v14, "1"

    invoke-direct {v12, v13, v14}, Lcom/github/catvod/spider/merge/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v11, v3

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v11, "duration"

    const-string v12, "\u6642\u9577"

    invoke-direct {v10, v11, v12, v3}, Lcom/github/catvod/spider/merge/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v2, v8, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto/16 :goto_3b

    :cond_ed
    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/c/f;->k(Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public homeVideoContent()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->i()Ljava/util/Map;

    move-result-object v0

    const-string v1, "https://api.bilibili.com/x/web-interface/popular?ps=20"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/f/b;->d()Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/f/f;->a(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/f/f;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/f/f;->c()Lcom/github/catvod/spider/merge/c/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    invoke-static {v1}, Lcom/github/catvod/spider/merge/c/f;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->d:Lcom/google/gson/JsonObject;

    const-string p2, "cookie"

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    :cond_2b
    iget-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->n()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/n/a;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    :cond_3d
    iget-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "buvid3=84B0395D-C9F2-C490-E92E-A09AB48FE26E71636infoc"

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->e:Ljava/lang/String;

    .line 4
    :cond_49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/Bili;->b:Ljava/util/HashMap;

    const-string p2, "30280"

    const-string v0, "192000"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/github/catvod/spider/Bili;->b:Ljava/util/HashMap;

    const-string p2, "30232"

    const-string v0, "132000"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/github/catvod/spider/Bili;->b:Ljava/util/HashMap;

    const-string p2, "30216"

    const-string v0, "64000"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 12
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

    const-string p1, "\\+"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/player/playurl?avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cid="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&qn="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "127"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&fnval=4048&fourk=1"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->m()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/github/catvod/spider/merge/f/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/f/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/g;->a()Lcom/github/catvod/spider/merge/f/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/b;->a()Lcom/github/catvod/spider/merge/f/a;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/f/c;

    iget-object v5, p0, Lcom/github/catvod/spider/Bili;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_70
    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/f/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/Bili;->l(Lcom/github/catvod/spider/merge/f/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 2
    :cond_8e
    invoke-direct {p0, p3, v1, p1}, Lcom/github/catvod/spider/Bili;->g(Lcom/github/catvod/spider/merge/f/a;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_a3

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a3

    const/4 p1, 0x1

    goto :goto_a4

    :cond_a3
    const/4 p1, 0x0

    :goto_a4
    if-eqz p1, :cond_b7

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/f/c;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/f/c;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v1, p1}, Lcom/github/catvod/spider/Bili;->g(Lcom/github/catvod/spider/merge/f/a;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge/f/a;->b()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 p3, 0x3

    aput-object p1, v3, p3

    const/4 p1, 0x4

    aput-object v1, v3, p1

    const-string p1, "<MPD xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"urn:mpeg:dash:schema:mpd:2011\" xsi:schemaLocation=\"urn:mpeg:dash:schema:mpd:2011 DASH-MPD.xsd\" type=\"static\" mediaPresentationDuration=\"PT%sS\" minBufferTime=\"PT%sS\" profiles=\"urn:mpeg:dash:profile:isoff-on-demand:2011\">\n<Period duration=\"PT%sS\" start=\"PT0S\">\n%s\n%s\n</Period>\n</MPD>"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "data:application/dash+xml;base64,"

    .line 4
    invoke-static {p3}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 7
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->a()Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p0}, Lcom/github/catvod/spider/Bili;->m()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "1"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/github/catvod/spider/Bili;->categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/github/catvod/spider/Bili;->categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
