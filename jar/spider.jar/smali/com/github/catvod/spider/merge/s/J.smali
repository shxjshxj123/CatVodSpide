.class final Lcom/github/catvod/spider/merge/s/J;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/s/L;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/L<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/s/L;Lcom/github/catvod/spider/merge/s/W;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/J;->a:Lcom/github/catvod/spider/merge/s/L;

    return-void
.end method

.method static a(Lcom/github/catvod/spider/merge/s/J;Ljava/lang/Thread;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/J;->a:Lcom/github/catvod/spider/merge/s/L;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/s/L;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
