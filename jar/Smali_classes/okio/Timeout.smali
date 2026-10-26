.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lokio/Timeout$Companion;

.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Timeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Timeout$Companion;-><init>(Lcom/github/catvod/spider/merge/D/d;)V

    sput-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    new-instance v0, Lokio/Timeout$Companion$NONE$1;

    invoke-direct {v0}, Lokio/Timeout$Companion$NONE$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 7

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string p3, "duration <= 0: "

    .line 1
    invoke-static {p3, p1, p2}, Lcom/github/catvod/spider/merge/u/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public deadlineNanoTime()J
    .registers 3

    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-object p0
.end method

.method public hasDeadline()Z
    .registers 2

    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public final intersectWith(Lokio/Timeout;Lcom/github/catvod/spider/merge/C/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Timeout;",
            "Lcom/github/catvod/spider/merge/C/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    sget-object v2, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_40
    :try_start_40
    invoke-interface {p2}, Lcom/github/catvod/spider/merge/C/a;->a()Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_50

    invoke-virtual {p0, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-virtual {p0, v2, v3}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_7c

    :catchall_50
    move-exception p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-virtual {p0, v2, v3}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_5f
    throw p2

    :cond_60
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6d
    :try_start_6d
    invoke-interface {p2}, Lcom/github/catvod/spider/merge/C/a;->a()Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_7d

    invoke-virtual {p0, v0, v1, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_8c
    throw p2
.end method

.method public throwIfReached()V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_29

    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    goto :goto_29

    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 7

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_17

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lokio/Timeout;->timeoutNanos:J

    return-object p0

    :cond_17
    const-string p3, "timeout < 0: "

    .line 1
    invoke-static {p3, p1, p2}, Lcom/github/catvod/spider/merge/u/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeoutNanos()J
    .registers 3

    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .registers 11

    const-string v0, "monitor"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_19

    cmp-long v5, v1, v3

    if-nez v5, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    return-void

    :cond_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v0, :cond_2d

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2d

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_35

    :cond_2d
    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    move-wide v1, v0

    :cond_35
    :goto_35
    cmp-long v0, v1, v3

    if-lez v0, :cond_4e

    const-wide/32 v3, 0xf4240

    div-long v7, v1, v3
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_3e} :catch_5b

    invoke-static {v7, v8}, Ljava/lang/Long;->signum(J)I

    mul-long v3, v3, v7

    sub-long v3, v1, v3

    long-to-int v0, v3

    :try_start_46
    invoke-virtual {p1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v5

    :cond_4e
    cmp-long p1, v3, v1

    if-gez p1, :cond_53

    return-void

    :cond_53
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_5b} :catch_5b

    :catch_5b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "interrupted"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
