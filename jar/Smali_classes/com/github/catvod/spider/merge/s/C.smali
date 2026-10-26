.class public abstract Lcom/github/catvod/spider/merge/s/C;
.super Lcom/github/catvod/spider/merge/s/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/catvod/spider/merge/s/D<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/s/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/catvod/spider/merge/s/M<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/github/catvod/spider/merge/s/M;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/M<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/s/D;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/s/C;->a:Lcom/github/catvod/spider/merge/s/M;

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/C;->a:Lcom/github/catvod/spider/merge/s/M;

    return-object v0
.end method

.method protected final c()Lcom/github/catvod/spider/merge/s/M;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/catvod/spider/merge/s/M<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/C;->a:Lcom/github/catvod/spider/merge/s/M;

    return-object v0
.end method

.method protected final d()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/s/C;->a:Lcom/github/catvod/spider/merge/s/M;

    return-object v0
.end method
