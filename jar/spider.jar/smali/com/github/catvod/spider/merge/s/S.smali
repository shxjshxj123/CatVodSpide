.class final Lcom/github/catvod/spider/merge/s/S;
.super Lcom/github/catvod/spider/merge/s/O;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field final b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/s/O;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/S;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/s/V;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/s/V;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iget-object p1, p0, Lcom/github/catvod/spider/merge/s/S;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/github/catvod/spider/merge/s/P;

    invoke-direct {p2, v0, p1}, Lcom/github/catvod/spider/merge/s/P;-><init>(Lcom/github/catvod/spider/merge/s/M;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 6

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge/s/V;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/s/V;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge/s/S;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/github/catvod/spider/merge/s/P;

    invoke-direct {p2, v0, p1}, Lcom/github/catvod/spider/merge/s/P;-><init>(Lcom/github/catvod/spider/merge/s/M;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15

    new-instance v7, Lcom/github/catvod/spider/merge/s/Q;

    invoke-direct {v7, p1}, Lcom/github/catvod/spider/merge/s/Q;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/S;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/github/catvod/spider/merge/s/P;

    invoke-direct {p2, v7, p1}, Lcom/github/catvod/spider/merge/s/P;-><init>(Lcom/github/catvod/spider/merge/s/M;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15

    new-instance v7, Lcom/github/catvod/spider/merge/s/Q;

    invoke-direct {v7, p1}, Lcom/github/catvod/spider/merge/s/Q;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/S;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/github/catvod/spider/merge/s/P;

    invoke-direct {p2, v7, p1}, Lcom/github/catvod/spider/merge/s/P;-><init>(Lcom/github/catvod/spider/merge/s/M;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method
