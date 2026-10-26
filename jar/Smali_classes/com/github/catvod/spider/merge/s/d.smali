.class final Lcom/github/catvod/spider/merge/s/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/s/d;

    new-instance v1, Lcom/github/catvod/spider/merge/s/c;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/s/c;-><init>()V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/s/d;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/d;->a:Ljava/lang/Throwable;

    return-void
.end method
