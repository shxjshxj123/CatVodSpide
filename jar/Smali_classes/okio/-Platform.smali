.class public final Lokio/-Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final asUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 2

    const-string v0, "$this$asUtf8ToByteArray"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/github/catvod/spider/merge/F/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synchronized(Ljava/lang/Object;Lcom/github/catvod/spider/merge/C/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/github/catvod/spider/merge/C/a<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "lock"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_b
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/C/a;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final toUtf8String([B)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$toUtf8String"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/github/catvod/spider/merge/F/b;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
