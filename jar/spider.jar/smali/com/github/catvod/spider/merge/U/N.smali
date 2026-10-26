.class final Lcom/github/catvod/spider/merge/U/N;
.super Lcom/github/catvod/spider/merge/U/O;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/O;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge/U/P;->a:I

    return-void
.end method


# virtual methods
.method final bridge synthetic h()Lcom/github/catvod/spider/merge/U/P;
    .registers 1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/N;->y()Lcom/github/catvod/spider/merge/U/O;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/O;->u()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/c;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1
    invoke-static {v2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/O;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/c;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 3
    :cond_29
    invoke-static {v2}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/U/O;->A()Ljava/lang/String;

    move-result-object v2

    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final y()Lcom/github/catvod/spider/merge/U/O;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/U/O;->y()Lcom/github/catvod/spider/merge/U/O;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    return-object p0
.end method
