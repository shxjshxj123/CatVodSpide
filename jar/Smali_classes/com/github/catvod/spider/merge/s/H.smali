.class public final Lcom/github/catvod/spider/merge/s/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge/s/M;Lcom/github/catvod/spider/merge/s/E;Ljava/util/concurrent/Executor;)V
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/s/F;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/s/F;-><init>(Ljava/util/concurrent/Future;Lcom/github/catvod/spider/merge/s/E;)V

    invoke-interface {p0, v0, p2}, Lcom/github/catvod/spider/merge/s/M;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/s/A;->a:Lcom/github/catvod/spider/merge/s/A;

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/W;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    invoke-static {p0, v1}, Lcom/github/catvod/spider/merge/o/s;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/Throwable;)Lcom/github/catvod/spider/merge/s/M;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/s/I;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/s/I;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static e(Ljava/util/concurrent/ExecutorService;)Lcom/github/catvod/spider/merge/s/N;
    .registers 2

    instance-of v0, p0, Lcom/github/catvod/spider/merge/s/N;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/github/catvod/spider/merge/s/N;

    goto :goto_19

    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/github/catvod/spider/merge/s/S;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/s/S;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/github/catvod/spider/merge/s/O;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/s/O;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_18
    move-object p0, v0

    :goto_19
    return-object p0
.end method

.method public static varargs f([Lcom/github/catvod/spider/merge/s/M;)Lcom/github/catvod/spider/merge/s/G;
    .registers 2
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/s/G;

    invoke-static {p0}, Lcom/github/catvod/spider/merge/p/f;->f([Ljava/lang/Object;)Lcom/github/catvod/spider/merge/p/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/s/G;-><init>(Lcom/github/catvod/spider/merge/p/f;)V

    return-object v0
.end method
