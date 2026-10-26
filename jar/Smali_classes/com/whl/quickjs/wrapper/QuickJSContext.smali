.class public Lcom/whl/quickjs/wrapper/QuickJSContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNKNOWN_FILE:Ljava/lang/String; = "unknown.js"


# instance fields
.field private final callFunctionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/whl/quickjs/wrapper/JSCallFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final context:J

.field private final currentThreadId:J

.field private destroyed:Z

.field private final nativeCleaner:Lcom/whl/quickjs/wrapper/NativeCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/whl/quickjs/wrapper/NativeCleaner<",
            "Lcom/whl/quickjs/wrapper/JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private final runtime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/whl/quickjs/wrapper/QuickJSContext$1;

    invoke-direct {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext$1;-><init>(Lcom/whl/quickjs/wrapper/QuickJSContext;)V

    iput-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->nativeCleaner:Lcom/whl/quickjs/wrapper/NativeCleaner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->destroyed:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    :try_start_14
    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->createRuntime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-direct {p0, v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->createContext(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J
    :try_end_20
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_20} :catch_2b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->currentThreadId:J

    return-void

    :catch_2b
    new-instance v0, Lcom/whl/quickjs/wrapper/QuickJSException;

    const-string v1, "The so library must be initialized before createContext! QuickJSLoader.init should be called on the Android platform. In the JVM, you need to manually call System.loadLibrary"

    invoke-direct {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/whl/quickjs/wrapper/QuickJSContext;)J
    .registers 3

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/whl/quickjs/wrapper/QuickJSContext;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/whl/quickjs/wrapper/QuickJSContext;->freeDupValue(JJ)V

    return-void
.end method

.method private native call(JJJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private checkDestroyed()V
    .registers 3

    iget-boolean v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->destroyed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/whl/quickjs/wrapper/QuickJSException;

    const-string v1, "Can not called this after QuickJSContext was destroyed!"

    invoke-direct {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSameThread()V
    .registers 6

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->currentThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    return-void

    :cond_14
    new-instance v0, Lcom/whl/quickjs/wrapper/QuickJSException;

    const-string v1, "Must be call same thread in QuickJSContext.create!"

    invoke-direct {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native compile(JLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static create()Lcom/whl/quickjs/wrapper/QuickJSContext;
    .registers 1

    new-instance v0, Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-direct {v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;-><init>()V

    return-object v0
.end method

.method private native createContext(J)J
.end method

.method private native createRuntime()J
.end method

.method private native destroyContext(J)V
.end method

.method private native dumpMemoryUsage(JLjava/lang/String;)V
.end method

.method private native dumpObjects(JLjava/lang/String;)V
.end method

.method private native dupValue(JJ)V
.end method

.method private dupValue(Lcom/whl/quickjs/wrapper/JSObject;)V
    .registers 6

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dupValue(JJ)V

    return-void
.end method

.method private native evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native evaluateModule(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native execute(J[B)Ljava/lang/Object;
.end method

.method private native freeDupValue(JJ)V
.end method

.method private freeDupValue(Lcom/whl/quickjs/wrapper/JSObject;)V
    .registers 6

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->freeDupValue(JJ)V

    return-void
.end method

.method private native freeValue(JJ)V
.end method

.method private native get(JJI)Ljava/lang/Object;
.end method

.method private native getGlobalObject(J)Lcom/whl/quickjs/wrapper/JSObject;
.end method

.method private native getProperty(JJLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native isLiveObject(JJ)Z
.end method

.method private native length(JJ)I
.end method

.method private native parseJSON(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private putCallFunction(Lcom/whl/quickjs/wrapper/JSCallFunction;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private native runGC(J)V
.end method

.method private native set(JJLjava/lang/Object;I)V
.end method

.method private native setMaxStackSize(JI)V
.end method

.method private native setMemoryLimit(JI)V
.end method

.method private native setProperty(JJLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native stringify(JJ)Ljava/lang/String;
.end method


# virtual methods
.method varargs call(Lcom/whl/quickjs/wrapper/JSObject;J[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    const/4 v0, 0x0

    :goto_7
    array-length v1, p4

    if-ge v0, v1, :cond_18

    aget-object v1, p4, v0

    instance-of v2, v1, Lcom/whl/quickjs/wrapper/JSCallFunction;

    if-eqz v2, :cond_15

    check-cast v1, Lcom/whl/quickjs/wrapper/JSCallFunction;

    invoke-direct {p0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->putCallFunction(Lcom/whl/quickjs/wrapper/JSCallFunction;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    iget-wide v2, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/whl/quickjs/wrapper/QuickJSContext;->call(JJJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs callFunctionBack(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/whl/quickjs/wrapper/JSCallFunction;

    invoke-interface {p1, p2}, Lcom/whl/quickjs/wrapper/JSCallFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/whl/quickjs/wrapper/JSCallFunction;

    if-eqz p2, :cond_20

    move-object p2, p1

    check-cast p2, Lcom/whl/quickjs/wrapper/JSCallFunction;

    invoke-direct {p0, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->putCallFunction(Lcom/whl/quickjs/wrapper/JSCallFunction;)V

    :cond_20
    return-object p1
.end method

.method public compile(Ljava/lang/String;)[B
    .registers 3

    const-string v0, "unknown.js"

    invoke-virtual {p0, p1, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->compile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->compile(JLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public createNewJSArray()Lcom/whl/quickjs/wrapper/JSArray;
    .registers 2

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->parseJSON(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/JSArray;

    return-object v0
.end method

.method public createNewJSObject()Lcom/whl/quickjs/wrapper/JSObject;
    .registers 2

    const-string v0, "{}"

    invoke-virtual {p0, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->parseJSON(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 3

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->nativeCleaner:Lcom/whl/quickjs/wrapper/NativeCleaner;

    invoke-virtual {v0}, Lcom/whl/quickjs/wrapper/NativeCleaner;->forceClean()V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->destroyContext(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->destroyed:Z

    return-void
.end method

.method public dumpMemoryUsage()V
    .registers 4

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dumpMemoryUsage(JLjava/lang/String;)V

    return-void
.end method

.method public dumpMemoryUsage(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dumpMemoryUsage(JLjava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public dumpObjects()V
    .registers 4

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dumpObjects(JLjava/lang/String;)V

    return-void
.end method

.method public dumpObjects(Ljava/io/File;)V
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dumpObjects(JLjava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public evaluate(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "unknown.js"

    invoke-virtual {p0, p1, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evaluateModule(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "unknown.js"

    invoke-virtual {p0, p1, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluateModule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public evaluateModule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluateModule(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute([B)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->execute(J[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public freeValue(Lcom/whl/quickjs/wrapper/JSObject;)V
    .registers 6

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->freeValue(JJ)V

    return-void
.end method

.method public get(Lcom/whl/quickjs/wrapper/JSArray;I)Ljava/lang/Object;
    .registers 9

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v1, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/whl/quickjs/wrapper/QuickJSContext;->get(JJI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getCallFunctionMapSize()I
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGlobalObject()Lcom/whl/quickjs/wrapper/JSObject;
    .registers 3

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->getGlobalObject(J)Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v1, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/whl/quickjs/wrapper/QuickJSContext;->getProperty(JJLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hold(Lcom/whl/quickjs/wrapper/JSObject;)V
    .registers 5

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    invoke-direct {p0, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->dupValue(Lcom/whl/quickjs/wrapper/JSObject;)V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->nativeCleaner:Lcom/whl/quickjs/wrapper/NativeCleaner;

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/whl/quickjs/wrapper/NativeCleaner;->register(Ljava/lang/Object;J)V

    return-void
.end method

.method public isLiveObject(Lcom/whl/quickjs/wrapper/JSObject;)Z
    .registers 6

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->isLiveObject(JJ)Z

    move-result p1

    return p1
.end method

.method public length(Lcom/whl/quickjs/wrapper/JSArray;)I
    .registers 6

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->length(JJ)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->parseJSON(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseJSON(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSObject;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->parseJSON(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSObject;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/whl/quickjs/wrapper/JSObject;

    return-object p1

    :cond_13
    new-instance p1, Lcom/whl/quickjs/wrapper/QuickJSException;

    const-string v0, "Only parse json with valid format, must be start with \'{\', if it contains other case, use parse(String) replace."

    invoke-direct {p1, v0}, Lcom/whl/quickjs/wrapper/QuickJSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCallFunction(I)V
    .registers 3

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->callFunctionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runGC()V
    .registers 3

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-direct {p0, v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->runGC(J)V

    return-void
.end method

.method public set(Lcom/whl/quickjs/wrapper/JSArray;Ljava/lang/Object;I)V
    .registers 11

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v1, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/whl/quickjs/wrapper/QuickJSContext;->set(JJLjava/lang/Object;I)V

    return-void
.end method

.method public setMaxStackSize(I)V
    .registers 4

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setMaxStackSize(JI)V

    return-void
.end method

.method public setMemoryLimit(I)V
    .registers 4

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->runtime:J

    invoke-direct {p0, v0, v1, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setMemoryLimit(JI)V

    return-void
.end method

.method public setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    instance-of v0, p3, Lcom/whl/quickjs/wrapper/JSCallFunction;

    if-eqz v0, :cond_10

    move-object v0, p3

    check-cast v0, Lcom/whl/quickjs/wrapper/JSCallFunction;

    invoke-direct {p0, v0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->putCallFunction(Lcom/whl/quickjs/wrapper/JSCallFunction;)V

    :cond_10
    iget-wide v2, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(JJLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stringify(Lcom/whl/quickjs/wrapper/JSObject;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkSameThread()V

    invoke-direct {p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->checkDestroyed()V

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/QuickJSContext;->context:J

    invoke-virtual {p1}, Lcom/whl/quickjs/wrapper/JSObject;->getPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/whl/quickjs/wrapper/QuickJSContext;->stringify(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public throwJSException(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throw \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
