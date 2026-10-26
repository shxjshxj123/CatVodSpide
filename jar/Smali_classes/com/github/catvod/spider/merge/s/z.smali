.class final Lcom/github/catvod/spider/merge/s/z;
.super Lcom/github/catvod/spider/merge/s/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/t<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private p:Lcom/github/catvod/spider/merge/s/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/y;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/p/c;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/p/c<",
            "+",
            "Lcom/github/catvod/spider/merge/s/M<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/s/t;-><init>(Lcom/github/catvod/spider/merge/p/c;)V

    new-instance p1, Lcom/github/catvod/spider/merge/s/y;

    invoke-direct {p1, p0, p2}, Lcom/github/catvod/spider/merge/s/y;-><init>(Lcom/github/catvod/spider/merge/s/z;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/z;->p:Lcom/github/catvod/spider/merge/s/y;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/s/t;->J()V

    return-void
.end method

.method static synthetic L(Lcom/github/catvod/spider/merge/s/z;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/z;->p:Lcom/github/catvod/spider/merge/s/y;

    return-void
.end method


# virtual methods
.method final F()V
    .registers 1

    return-void
.end method

.method final H()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/z;->p:Lcom/github/catvod/spider/merge/s/y;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/y;->h()V

    :cond_7
    return-void
.end method

.method final K(Lcom/github/catvod/spider/merge/s/s;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge/s/t;->K(Lcom/github/catvod/spider/merge/s/s;)V

    sget-object v0, Lcom/github/catvod/spider/merge/s/s;->a:Lcom/github/catvod/spider/merge/s/s;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/z;->p:Lcom/github/catvod/spider/merge/s/y;

    :cond_a
    return-void
.end method

.method protected final q()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/z;->p:Lcom/github/catvod/spider/merge/s/y;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/L;->c()V

    :cond_7
    return-void
.end method
