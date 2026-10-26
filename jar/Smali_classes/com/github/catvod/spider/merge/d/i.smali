.class public final Lcom/github/catvod/spider/merge/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "template_id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/c/g;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/g;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/i;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_13

    :cond_11
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/i;->d:Ljava/lang/String;

    .line 3
    :goto_13
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/g;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/i;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v1, v2

    goto :goto_22

    :cond_20
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/i;->b:Ljava/lang/String;

    .line 5
    :goto_22
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/g;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    .line 6
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/i;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_30

    :cond_2e
    iget-object v2, p0, Lcom/github/catvod/spider/merge/d/i;->b:Ljava/lang/String;

    .line 7
    :goto_30
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/c/g;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    const-string v1, "vtt"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/g;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/g;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/i;->a:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/i;->d:Ljava/lang/String;

    :goto_d
    return-object v0
.end method
