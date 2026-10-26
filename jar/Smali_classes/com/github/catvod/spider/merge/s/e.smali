.class final Lcom/github/catvod/spider/merge/s/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final d:Lcom/github/catvod/spider/merge/s/e;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;

.field c:Lcom/github/catvod/spider/merge/s/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/s/e;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/s/e;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/s/e;->d:Lcom/github/catvod/spider/merge/s/e;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/e;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/s/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/e;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
