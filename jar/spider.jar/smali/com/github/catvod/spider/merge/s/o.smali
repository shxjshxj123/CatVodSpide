.class public abstract Lcom/github/catvod/spider/merge/s/o;
.super Lcom/github/catvod/spider/merge/t/a;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/s/M;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/t/a;",
        "Lcom/github/catvod/spider/merge/s/M<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lcom/github/catvod/spider/merge/s/a;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile b:Lcom/github/catvod/spider/merge/s/e;

.field private volatile c:Lcom/github/catvod/spider/merge/s/n;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, Lcom/github/catvod/spider/merge/s/n;

    :try_start_2
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v1, 0x0

    :goto_10
    sput-boolean v1, Lcom/github/catvod/spider/merge/s/o;->d:Z

    const-class v1, Lcom/github/catvod/spider/merge/s/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/github/catvod/spider/merge/s/o;->e:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_1f
    new-instance v2, Lcom/github/catvod/spider/merge/s/m;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge/s/m;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_27

    move-object v0, v2

    move-object v2, v1

    goto :goto_61

    :catchall_27
    move-exception v2

    :try_start_28
    new-instance v9, Lcom/github/catvod/spider/merge/s/f;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "a"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "b"

    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/github/catvod/spider/merge/s/o;

    const-string v6, "c"

    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/github/catvod/spider/merge/s/o;

    const-class v3, Lcom/github/catvod/spider/merge/s/e;

    const-string v7, "b"

    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/github/catvod/spider/merge/s/o;

    const-class v3, Ljava/lang/Object;

    const-string v8, "a"

    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/github/catvod/spider/merge/s/f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_5a

    move-object v0, v9

    goto :goto_61

    :catchall_5a
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/github/catvod/spider/merge/s/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/h;-><init>()V

    :goto_61
    sput-object v0, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_75

    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/s/o;->g:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/t/a;-><init>()V

    return-void
.end method

.method static synthetic c()Lcom/github/catvod/spider/merge/s/a;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    return-object v0
.end method

.method static synthetic d(Lcom/github/catvod/spider/merge/s/o;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/s/o;->b:Lcom/github/catvod/spider/merge/s/e;

    return-object p0
.end method

.method static synthetic g(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;)Lcom/github/catvod/spider/merge/s/e;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/o;->b:Lcom/github/catvod/spider/merge/s/e;

    return-object p1
.end method

.method static synthetic h(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    return-object p0
.end method

.method static synthetic i(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;)Lcom/github/catvod/spider/merge/s/n;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    return-object p1
.end method

.method private j(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/o;->p(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Lcom/github/catvod/spider/merge/s/o;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_11} :catch_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_11} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_35

    :catch_12
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    goto :goto_32

    :catch_22
    const-string v0, "CANCELLED"

    goto :goto_32

    :catch_25
    move-exception v1

    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    return-void
.end method

.method private l(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_5

    const-string p2, "null"

    goto :goto_22

    :cond_5
    if-ne p2, p0, :cond_a

    const-string p2, "this future"

    goto :goto_22

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    :goto_22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static m(Lcom/github/catvod/spider/merge/s/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/s/a;->g(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;

    move-result-object v0

    :goto_9
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    iget-object v2, v0, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    if-eqz v2, :cond_15

    iput-object v1, v0, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 3
    :cond_15
    iget-object v0, v0, Lcom/github/catvod/spider/merge/s/n;->b:Lcom/github/catvod/spider/merge/s/n;

    goto :goto_9

    .line 4
    :cond_18
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->k()V

    .line 5
    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/s/a;->f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;

    move-result-object p0

    move-object v0, v1

    :goto_22
    if-eqz p0, :cond_2b

    iget-object v2, p0, Lcom/github/catvod/spider/merge/s/e;->c:Lcom/github/catvod/spider/merge/s/e;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/e;->c:Lcom/github/catvod/spider/merge/s/e;

    move-object v0, p0

    move-object p0, v2

    goto :goto_22

    :cond_2b
    :goto_2b
    if-eqz v0, :cond_45

    .line 6
    iget-object p0, v0, Lcom/github/catvod/spider/merge/s/e;->c:Lcom/github/catvod/spider/merge/s/e;

    iget-object v2, v0, Lcom/github/catvod/spider/merge/s/e;->a:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/github/catvod/spider/merge/s/g;

    if-nez v3, :cond_42

    iget-object v0, v0, Lcom/github/catvod/spider/merge/s/e;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge/s/o;->n(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v0, p0

    goto :goto_2b

    :cond_42
    check-cast v2, Lcom/github/catvod/spider/merge/s/g;

    throw v1

    :cond_45
    return-void
.end method

.method private static n(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_38

    :catch_4
    move-exception v0

    sget-object v1, Lcom/github/catvod/spider/merge/s/o;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    return-void
.end method

.method private o(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/catvod/spider/merge/s/b;

    if-nez v0, :cond_18

    instance-of v0, p1, Lcom/github/catvod/spider/merge/s/d;

    if-nez v0, :cond_e

    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->g:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1

    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/github/catvod/spider/merge/s/d;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/s/d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    check-cast p1, Lcom/github/catvod/spider/merge/s/b;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/s/b;->b:Ljava/lang/Throwable;

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2
    throw v0
.end method

.method private static p(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private s(Lcom/github/catvod/spider/merge/s/n;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    sget-object v1, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_29

    iget-object v2, p1, Lcom/github/catvod/spider/merge/s/n;->b:Lcom/github/catvod/spider/merge/s/n;

    iget-object v3, p1, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_27

    :cond_15
    if-eqz v1, :cond_1e

    iput-object v2, v1, Lcom/github/catvod/spider/merge/s/n;->b:Lcom/github/catvod/spider/merge/s/n;

    iget-object p1, v1, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    if-nez p1, :cond_27

    goto :goto_3

    :cond_1e
    sget-object v3, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v3, p0, p1, v2}, Lcom/github/catvod/spider/merge/s/a;->c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    move-object p1, v2

    goto :goto_b

    :cond_29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    if-eqz p2, :cond_28

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->isDone()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->b:Lcom/github/catvod/spider/merge/s/e;

    sget-object v1, Lcom/github/catvod/spider/merge/s/e;->d:Lcom/github/catvod/spider/merge/s/e;

    if-eq v0, v1, :cond_24

    new-instance v1, Lcom/github/catvod/spider/merge/s/e;

    invoke-direct {v1, p1, p2}, Lcom/github/catvod/spider/merge/s/e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_13
    iput-object v0, v1, Lcom/github/catvod/spider/merge/s/e;->c:Lcom/github/catvod/spider/merge/s/e;

    sget-object v2, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v2, p0, v0, v1}, Lcom/github/catvod/spider/merge/s/a;->a(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;Lcom/github/catvod/spider/merge/s/e;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->b:Lcom/github/catvod/spider/merge/s/e;

    sget-object v2, Lcom/github/catvod/spider/merge/s/e;->d:Lcom/github/catvod/spider/merge/s/e;

    if-ne v0, v2, :cond_13

    :cond_24
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/s/o;->n(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor was null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method protected final b()Ljava/lang/Throwable;
    .registers 3

    instance-of v0, p0, Lcom/github/catvod/spider/merge/s/i;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/github/catvod/spider/merge/s/d;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/github/catvod/spider/merge/s/d;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/s/d;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    instance-of v4, v0, Lcom/github/catvod/spider/merge/s/g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_4b

    sget-boolean v3, Lcom/github/catvod/spider/merge/s/o;->d:Z

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/github/catvod/spider/merge/s/b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/github/catvod/spider/merge/s/b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_29

    :cond_1f
    if-eqz p1, :cond_24

    sget-object v3, Lcom/github/catvod/spider/merge/s/b;->c:Lcom/github/catvod/spider/merge/s/b;

    goto :goto_26

    :cond_24
    sget-object v3, Lcom/github/catvod/spider/merge/s/b;->d:Lcom/github/catvod/spider/merge/s/b;

    :goto_26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_29
    :goto_29
    sget-object v4, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v4, p0, v0, v3}, Lcom/github/catvod/spider/merge/s/a;->b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->q()V

    :cond_36
    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/o;->m(Lcom/github/catvod/spider/merge/s/o;)V

    instance-of p1, v0, Lcom/github/catvod/spider/merge/s/g;

    if-nez p1, :cond_3e

    goto :goto_4c

    :cond_3e
    check-cast v0, Lcom/github/catvod/spider/merge/s/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_45
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    instance-of v4, v0, Lcom/github/catvod/spider/merge/s/g;

    if-nez v4, :cond_29

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    instance-of v4, v0, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    sget-object v3, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    if-eq v0, v3, :cond_5e

    new-instance v3, Lcom/github/catvod/spider/merge/s/n;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/s/n;-><init>()V

    .line 1
    :cond_25
    invoke-static {}, Lcom/github/catvod/spider/merge/s/o;->c()Lcom/github/catvod/spider/merge/s/a;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/github/catvod/spider/merge/s/a;->h(Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)V

    .line 2
    sget-object v4, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v4, p0, v0, v3}, Lcom/github/catvod/spider/merge/s/a;->c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_34
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    if-eqz v0, :cond_43

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    instance-of v5, v0, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_34

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4f
    invoke-direct {p0, v3}, Lcom/github/catvod/spider/merge/s/o;->s(Lcom/github/catvod/spider/merge/s/n;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    sget-object v4, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    if-ne v0, v4, :cond_25

    :cond_5e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_68
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1d5

    iget-object v6, v0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    :goto_18
    instance-of v10, v6, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    invoke-direct {v0, v6}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_9b

    iget-object v6, v0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    sget-object v15, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    if-eq v6, v15, :cond_91

    new-instance v15, Lcom/github/catvod/spider/merge/s/n;

    invoke-direct {v15}, Lcom/github/catvod/spider/merge/s/n;-><init>()V

    .line 3
    :cond_41
    invoke-static {}, Lcom/github/catvod/spider/merge/s/o;->c()Lcom/github/catvod/spider/merge/s/a;

    move-result-object v7

    invoke-virtual {v7, v15, v6}, Lcom/github/catvod/spider/merge/s/a;->h(Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)V

    .line 4
    sget-object v7, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    invoke-virtual {v7, v0, v6, v15}, Lcom/github/catvod/spider/merge/s/a;->c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z

    move-result v6

    if-eqz v6, :cond_8b

    :cond_50
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 5
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, v0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    if-eqz v4, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    :goto_69
    instance-of v6, v4, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_74

    invoke-direct {v0, v4}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_50

    invoke-direct {v0, v15}, Lcom/github/catvod/spider/merge/s/o;->s(Lcom/github/catvod/spider/merge/s/n;)V

    goto :goto_9b

    :cond_82
    invoke-direct {v0, v15}, Lcom/github/catvod/spider/merge/s/o;->s(Lcom/github/catvod/spider/merge/s/n;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_8b
    iget-object v6, v0, Lcom/github/catvod/spider/merge/s/o;->c:Lcom/github/catvod/spider/merge/s/n;

    sget-object v7, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    if-ne v6, v7, :cond_41

    :cond_91
    iget-object v1, v0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_9b
    :goto_9b
    cmp-long v6, v4, v9

    if-lez v6, :cond_c4

    iget-object v4, v0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    if-eqz v4, :cond_a5

    const/4 v5, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v5, 0x0

    :goto_a6
    instance-of v6, v4, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_b1

    invoke-direct {v0, v4}, Lcom/github/catvod/spider/merge/s/o;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_b1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_be

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_9b

    :cond_be
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_c4
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/merge/s/o;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_192

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_126

    cmp-long v3, v4, v13

    if-lez v3, :cond_123

    goto :goto_126

    :cond_123
    const/16 v16, 0x0

    goto :goto_128

    :cond_126
    :goto_126
    const/16 v16, 0x1

    :goto_128
    cmp-long v3, v11, v9

    if-lez v3, :cond_168

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_160

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_160
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_168
    if-eqz v16, :cond_188

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_188
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_192
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/merge/s/o;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1a8

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a8
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d5
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_1dc

    :goto_1db
    throw v1

    :goto_1dc
    goto :goto_1db
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/s/b;

    return v0
.end method

.method public isDone()Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    instance-of v0, v0, Lcom/github/catvod/spider/merge/s/g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method protected q()V
    .registers 1

    return-void
.end method

.method protected r()Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_26

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method protected t(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lcom/github/catvod/spider/merge/s/o;->g:Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/github/catvod/spider/merge/s/a;->b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/o;->m(Lcom/github/catvod/spider/merge/s/o;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_4d

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :cond_4d
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->isDone()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->j(Ljava/lang/StringBuilder;)V

    goto/16 :goto_cc

    .line 1
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    instance-of v4, v3, Lcom/github/catvod/spider/merge/s/g;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_86

    const-string v4, ", setFuture=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lcom/github/catvod/spider/merge/s/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    :try_start_74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_77} :catch_7a
    .catch Ljava/lang/StackOverflowError; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_b9

    :catch_78
    move-exception v3

    goto :goto_7b

    :catch_7a
    move-exception v3

    :goto_7b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 3
    :cond_86
    :try_start_86
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/o/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_8e} :catch_91
    .catch Ljava/lang/StackOverflowError; {:try_start_86 .. :try_end_8e} :catch_8f

    goto :goto_af

    :catch_8f
    move-exception v3

    goto :goto_92

    :catch_91
    move-exception v3

    :goto_92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_af
    if-eqz v3, :cond_bc

    const-string v4, ", info=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bc
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->isDone()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->j(Ljava/lang/StringBuilder;)V

    .line 4
    :cond_cc
    :goto_cc
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u(Ljava/lang/Throwable;)Z
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge/s/d;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/s/d;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/github/catvod/spider/merge/s/o;->f:Lcom/github/catvod/spider/merge/s/a;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/catvod/spider/merge/s/a;->b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {p0}, Lcom/github/catvod/spider/merge/s/o;->m(Lcom/github/catvod/spider/merge/s/o;)V

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method protected final v()Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/o;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/github/catvod/spider/merge/s/b;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/github/catvod/spider/merge/s/b;

    iget-boolean v0, v0, Lcom/github/catvod/spider/merge/s/b;->a:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
