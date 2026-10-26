.class public Lcom/github/catvod/spider/JSDemo;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/whl/quickjs/wrapper/QuickJSContext;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/catvod/spider/JSDemo;)V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/JSDemo;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object p0, p0, Lcom/github/catvod/spider/JSDemo;->b:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->destroy()V

    return-void
.end method

.method public static b(Lcom/github/catvod/spider/JSDemo;)V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/JSDemo;->b:Lcom/whl/quickjs/wrapper/QuickJSContext;

    if-eqz v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-static {}, Lcom/whl/quickjs/wrapper/QuickJSContext;->create()Lcom/whl/quickjs/wrapper/QuickJSContext;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/JSDemo;->b:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-static {v0}, Lcom/whl/quickjs/android/QuickJSLoader;->initConsoleLog(Lcom/whl/quickjs/wrapper/QuickJSContext;)V

    :goto_e
    return-void
.end method

.method public static synthetic c(Lcom/github/catvod/spider/JSDemo;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/JSDemo;->b:Lcom/whl/quickjs/wrapper/QuickJSContext;

    const-string v1, "var text = \'homeContent\';"

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/github/catvod/spider/JSDemo;->b:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->getGlobalObject()Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object p0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/whl/quickjs/wrapper/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/b/o;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/github/catvod/spider/JSDemo;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 3

    new-instance p1, Lcom/github/catvod/spider/merge/l/e;

    invoke-direct {p1, p0}, Lcom/github/catvod/spider/merge/l/e;-><init>(Lcom/github/catvod/spider/JSDemo;)V

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/JSDemo;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/JSDemo;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/github/catvod/spider/merge/b/p;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/github/catvod/spider/merge/b/p;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
