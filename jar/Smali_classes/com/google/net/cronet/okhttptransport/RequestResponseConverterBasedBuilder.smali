.class abstract Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SubBuilderT:",
        "Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder<",
        "*+TObjectBeingBuiltT;>;ObjectBeingBuiltT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final castedThis:Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSubBuilderT;"
        }
    .end annotation
.end field

.field private final cronetEngine:Lorg/chromium/net/CronetEngine;

.field private redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

.field private uploadDataProviderExecutorSize:I


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/CronetEngine;",
            "Ljava/lang/Class<",
            "TSubBuilderT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->uploadDataProviderExecutorSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->cronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge/o/m;->b(Z)V

    iput-object p0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->castedThis:Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;

    return-void
.end method


# virtual methods
.method public final build()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TObjectBeingBuiltT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/net/cronet/okhttptransport/RedirectStrategy;->defaultStrategy()Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    :cond_a
    new-instance v0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->cronetEngine:Lorg/chromium/net/CronetEngine;

    iget v1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->uploadDataProviderExecutorSize:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;->create(Ljava/util/concurrent/ExecutorService;)Lcom/google/net/cronet/okhttptransport/RequestBodyConverterImpl;

    move-result-object v4

    new-instance v5, Lcom/google/net/cronet/okhttptransport/ResponseConverter;

    invoke-direct {v5}, Lcom/google/net/cronet/okhttptransport/ResponseConverter;-><init>()V

    iget-object v6, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/google/net/cronet/okhttptransport/RequestBodyConverter;Lcom/google/net/cronet/okhttptransport/ResponseConverter;Lcom/google/net/cronet/okhttptransport/RedirectStrategy;)V

    invoke-virtual {p0, v0}, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->build(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract build(Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/net/cronet/okhttptransport/RequestResponseConverter;",
            ")TObjectBeingBuiltT;"
        }
    .end annotation
.end method

.method public final setRedirectStrategy(Lcom/google/net/cronet/okhttptransport/RedirectStrategy;)Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/net/cronet/okhttptransport/RedirectStrategy;",
            ")TSubBuilderT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->redirectStrategy:Lcom/google/net/cronet/okhttptransport/RedirectStrategy;

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->castedThis:Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;

    return-object p1
.end method

.method public final setUploadDataProviderExecutorSize(I)Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSubBuilderT;"
        }
    .end annotation

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "The number of threads must be positive!"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/o/m;->c(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->uploadDataProviderExecutorSize:I

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;->castedThis:Lcom/google/net/cronet/okhttptransport/RequestResponseConverterBasedBuilder;

    return-object p1
.end method
