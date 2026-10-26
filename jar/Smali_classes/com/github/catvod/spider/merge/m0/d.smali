.class public final Lcom/github/catvod/spider/merge/m0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/k0/a;


# instance fields
.field a:Z

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/m0/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/m0/d;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/k0/b;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/m0/c;

    if-nez v0, :cond_19

    new-instance v0, Lcom/github/catvod/spider/merge/m0/c;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/m0/d;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lcom/github/catvod/spider/merge/m0/d;->a:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/github/catvod/spider/merge/m0/c;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/m0/d;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public final c()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/d;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/m0/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/m0/d;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/m0/d;->a:Z

    return-void
.end method
