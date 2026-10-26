.class final Lcom/github/catvod/spider/merge/s/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lcom/github/catvod/spider/merge/s/n;


# instance fields
.field volatile a:Ljava/lang/Thread;

.field volatile b:Lcom/github/catvod/spider/merge/s/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/s/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/s/n;-><init>(Z)V

    sput-object v0, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/merge/s/o;->c()Lcom/github/catvod/spider/merge/s/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/github/catvod/spider/merge/s/a;->i(Lcom/github/catvod/spider/merge/s/n;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
