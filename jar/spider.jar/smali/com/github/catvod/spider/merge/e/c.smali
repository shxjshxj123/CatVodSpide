.class public final Lcom/github/catvod/spider/merge/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "parent"
        }
        value = "path"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "thumbnail"
        }
        value = "thumb"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "raw_url"
        }
        value = "url"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "updated_at"
        }
        value = "modified"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/e/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/e/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/e/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/Date;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/e/c;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->a:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->e:Ljava/lang/String;

    .line 2
    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_27

    .line 3
    :cond_1b
    iget-object p1, p0, Lcom/github/catvod/spider/merge/e/c;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    move-object p1, v1

    goto :goto_27

    :cond_25
    iget-object p1, p0, Lcom/github/catvod/spider/merge/e/c;->e:Ljava/lang/String;

    :goto_27
    return-object p1
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/github/catvod/spider/merge/e/c;->d:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_27

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->f:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "http:"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/e/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->f:Ljava/lang/String;

    :goto_27
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;
    .registers 10

    new-instance v6, Lcom/github/catvod/spider/merge/c/i;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/e/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1
    iget-wide p1, p0, Lcom/github/catvod/spider/merge/e/c;->d:J

    long-to-double p1, p1

    .line 2
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/n/b;->e(D)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->j()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    goto :goto_11

    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/e/c;->b:Ljava/lang/String;

    .line 3
    :goto_11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".mpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_32

    :cond_1b
    if-eqz p1, :cond_27

    iget p1, p0, Lcom/github/catvod/spider/merge/e/c;->c:I

    if-eqz p1, :cond_26

    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_26
    return v1

    :cond_27
    iget p1, p0, Lcom/github/catvod/spider/merge/e/c;->c:I

    if-eqz p1, :cond_33

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    const/4 v0, 0x5

    if-ne p1, v0, :cond_32

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    return v1
.end method

.method public final j()Z
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/e/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final k(Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/e/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".mpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2e

    :cond_1b
    const/4 v0, 0x3

    if-eqz p1, :cond_27

    iget p1, p0, Lcom/github/catvod/spider/merge/e/c;->c:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_25

    if-ne p1, v0, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1

    :cond_27
    iget p1, p0, Lcom/github/catvod/spider/merge/e/c;->c:I

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    :cond_2f
    return v1
.end method
