.class final Lcom/github/catvod/spider/merge/s/U;
.super Lcom/github/catvod/spider/merge/s/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/s/L<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/github/catvod/spider/merge/s/V;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/s/V;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/U;->d:Lcom/github/catvod/spider/merge/s/V;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/L;-><init>()V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/U;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/U;->d:Lcom/github/catvod/spider/merge/s/V;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/U;->d:Lcom/github/catvod/spider/merge/s/V;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/s/o;->t(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/U;->d:Lcom/github/catvod/spider/merge/s/V;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/V;->isDone()Z

    move-result v0

    return v0
.end method

.method final e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/U;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/U;->c:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
