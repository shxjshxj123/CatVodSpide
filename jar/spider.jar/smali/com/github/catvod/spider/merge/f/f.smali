.class public final Lcom/github/catvod/spider/merge/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvid"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aid"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/f/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/f/e;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/f/e;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/f/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/f/f;->d:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/c/i;
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge/f/f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_16

    move-object v2, v3

    goto :goto_18

    :cond_16
    iget-object v2, p0, Lcom/github/catvod/spider/merge/f/f;->a:Ljava/lang/String;

    .line 2
    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge/f/f;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object v2, v3

    goto :goto_2c

    :cond_2a
    iget-object v2, p0, Lcom/github/catvod/spider/merge/f/f;->b:Ljava/lang/String;

    .line 4
    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/github/catvod/spider/merge/f/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v1, v3

    goto :goto_42

    :cond_40
    iget-object v1, p0, Lcom/github/catvod/spider/merge/f/f;->c:Ljava/lang/String;

    .line 6
    :goto_42
    invoke-static {v1}, Lcom/github/catvod/spider/merge/U/F;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/github/catvod/spider/merge/f/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_5d

    :cond_5b
    iget-object v3, p0, Lcom/github/catvod/spider/merge/f/f;->e:Ljava/lang/String;

    :goto_5d
    const-string v2, ":"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u9418"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/f/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    const-string v1, "https:"

    .line 10
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/f/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_97

    :cond_93
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/f/f;->b()Ljava/lang/String;

    move-result-object v1

    :goto_97
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    return-object v0
.end method
