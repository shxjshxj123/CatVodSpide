.class abstract Lcom/github/catvod/spider/merge/s/j;
.super Lcom/github/catvod/spider/merge/s/o;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/s/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/o<",
        "TV;>;",
        "Lcom/github/catvod/spider/merge/s/i<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/o;-><init>()V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

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
