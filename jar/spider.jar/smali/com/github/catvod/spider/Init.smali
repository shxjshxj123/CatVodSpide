.class public Lcom/github/catvod/spider/Init;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/github/catvod/spider/Init;->b:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/Init;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static context()Landroid/app/Application;
    .registers 1

    invoke-static {}, Lcom/github/catvod/spider/Init;->get()Lcom/github/catvod/spider/Init;

    move-result-object v0

    iget-object v0, v0, Lcom/github/catvod/spider/Init;->c:Landroid/app/Application;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/Init;->get()Lcom/github/catvod/spider/Init;

    move-result-object v0

    iget-object v0, v0, Lcom/github/catvod/spider/Init;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static get()Lcom/github/catvod/spider/Init;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/Init$Loader;->a:Lcom/github/catvod/spider/Init;

    return-object v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 6

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "currentActivityThread"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mActivities"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    const-string v0, "activity"

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    return-object v0

    :cond_66
    return-object v3
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/Init;->get()Lcom/github/catvod/spider/Init;

    move-result-object v0

    check-cast p0, Landroid/app/Application;

    iput-object p0, v0, Lcom/github/catvod/spider/Init;->c:Landroid/app/Application;

    const-string p0, "\u81ea\u5b9a\u7fa9\u722c\u87f2\u4ee3\u78bc\u8f09\u5165\u6210\u529f\uff01"

    invoke-static {p0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/Init;->get()Lcom/github/catvod/spider/Init;

    move-result-object v0

    iget-object v0, v0, Lcom/github/catvod/spider/Init;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static run(Ljava/lang/Runnable;I)V
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/Init;->get()Lcom/github/catvod/spider/Init;

    move-result-object v0

    iget-object v0, v0, Lcom/github/catvod/spider/Init;->b:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
