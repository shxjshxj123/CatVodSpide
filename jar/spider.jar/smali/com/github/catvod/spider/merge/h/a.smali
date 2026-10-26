.class public final Lcom/github/catvod/spider/merge/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drives"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pass"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private g:Lcom/thegrizzlylabs/sardineandroid/Sardine;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "webdav"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/h/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/h/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->a:Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->c:Ljava/lang/String;

    .line 2
    :goto_e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/h/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->b:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->f:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final e()Lcom/thegrizzlylabs/sardineandroid/Sardine;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->g:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    if-nez v0, :cond_46

    .line 1
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->g:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/h/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_17

    move-object v1, v2

    goto :goto_19

    :cond_17
    iget-object v1, p0, Lcom/github/catvod/spider/merge/h/a;->d:Ljava/lang/String;

    .line 3
    :goto_19
    iget-object v3, p0, Lcom/github/catvod/spider/merge/h/a;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v3, v2

    goto :goto_25

    :cond_23
    iget-object v3, p0, Lcom/github/catvod/spider/merge/h/a;->e:Ljava/lang/String;

    .line 4
    :goto_25
    invoke-interface {v0, v1, v3}, Lcom/thegrizzlylabs/sardineandroid/Sardine;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v0, v2

    goto :goto_34

    :cond_32
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->c:Ljava/lang/String;

    .line 6
    :goto_34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move-object v2, v0

    :goto_44
    iput-object v2, p0, Lcom/github/catvod/spider/merge/h/a;->f:Ljava/lang/String;

    .line 8
    :cond_46
    iget-object v0, p0, Lcom/github/catvod/spider/merge/h/a;->g:Lcom/thegrizzlylabs/sardineandroid/Sardine;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/github/catvod/spider/merge/h/a;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/h/a;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/i;
    .registers 10

    new-instance v6, Lcom/github/catvod/spider/merge/c/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/h/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge/n/b;->e(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v5

    move-object v0, v6

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method
