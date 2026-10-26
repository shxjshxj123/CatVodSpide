.class final Lcom/github/catvod/spider/merge/s/c;
.super Ljava/lang/Throwable;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Failure occurred while trying to finish a future."

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
