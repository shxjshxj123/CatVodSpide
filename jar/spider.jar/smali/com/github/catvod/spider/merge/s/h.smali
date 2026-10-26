.class final Lcom/github/catvod/spider/merge/s/h;
.super Lcom/github/catvod/spider/merge/s/a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/a;-><init>(Lcom/github/catvod/spider/merge/s/W;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;Lcom/github/catvod/spider/merge/s/e;)Z
    .registers 5
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

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/github/catvod/spider/merge/s/o;->g(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;)Lcom/github/catvod/spider/merge/s/e;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
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

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->d(Lcom/github/catvod/spider/merge/s/o;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/github/catvod/spider/merge/s/o;->e(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method final c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z
    .registers 5
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

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->h(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/github/catvod/spider/merge/s/o;->i(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;)Lcom/github/catvod/spider/merge/s/n;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
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

    monitor-enter p1

    :try_start_3
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;

    move-result-object v1

    if-eq v1, v0, :cond_c

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/s/o;->g(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;)Lcom/github/catvod/spider/merge/s/e;

    :cond_c
    monitor-exit p1

    return-object v1

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
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

    monitor-enter p1

    :try_start_3
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->h(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;

    move-result-object v1

    if-eq v1, v0, :cond_c

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/s/o;->i(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;)Lcom/github/catvod/spider/merge/s/n;

    :cond_c
    monitor-exit p1

    return-object v1

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method final h(Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)V
    .registers 3

    iput-object p2, p1, Lcom/github/catvod/spider/merge/s/n;->b:Lcom/github/catvod/spider/merge/s/n;

    return-void
.end method

.method final i(Lcom/github/catvod/spider/merge/s/n;Ljava/lang/Thread;)V
    .registers 3

    iput-object p2, p1, Lcom/github/catvod/spider/merge/s/n;->a:Ljava/lang/Thread;

    return-void
.end method
