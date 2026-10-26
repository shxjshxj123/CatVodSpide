.class final Lcom/github/catvod/spider/merge/U/K;
.super Lcom/github/catvod/spider/merge/U/P;
.source "SourceFile"


# instance fields
.field final d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/String;

.field final f:Ljava/lang/StringBuilder;

.field final g:Ljava/lang/StringBuilder;

.field h:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/U/P;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->f:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->g:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/U/K;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/U/P;->a:I

    return-void
.end method


# virtual methods
.method final h()Lcom/github/catvod/spider/merge/U/P;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/U/P;->h()Lcom/github/catvod/spider/merge/U/P;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/U/P;->i(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->f:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/U/P;->i(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/U/K;->g:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/U/P;->i(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/U/K;->h:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "<!doctype "

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/U/K;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
