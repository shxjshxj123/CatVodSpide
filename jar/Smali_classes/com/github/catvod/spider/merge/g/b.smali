.class public final Lcom/github/catvod/spider/merge/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page_url"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insert_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/b;->b:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    goto :goto_19

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/g/b;->a:Ljava/lang/String;

    const-string v2, "<em>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "</em>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_19
    return-object v1
.end method

.method public final c()Lcom/github/catvod/spider/merge/c/i;
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/g/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_e

    move-object v1, v2

    goto :goto_10

    :cond_e
    iget-object v1, p0, Lcom/github/catvod/spider/merge/g/b;->b:Ljava/lang/String;

    .line 2
    :goto_10
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/g/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/github/catvod/spider/merge/g/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-object v2, p0, Lcom/github/catvod/spider/merge/g/b;->c:Ljava/lang/String;

    :goto_1f
    const-string v4, "https://inews.gtimg.com/newsapp_bt/0/13263837859/1000"

    .line 4
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/g/b;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/g/b;->b:Ljava/lang/String;

    return-object p0
.end method
