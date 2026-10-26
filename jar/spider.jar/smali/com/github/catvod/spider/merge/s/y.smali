.class final Lcom/github/catvod/spider/merge/s/y;
.super Lcom/github/catvod/spider/merge/s/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/s/L<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lcom/github/catvod/spider/merge/s/z;

.field private final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/github/catvod/spider/merge/s/z;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/s/z;Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/A;->a:Lcom/github/catvod/spider/merge/s/A;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/y;->f:Lcom/github/catvod/spider/merge/s/z;

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/L;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->c:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/y;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/z;->L(Lcom/github/catvod/spider/merge/s/z;)V

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1f

    :cond_12
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/s/j;->cancel(Z)Z

    goto :goto_22

    :cond_1d
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    :goto_1f
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    :goto_22
    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/z;->L(Lcom/github/catvod/spider/merge/s/z;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->f:Lcom/github/catvod/spider/merge/s/z;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/o;->t(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/j;->isDone()Z

    move-result v0

    return v0
.end method

.method final e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->e:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final h()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/y;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/y;->d:Lcom/github/catvod/spider/merge/s/z;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    :goto_c
    return-void
.end method
