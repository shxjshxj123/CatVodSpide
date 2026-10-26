.class final Lcom/github/catvod/spider/merge/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lcom/github/catvod/spider/merge/s/b;

.field static final d:Lcom/github/catvod/spider/merge/s/b;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-boolean v0, Lcom/github/catvod/spider/merge/s/o;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/github/catvod/spider/merge/s/b;->d:Lcom/github/catvod/spider/merge/s/b;

    sput-object v1, Lcom/github/catvod/spider/merge/s/b;->c:Lcom/github/catvod/spider/merge/s/b;

    goto :goto_1a

    :cond_a
    new-instance v0, Lcom/github/catvod/spider/merge/s/b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/s/b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/github/catvod/spider/merge/s/b;->d:Lcom/github/catvod/spider/merge/s/b;

    new-instance v0, Lcom/github/catvod/spider/merge/s/b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/github/catvod/spider/merge/s/b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/github/catvod/spider/merge/s/b;->c:Lcom/github/catvod/spider/merge/s/b;

    :goto_1a
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge/s/b;->a:Z

    iput-object p2, p0, Lcom/github/catvod/spider/merge/s/b;->b:Ljava/lang/Throwable;

    return-void
.end method
