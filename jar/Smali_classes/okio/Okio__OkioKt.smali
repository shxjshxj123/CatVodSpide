.class final synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final blackhole()Lokio/Sink;
    .registers 1

    new-instance v0, Lokio/BlackholeSink;

    invoke-direct {v0}, Lokio/BlackholeSink;-><init>()V

    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .registers 2

    const-string v0, "$this$buffer"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .registers 2

    const-string v0, "$this$buffer"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    return-object v0
.end method

.method public static final use(Ljava/io/Closeable;Lcom/github/catvod/spider/merge/C/b;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_f
    if-eqz p0, :cond_21

    :try_start_11
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_21

    :catchall_15
    move-exception p0

    if-nez v0, :cond_1a

    move-object v0, p0

    goto :goto_21

    :cond_1a
    if-eq v0, p0, :cond_21

    .line 1
    sget-object v1, Lcom/github/catvod/spider/merge/B/c;->a:Lcom/github/catvod/spider/merge/B/b;

    invoke-virtual {v1, v0, p0}, Lcom/github/catvod/spider/merge/B/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    if-nez v0, :cond_27

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_27
    throw v0
.end method
