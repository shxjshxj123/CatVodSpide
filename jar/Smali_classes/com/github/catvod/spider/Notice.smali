.class public Lcom/github/catvod/spider/Notice;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge/m/a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/Notice$1;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/Notice$1;-><init>(Lcom/github/catvod/spider/Notice;)V

    iput-object v0, p0, Lcom/github/catvod/spider/Notice;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/github/catvod/spider/Notice;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1a

    const-string v3, "                                        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/catvod/spider/Notice;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    new-instance v2, Lcom/github/catvod/spider/merge/m/a;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/github/catvod/spider/merge/m/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    iget v4, p0, Lcom/github/catvod/spider/Notice;->c:I

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge/m/a;->a(I)V

    iget-object v2, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v4

    invoke-static {v2}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    const/16 v1, 0xc8

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m/a;->b()V

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/n/b;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->e:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;I)V

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge/b/q;

    invoke-direct {v0, p0, v3}, Lcom/github/catvod/spider/merge/b/q;-><init>(Ljava/lang/Object;I)V

    iget p0, p0, Lcom/github/catvod/spider/Notice;->c:I

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {v0, p0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static b(Lcom/github/catvod/spider/Notice;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    sget-object v0, Lcom/github/catvod/spider/merge/n/b;->a:Ljava/util/List;

    .line 2
    :try_start_4
    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_21
    return-void
.end method

.method static synthetic c(Lcom/github/catvod/spider/Notice;)Lcom/github/catvod/spider/merge/m/a;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/Notice;->a:Lcom/github/catvod/spider/merge/m/a;

    return-object p0
.end method

.method static d(Lcom/github/catvod/spider/Notice;)V
    .registers 2

    iget-object p0, p0, Lcom/github/catvod/spider/Notice;->e:Ljava/lang/Runnable;

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/github/catvod/spider/Notice;

    invoke-direct {v0}, Lcom/github/catvod/spider/Notice;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/github/catvod/spider/Notice;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/Notice;->homeContent(Z)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method


# virtual methods
.method public homeContent(Z)Ljava/lang/String;
    .registers 6

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/Notice;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 2
    :cond_1e
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/catvod/spider/Notice;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/Notice;->d:Ljava/lang/String;

    const/16 v0, 0x1e

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/Notice;->c:I

    const-string v0, "date"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/github/catvod/spider/Notice;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_65

    :cond_64
    const/4 v1, 0x1

    :cond_65
    if-eqz v1, :cond_71

    new-instance p1, Lcom/github/catvod/spider/merge/b/m;

    invoke-direct {p1, p0, v3}, Lcom/github/catvod/spider/merge/b/m;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;I)V

    :cond_71
    const-string p1, ""

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/github/catvod/spider/Notice;->b:Ljava/lang/String;

    return-void
.end method
