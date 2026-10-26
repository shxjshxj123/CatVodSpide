.class final Lorg/chromium/net/UploadDataProviders$FileUploadProvider;
.super Lorg/chromium/net/UploadDataProvider;
.source "SourceFile"


# instance fields
.field private volatile mChannel:Ljava/nio/channels/FileChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;


# direct methods
.method private constructor <init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;)V
    .registers 3

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;Lorg/chromium/net/UploadDataProviders$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;-><init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;)V

    return-void
.end method

.method private getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_13

    iget-object v1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mProvider:Lorg/chromium/net/UploadDataProviders$FileChannelProvider;

    invoke-interface {v1}, Lorg/chromium/net/UploadDataProviders$FileChannelProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_7
    return-void
.end method

.method public getLength()J
    .registers 3

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_18

    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    goto :goto_18

    :cond_16
    add-int/2addr v2, v3

    goto :goto_c

    :cond_18
    :goto_18
    invoke-virtual {p1, v1}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cronet passed a buffer with no bytes remaining"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .registers 5

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method
