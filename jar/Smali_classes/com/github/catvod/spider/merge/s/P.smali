.class final Lcom/github/catvod/spider/merge/s/P;
.super Lcom/github/catvod/spider/merge/s/C;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/C<",
        "TV;>;",
        "Ljava/util/concurrent/ScheduledFuture;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/s/M;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/M<",
            "TV;>;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/s/C;-><init>(Lcom/github/catvod/spider/merge/s/M;)V

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/P;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/s/D;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/P;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_b
    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/concurrent/Delayed;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/P;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/P;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
