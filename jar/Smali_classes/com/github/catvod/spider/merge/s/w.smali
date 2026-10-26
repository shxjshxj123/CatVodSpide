.class final Lcom/github/catvod/spider/merge/s/w;
.super Lcom/github/catvod/spider/merge/s/a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/a;-><init>(Lcom/github/catvod/spider/merge/s/u;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/s/x;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/x<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/x;->w(Lcom/github/catvod/spider/merge/s/x;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge/s/x;->x(Lcom/github/catvod/spider/merge/s/x;Ljava/util/Set;)Ljava/util/Set;

    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method final e(Lcom/github/catvod/spider/merge/s/x;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/x<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/x;->y(Lcom/github/catvod/spider/merge/s/x;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
