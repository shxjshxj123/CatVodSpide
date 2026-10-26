.class final Lcom/github/catvod/spider/merge/s/V;
.super Lcom/github/catvod/spider/merge/s/B;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;
.implements Lcom/github/catvod/spider/merge/s/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/B<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;",
        "Lcom/github/catvod/spider/merge/s/i<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile h:Lcom/github/catvod/spider/merge/s/U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/L<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/B;-><init>()V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge/s/U;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/s/U;-><init>(Lcom/github/catvod/spider/merge/s/V;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge/s/o;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/s/o;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/s/o;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->isDone()Z

    move-result v0

    return v0
.end method

.method protected final k()V
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/L;->c()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    return-void
.end method

.method protected final r()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/L;->run()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/V;->h:Lcom/github/catvod/spider/merge/s/U;

    return-void
.end method
