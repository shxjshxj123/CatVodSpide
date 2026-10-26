.class public final Lcom/github/catvod/spider/merge/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_drive_id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource_drive_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/e;
    .registers 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/github/catvod/spider/merge/d/e;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/d/e;

    if-nez p0, :cond_14

    new-instance p0, Lcom/github/catvod/spider/merge/d/e;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/d/e;-><init>()V

    :cond_14
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/e;->b:Ljava/lang/String;

    .line 2
    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_2b

    :cond_1d
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/e;->a:Ljava/lang/String;

    goto :goto_2b

    .line 4
    :cond_20
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/e;->b:Ljava/lang/String;

    :goto_2b
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
