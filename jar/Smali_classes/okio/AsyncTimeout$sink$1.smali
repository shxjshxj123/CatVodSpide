.class public final Lokio/AsyncTimeout$sink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# instance fields
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v1, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_19
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_17
    move-exception v1

    goto :goto_26

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_25
    throw v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_17

    :goto_26
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    throw v1
.end method

.method public flush()V
    .registers 4

    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_5
    iget-object v1, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_19
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_17
    move-exception v1

    goto :goto_26

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v0, v1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_25
    throw v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_17

    :goto_26
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    throw v1
.end method

.method public timeout()Lokio/AsyncTimeout;
    .registers 2

    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .registers 2

    invoke-virtual {p0}, Lokio/AsyncTimeout$sink$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AsyncTimeout.sink("

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    :goto_f
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_5d

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_17
    invoke-static {v2}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    const/high16 v3, 0x10000

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_31

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_2e

    move-wide v0, p2

    goto :goto_31

    :cond_2e
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_17

    :cond_31
    :goto_31
    iget-object v2, p0, Lokio/AsyncTimeout$sink$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    :try_start_36
    iget-object v3, p0, Lokio/AsyncTimeout$sink$1;->$sink:Lokio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_4b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_49

    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result v3

    if-nez v3, :cond_43

    sub-long/2addr p2, v0

    goto :goto_f

    :cond_43
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_49
    move-exception p1

    goto :goto_58

    :catch_4b
    move-exception p1

    :try_start_4c
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result p2

    if-nez p2, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {v2, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_57
    throw p1
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_49

    :goto_58
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    move-result p2

    throw p1

    :cond_5d
    return-void
.end method
