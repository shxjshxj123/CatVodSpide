.class public final Lcom/github/catvod/spider/merge/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/k0/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/github/catvod/spider/merge/m0/c;

.field c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/m0/c;Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/m0/c;",
            "Ljava/util/Queue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/l0/a;->b:Lcom/github/catvod/spider/merge/m0/c;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/m0/c;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/l0/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/l0/a;->c:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge/l0/c;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/l0/c;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p2, p0, Lcom/github/catvod/spider/merge/l0/a;->b:Lcom/github/catvod/spider/merge/m0/c;

    .line 2
    iput-object p2, p1, Lcom/github/catvod/spider/merge/l0/c;->a:Lcom/github/catvod/spider/merge/m0/c;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    iget-object p2, p0, Lcom/github/catvod/spider/merge/l0/a;->c:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/l0/a;->a:Ljava/lang/String;

    return-object v0
.end method
