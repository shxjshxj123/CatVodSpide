.class final Lcom/github/catvod/spider/merge/s/f;
.super Lcom/github/catvod/spider/merge/s/a;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/github/catvod/spider/merge/s/o;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/a;-><init>(Lcom/github/catvod/spider/merge/s/W;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/s/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lcom/github/catvod/spider/merge/s/f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lcom/github/catvod/spider/merge/s/f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final a(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;Lcom/github/catvod/spider/merge/s/e;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/e;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    goto :goto_11

    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_2

    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method final b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    goto :goto_11

    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_2

    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method final c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    goto :goto_11

    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_2

    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method final f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ")",
            "Lcom/github/catvod/spider/merge/s/e;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/e;->d:Lcom/github/catvod/spider/merge/s/e;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/s/e;

    return-object p1
.end method

.method final g(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ")",
            "Lcom/github/catvod/spider/merge/s/n;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge/s/n;

    return-object p1
.end method

.method final h(Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final i(Lcom/github/catvod/spider/merge/s/n;Ljava/lang/Thread;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
