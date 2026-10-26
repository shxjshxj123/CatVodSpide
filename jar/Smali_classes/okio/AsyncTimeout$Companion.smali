.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge/D/d;)V
    .registers 2

    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .registers 2

    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void
.end method

.method private final cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 6

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    # getter for: Lokio/AsyncTimeout;->inQueue:Z
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_30

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    :cond_c
    :try_start_c
    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_2d

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-ne v3, p1, :cond_28

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v1, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_30

    monitor-exit v0

    return v2

    :cond_28
    :try_start_28
    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_30

    goto :goto_13

    :cond_2d
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_30
    move-exception p1

    monitor-exit v0

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method private final scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 11

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    # getter for: Lokio/AsyncTimeout;->inQueue:Z
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_8d

    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_24

    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    invoke-static {v1}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-eqz v5, :cond_3e

    if-eqz p4, :cond_3e

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :goto_39
    add-long/2addr p2, v1

    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    goto :goto_4c

    :cond_3e
    cmp-long v5, p2, v3

    if-eqz v5, :cond_43

    goto :goto_39

    :cond_43
    if-eqz p4, :cond_87

    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    :goto_4c
    # invokes: Lokio/AsyncTimeout;->remainingNanos(J)J
    invoke-static {p1, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide p2

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object p4

    :goto_54
    invoke-static {p4}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    if-eqz v3, :cond_72

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    # invokes: Lokio/AsyncTimeout;->remainingNanos(J)J
    invoke-static {v3, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_6d

    goto :goto_72

    :cond_6d
    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object p4

    goto :goto_54

    :cond_72
    :goto_72
    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object p2

    invoke-static {p1, p2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    invoke-static {p4, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object p1

    if-ne p4, p1, :cond_85

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_99

    :cond_85
    monitor-exit v0

    return-void

    :cond_87
    :try_start_87
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8d
    const-string p1, "Unbalanced enter/exit"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception p1

    monitor-exit v0

    goto :goto_9d

    :goto_9c
    throw p1

    :goto_9d
    goto :goto_9c
.end method


# virtual methods
.method public final awaitTimeout$okio()Lokio/AsyncTimeout;
    .registers 10

    const-class v0, Lokio/AsyncTimeout;

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    if-nez v1, :cond_3a

    # getter for: Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    # getter for: Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_39

    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v2

    :cond_39
    return-object v2

    :cond_3a
    # invokes: Lokio/AsyncTimeout;->remainingNanos(J)J
    invoke-static {v1, v3, v4}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_51

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_51
    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    # getter for: Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    move-result-object v3

    invoke-static {v0, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    invoke-static {v1, v2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    return-object v1
.end method
