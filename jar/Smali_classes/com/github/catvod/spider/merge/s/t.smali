.class abstract Lcom/github/catvod/spider/merge/s/t;
.super Lcom/github/catvod/spider/merge/s/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/x<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final o:Ljava/util/logging/Logger;


# instance fields
.field private l:Lcom/github/catvod/spider/merge/p/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/c<",
            "+",
            "Lcom/github/catvod/spider/merge/s/M<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/github/catvod/spider/merge/s/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/s/t;->o:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/github/catvod/spider/merge/p/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/p/c<",
            "+",
            "Lcom/github/catvod/spider/merge/s/M<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/x;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/s/t;->m:Z

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/s/t;->n:Z

    return-void
.end method

.method public static D(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/s/M;I)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 1
    :try_start_4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/s/j;->cancel(Z)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_26

    goto :goto_22

    .line 2
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/H;->c(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/t;->F()V
    :try_end_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_17} :catch_1a
    .catchall {:try_start_11 .. :try_end_17} :catchall_18

    goto :goto_22

    :catchall_18
    move-exception p1

    goto :goto_1f

    :catch_1a
    move-exception p1

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1f
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/s/t;->I(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 3
    :goto_22
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/s/t;->G(Lcom/github/catvod/spider/merge/p/c;)V

    return-void

    :catchall_26
    move-exception p1

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge/s/t;->G(Lcom/github/catvod/spider/merge/p/c;)V

    throw p1
.end method

.method public static synthetic E(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/p/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/s/t;->G(Lcom/github/catvod/spider/merge/p/c;)V

    return-void
.end method

.method private G(Lcom/github/catvod/spider/merge/p/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/p/c<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/x;->B()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/o/m;->i(ZLjava/lang/Object;)V

    if-nez v0, :cond_45

    if-eqz p1, :cond_3a

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/p/c;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2
    :try_start_28
    invoke-static {v0}, Lcom/github/catvod/spider/merge/s/H;->c(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/t;->F()V
    :try_end_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_2e} :catch_31
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2f

    goto :goto_16

    :catchall_2f
    move-exception v0

    goto :goto_36

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_36
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/t;->I(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 3
    :cond_3a
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/x;->A()V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/t;->H()V

    sget-object p1, Lcom/github/catvod/spider/merge/s/s;->b:Lcom/github/catvod/spider/merge/s/s;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/s/t;->K(Lcom/github/catvod/spider/merge/s/s;)V

    :cond_45
    return-void
.end method

.method private I(Ljava/lang/Throwable;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/s/t;->m:Z

    const-string v1, "Input Future failed with Error"

    const-string v2, "Got more than one input Future failure. Logging failures after the first"

    if-eqz v0, :cond_36

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/s/o;->u(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/x;->C()Ljava/util/Set;

    move-result-object v0

    move-object v3, p1

    :goto_16
    if-eqz v3, :cond_25

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v0, 0x0

    goto :goto_26

    :cond_20
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_16

    :cond_25
    const/4 v0, 0x1

    :goto_26
    if-eqz v0, :cond_36

    .line 4
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    sget-object v0, Lcom/github/catvod/spider/merge/s/t;->o:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_36
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_45

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v1, v2

    .line 6
    :goto_3e
    sget-object v0, Lcom/github/catvod/spider/merge/s/t;->o:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    return-void
.end method


# virtual methods
.method abstract F()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method abstract H()V
.end method

.method final J()V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge/s/A;->a:Lcom/github/catvod/spider/merge/s/A;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/t;->H()V

    return-void

    :cond_13
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/s/t;->m:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/p/c;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/s/M;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/github/catvod/spider/merge/s/r;

    invoke-direct {v5, p0, v3, v1}, Lcom/github/catvod/spider/merge/s/r;-><init>(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/s/M;I)V

    invoke-interface {v3, v5, v0}, Lcom/github/catvod/spider/merge/s/M;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v4

    goto :goto_1e

    :cond_36
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/s/t;->n:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    new-instance v2, Lcom/github/catvod/spider/merge/s/q;

    invoke-direct {v2, p0, v1}, Lcom/github/catvod/spider/merge/s/q;-><init>(Lcom/github/catvod/spider/merge/s/t;Lcom/github/catvod/spider/merge/p/c;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/p/c;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/s/M;

    invoke-interface {v3, v2, v0}, Lcom/github/catvod/spider/merge/s/M;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_49

    :cond_59
    return-void
.end method

.method K(Lcom/github/catvod/spider/merge/s/s;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    return-void
.end method

.method protected final k()V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    sget-object v1, Lcom/github/catvod/spider/merge/s/s;->a:Lcom/github/catvod/spider/merge/s/s;

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/s/t;->K(Lcom/github/catvod/spider/merge/s/s;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/j;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->v()Z

    move-result v1

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/p/c;->e()Lcom/github/catvod/spider/merge/p/m;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method protected final r()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/t;->l:Lcom/github/catvod/spider/merge/p/c;

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-super {p0}, Lcom/github/catvod/spider/merge/s/o;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final z(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/o;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    if-eqz v0, :cond_1e

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1e

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_10

    :cond_1e
    :goto_1e
    return-void
.end method
