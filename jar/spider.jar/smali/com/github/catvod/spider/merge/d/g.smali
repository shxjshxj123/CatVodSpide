.class public final Lcom/github/catvod/spider/merge/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/d/g;
    .registers 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/github/catvod/spider/merge/d/g;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/d/g;

    if-nez p0, :cond_14

    new-instance p0, Lcom/github/catvod/spider/merge/d/g;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/d/g;-><init>()V

    :cond_14
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/d/g;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/github/catvod/spider/merge/d/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/d/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/g;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_13

    :cond_11
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/g;->a:Ljava/lang/String;

    .line 2
    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge/d/g;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    iget-object v2, p0, Lcom/github/catvod/spider/merge/d/g;->b:Ljava/lang/String;

    .line 4
    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/d/g;->c:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final e()Lcom/github/catvod/spider/merge/d/g;
    .registers 3

    invoke-static {}, Lcom/github/catvod/spider/merge/b/t;->q()Lcom/github/catvod/spider/merge/b/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "aliyundrive_oauth"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/n/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/d/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/n/a;->k(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
