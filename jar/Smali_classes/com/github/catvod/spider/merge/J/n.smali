.class public final Lcom/github/catvod/spider/merge/J/n;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
