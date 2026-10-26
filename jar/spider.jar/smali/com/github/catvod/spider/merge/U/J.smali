.class final Lcom/github/catvod/spider/merge/U/J;
.super Lcom/github/catvod/spider/merge/U/P;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/P;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    iput v0, p0, Lcom/github/catvod/spider/merge/U/P;->a:I

    return-void
.end method


# virtual methods
.method final h()Lcom/github/catvod/spider/merge/U/P;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/U/P;->h()Lcom/github/catvod/spider/merge/U/P;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/U/P;->i(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    return-object p0
.end method

.method final k(C)Lcom/github/catvod/spider/merge/U/J;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final l(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/J;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    iput-object p1, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    return-object p0
.end method

.method final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "<!--"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/J;->e:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/J;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
