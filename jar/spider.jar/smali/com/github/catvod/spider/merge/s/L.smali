.class abstract Lcom/github/catvod/spider/merge/s/L;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Runnable;

.field private static final b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    new-instance v0, Lcom/github/catvod/spider/merge/s/K;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/K;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/github/catvod/spider/merge/s/K;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/K;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/s/L;->b:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method private g(Ljava/lang/Thread;)V
    .registers 9

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    instance-of v5, v0, Lcom/github/catvod/spider/merge/s/J;

    if-nez v5, :cond_19

    sget-object v6, Lcom/github/catvod/spider/merge/s/L;->b:Ljava/lang/Runnable;

    if-ne v0, v6, :cond_13

    goto :goto_19

    :cond_13
    if-eqz v3, :cond_18

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    return-void

    :cond_19
    :goto_19
    if-eqz v5, :cond_1e

    move-object v2, v0

    check-cast v2, Lcom/github/catvod/spider/merge/s/J;

    :cond_1e
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x3e8

    if-le v4, v6, :cond_3e

    sget-object v6, Lcom/github/catvod/spider/merge/s/L;->b:Ljava/lang/Runnable;

    if-eq v0, v6, :cond_2e

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_2e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_39

    if-eqz v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    :goto_3a
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_41

    :cond_3e
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_41
    :goto_41
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_a
.end method


# virtual methods
.method abstract a(Ljava/lang/Throwable;)V
.end method

.method abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final c()V
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_48

    new-instance v1, Lcom/github/catvod/spider/merge/s/J;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/github/catvod/spider/merge/s/J;-><init>(Lcom/github/catvod/spider/merge/s/L;Lcom/github/catvod/spider/merge/s/W;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/s/J;->a(Lcom/github/catvod/spider/merge/s/J;Ljava/lang/Thread;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :try_start_1d
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_35

    sget-object v1, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Lcom/github/catvod/spider/merge/s/L;->b:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_48

    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_48

    :catchall_35
    move-exception v1

    sget-object v2, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    sget-object v3, Lcom/github/catvod/spider/merge/s/L;->b:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_47

    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_47
    throw v1

    :cond_48
    :goto_48
    return-void
.end method

.method abstract d()Z
.end method

.method abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract f()Ljava/lang/String;
.end method

.method public final run()V
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/L;->d()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    :try_start_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/L;->e()Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_19

    goto :goto_2b

    :catchall_19
    move-exception v1

    sget-object v3, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/L;->g(Ljava/lang/Thread;)V

    :cond_25
    if-eqz v2, :cond_3b

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/s/L;->a(Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_2b
    :goto_2b
    sget-object v3, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/L;->g(Ljava/lang/Thread;)V

    :cond_36
    if-eqz v2, :cond_3b

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/s/L;->b(Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lcom/github/catvod/spider/merge/s/L;->a:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_d

    const-string v0, "running=[DONE]"

    goto :goto_41

    :cond_d
    instance-of v1, v0, Lcom/github/catvod/spider/merge/s/J;

    if-eqz v1, :cond_14

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_41

    :cond_14
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_3f

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "running=[RUNNING ON "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, "running=[NOT STARTED YET]"

    :goto_41
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/L;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
