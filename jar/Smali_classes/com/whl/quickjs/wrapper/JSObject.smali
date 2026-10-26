.class public Lcom/whl/quickjs/wrapper/JSObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Lcom/whl/quickjs/wrapper/QuickJSContext;

.field private isReleased:Z

.field private final pointer:J


# direct methods
.method public constructor <init>(Lcom/whl/quickjs/wrapper/QuickJSContext;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    iput-wide p2, p0, Lcom/whl/quickjs/wrapper/JSObject;->pointer:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/whl/quickjs/wrapper/JSObject;->lambda$setProperty$0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setProperty$0(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    goto :goto_8

    :catch_7
    move-exception p0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final checkReleased()V
    .registers 3

    iget-boolean v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->isReleased:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This JSObject was Released, Can not call this!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1f

    :cond_12
    check-cast p1, Lcom/whl/quickjs/wrapper/JSObject;

    iget-wide v2, p0, Lcom/whl/quickjs/wrapper/JSObject;->pointer:J

    iget-wide v4, p1, Lcom/whl/quickjs/wrapper/JSObject;->pointer:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getContext()Lcom/whl/quickjs/wrapper/QuickJSContext;
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Double;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Double;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getIntProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Integer;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Integer;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSArray(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSArray;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSArray;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSArray;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSArrayProperty(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSArray;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSArray;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSArray;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSFunction(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSFunction;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSFunction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSFunction;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSFunctionProperty(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSFunction;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSFunction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSFunction;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSObject(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSObject;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSObject;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSObject;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getJSObjectProperty(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSObject;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/whl/quickjs/wrapper/JSObject;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/whl/quickjs/wrapper/JSObject;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Long;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getNames()Lcom/whl/quickjs/wrapper/JSArray;
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    const-string v1, "Object.getOwnPropertyNames"

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/JSFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/JSFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/JSArray;

    return-object v0
.end method

.method public getOwnPropertyNames()Lcom/whl/quickjs/wrapper/JSArray;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    const-string v1, "Object.getOwnPropertyNames"

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/JSFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/JSFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/whl/quickjs/wrapper/JSArray;

    return-object v0
.end method

.method public getPointer()J
    .registers 3

    iget-wide v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->pointer:J

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0, p1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->getProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/whl/quickjs/wrapper/JSObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [J

    iget-wide v1, p0, Lcom/whl/quickjs/wrapper/JSObject;->pointer:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public hold()V
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->hold(Lcom/whl/quickjs/wrapper/JSObject;)V

    return-void
.end method

.method public isAlive()Z
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->isLiveObject(Lcom/whl/quickjs/wrapper/JSObject;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->freeValue(Lcom/whl/quickjs/wrapper/JSObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->isReleased:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;D)V
    .registers 5

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/whl/quickjs/wrapper/JSCallFunction;)V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/whl/quickjs/wrapper/JSObject;)V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 10

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v1}, Lcom/whl/quickjs/wrapper/QuickJSContext;->createNewJSObject()Lcom/whl/quickjs/wrapper/JSObject;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_35

    aget-object v4, p2, v3

    const-class v5, Lcom/whl/quickjs/wrapper/JSMethod;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/github/catvod/spider/merge/w/a;

    invoke-direct {v6, v4, v0}, Lcom/github/catvod/spider/merge/w/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v6}, Lcom/whl/quickjs/wrapper/JSObject;->setProperty(Ljava/lang/String;Lcom/whl/quickjs/wrapper/JSCallFunction;)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_35
    invoke-virtual {p0, p1, v1}, Lcom/whl/quickjs/wrapper/JSObject;->setProperty(Ljava/lang/String;Lcom/whl/quickjs/wrapper/JSObject;)V

    return-void

    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The JavaObj cannot be null. An error occurred in newInstance!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/whl/quickjs/wrapper/QuickJSContext;->setProperty(Lcom/whl/quickjs/wrapper/JSObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stringify()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/whl/quickjs/wrapper/JSObject;->context:Lcom/whl/quickjs/wrapper/QuickJSContext;

    invoke-virtual {v0, p0}, Lcom/whl/quickjs/wrapper/QuickJSContext;->stringify(Lcom/whl/quickjs/wrapper/JSObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/whl/quickjs/wrapper/JSObject;->checkReleased()V

    const-string v0, "toString"

    invoke-virtual {p0, v0}, Lcom/whl/quickjs/wrapper/JSObject;->getJSFunction(Ljava/lang/String;)Lcom/whl/quickjs/wrapper/JSFunction;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/whl/quickjs/wrapper/JSFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
