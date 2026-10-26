.class public final Lcom/github/catvod/spider/merge/s/G;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/p/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/p/f<",
            "Lcom/github/catvod/spider/merge/s/M<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge/p/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/G;->a:Lcom/github/catvod/spider/merge/p/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/github/catvod/spider/merge/s/M;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/github/catvod/spider/merge/s/M<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge/s/z;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/s/G;->a:Lcom/github/catvod/spider/merge/p/f;

    invoke-direct {v0, v1, p1}, Lcom/github/catvod/spider/merge/s/z;-><init>(Lcom/github/catvod/spider/merge/p/c;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
