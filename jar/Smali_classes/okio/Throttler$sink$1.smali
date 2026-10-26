.class public final Lokio/Throttler$sink$1;
.super Lokio/ForwardingSink;
.source "SourceFile"


# instance fields
.field final synthetic $sink:Lokio/Sink;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Sink;Lokio/Sink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    iput-object p2, p0, Lokio/Throttler$sink$1;->$sink:Lokio/Sink;

    invoke-direct {p0, p3}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_25

    :try_start_b
    iget-object v0, p0, Lokio/Throttler$sink$1;->this$0:Lokio/Throttler;

    invoke-virtual {v0, p2, p3}, Lokio/Throttler;->take$okio(J)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_16

    sub-long/2addr p2, v0

    goto :goto_5

    :catch_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    return-void
.end method
