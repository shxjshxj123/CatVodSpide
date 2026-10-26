.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final callbackStep:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field private final exception:Lorg/chromium/net/CronetException;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->callbackStep:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->buffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->exception:Lorg/chromium/net/CronetException;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->callbackStep:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Lorg/chromium/net/CronetException;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->exception:Lorg/chromium/net/CronetException;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;)Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackResult;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method
