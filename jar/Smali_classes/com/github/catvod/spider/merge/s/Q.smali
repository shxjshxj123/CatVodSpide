.class final Lcom/github/catvod/spider/merge/s/Q;
.super Lcom/github/catvod/spider/merge/s/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/s/j<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/j;-><init>()V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/Q;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final r()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/Q;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/Q;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    sget v1, Lcom/github/catvod/spider/merge/o/t;->b:I

    .line 1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1d

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1a

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_1a
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1d
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method
