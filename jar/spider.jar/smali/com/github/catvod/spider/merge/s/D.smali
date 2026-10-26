.class public abstract Lcom/github/catvod/spider/merge/s/D;
.super Lcom/github/catvod/spider/merge/p/a;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/s/M;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/p/a;",
        "Lcom/github/catvod/spider/merge/s/M<",
        "TV;>;",
        "Ljava/util/concurrent/Future<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/p/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->c()Lcom/github/catvod/spider/merge/s/M;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge/s/M;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract c()Lcom/github/catvod/spider/merge/s/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "+TV;>;"
        }
    .end annotation
.end method

.method public cancel(Z)Z
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected abstract d()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/D;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
