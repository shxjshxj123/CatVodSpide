.class final Lcom/github/catvod/spider/merge/s/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/github/catvod/spider/merge/s/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/E<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/github/catvod/spider/merge/s/E;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/github/catvod/spider/merge/s/E<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/F;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/F;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/github/catvod/spider/merge/t/a;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/github/catvod/spider/merge/t/a;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/t/b;->a(Lcom/github/catvod/spider/merge/t/a;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    invoke-interface {v1, v0}, Lcom/github/catvod/spider/merge/s/E;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/F;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/H;->c(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1a} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_22
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_1a} :catch_20

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    invoke-interface {v1, v0}, Lcom/github/catvod/spider/merge/s/E;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    invoke-interface {v1, v0}, Lcom/github/catvod/spider/merge/s/E;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :catch_29
    move-exception v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/github/catvod/spider/merge/s/E;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/github/catvod/spider/merge/o/k;->a(Ljava/lang/Object;)Lcom/github/catvod/spider/merge/o/j;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/F;->b:Lcom/github/catvod/spider/merge/s/E;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/o/j;->a(Ljava/lang/Object;)Lcom/github/catvod/spider/merge/o/j;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/o/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
