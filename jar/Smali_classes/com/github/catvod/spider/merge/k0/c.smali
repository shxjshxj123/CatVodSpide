.class public final Lcom/github/catvod/spider/merge/k0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:I

.field static final b:Lcom/github/catvod/spider/merge/m0/d;

.field static final c:Lcom/github/catvod/spider/merge/N/a;

.field static d:Z

.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge/m0/d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/m0/d;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/k0/c;->b:Lcom/github/catvod/spider/merge/m0/d;

    new-instance v0, Lcom/github/catvod/spider/merge/N/a;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/N/a;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/k0/c;->c:Lcom/github/catvod/spider/merge/N/a;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    const/4 v1, 0x0

    .line 1
    :try_start_11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    nop

    :goto_17
    const/4 v0, 0x0

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_22

    :cond_1c
    const-string v2, "true"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 3
    :goto_22
    sput-boolean v1, Lcom/github/catvod/spider/merge/k0/c;->d:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1.6"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "1.7"

    aput-object v2, v1, v0

    sput-object v1, Lcom/github/catvod/spider/merge/k0/c;->e:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lcom/github/catvod/spider/merge/k0/c;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()V
    .registers 7

    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_4
    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->f()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/k0/c;->i(Ljava/util/Set;)V

    :cond_11
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    const/4 v3, 0x3

    sput v3, Lcom/github/catvod/spider/merge/k0/c;->a:I

    invoke-static {v1}, Lcom/github/catvod/spider/merge/k0/c;->h(Ljava/util/Set;)V
    :try_end_1a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_1a} :catch_4f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_1a} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_20
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    :goto_1a
    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->g()V

    goto :goto_81

    :catchall_1e
    move-exception v0

    goto :goto_88

    :catch_20
    move-exception v1

    .line 1
    :try_start_21
    sput v2, Lcom/github/catvod/spider/merge/k0/c;->a:I

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/m0/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected initialization failure"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v3, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sput v2, Lcom/github/catvod/spider/merge/k0/c;->a:I

    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v1}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v1, "Your binding is version 1.5.5 or earlier."

    invoke-static {v1}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v1, "Upgrade your binding to version 1.6.x."

    invoke-static {v1}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :cond_4e
    throw v0

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_58

    goto :goto_6c

    :cond_58
    const-string v5, "org/slf4j/impl/StaticLoggerBinder"

    .line 3
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_63

    :goto_61
    const/4 v4, 0x1

    goto :goto_6c

    :cond_63
    const-string v5, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_61

    :cond_6c
    :goto_6c
    if-eqz v4, :cond_82

    const/4 v0, 0x4

    .line 4
    sput v0, Lcom/github/catvod/spider/merge/k0/c;->a:I

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    goto :goto_1a

    :goto_81
    return-void

    .line 5
    :cond_82
    sput v2, Lcom/github/catvod/spider/merge/k0/c;->a:I

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/m0/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    throw v1
    :try_end_88
    .catchall {:try_start_21 .. :try_end_88} :catchall_1e

    :goto_88
    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->g()V

    goto :goto_8d

    :goto_8c
    throw v0

    :goto_8d
    goto :goto_8c
.end method

.method static b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_5
    const-class v1, Lcom/github/catvod/spider/merge/k0/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/github/catvod/spider/merge/k0/c;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_1a

    :cond_14
    sget-object v2, Lcom/github/catvod/spider/merge/k0/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_1a

    :catch_2a
    move-exception v1

    const-string v2, "Error getting resources from path"

    invoke-static {v2, v1}, Lcom/github/catvod/spider/merge/m0/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    return-object v0
.end method

.method public static c()Lcom/github/catvod/spider/merge/k0/a;
    .registers 4

    sget v0, Lcom/github/catvod/spider/merge/k0/c;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    const-class v0, Lcom/github/catvod/spider/merge/k0/c;

    monitor-enter v0

    :try_start_9
    sget v3, Lcom/github/catvod/spider/merge/k0/c;->a:I

    if-nez v3, :cond_19

    sput v2, Lcom/github/catvod/spider/merge/k0/c;->a:I

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->a()V

    sget v3, Lcom/github/catvod/spider/merge/k0/c;->a:I

    if-ne v3, v1, :cond_19

    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->j()V

    .line 2
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    sget v0, Lcom/github/catvod/spider/merge/k0/c;->a:I

    if-eq v0, v2, :cond_46

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->c:Lcom/github/catvod/spider/merge/N/a;

    return-object v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    return-object v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->b:Lcom/github/catvod/spider/merge/m0/d;

    return-object v0
.end method

.method public static d(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/k0/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/github/catvod/spider/merge/k0/b;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->c()Lcom/github/catvod/spider/merge/k0/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/github/catvod/spider/merge/k0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/k0/b;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/github/catvod/spider/merge/k0/c;->d:Z

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/github/catvod/spider/merge/m0/f;->a()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    if-eqz p0, :cond_3c

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-interface {v0}, Lcom/github/catvod/spider/merge/k0/b;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    invoke-static {p0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :cond_3c
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/k0/b;
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/merge/k0/c;->c()Lcom/github/catvod/spider/merge/k0/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/github/catvod/spider/merge/k0/a;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/k0/b;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .registers 2

    const-string v0, "java.vendor.url"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_7

    :catch_7
    if-nez v1, :cond_b

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static g()V
    .registers 10

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->b:Lcom/github/catvod/spider/merge/m0/d;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/d;->e()V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/d;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/m0/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/m0/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge/k0/c;->e(Ljava/lang/String;)Lcom/github/catvod/spider/merge/k0/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/m0/c;->f(Lcom/github/catvod/spider/merge/k0/b;)V

    goto :goto_10

    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_e2

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->b:Lcom/github/catvod/spider/merge/m0/d;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/d;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v5

    if-nez v5, :cond_47

    .line 3
    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->b:Lcom/github/catvod/spider/merge/m0/d;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/d;->b()V

    return-void

    .line 4
    :cond_47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/l0/c;

    if-nez v6, :cond_5a

    goto :goto_7c

    .line 5
    :cond_5a
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/l0/c;->a()Lcom/github/catvod/spider/merge/m0/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/m0/c;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/m0/c;->d()Z

    move-result v9

    if-nez v9, :cond_d5

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/m0/c;->c()Z

    move-result v9

    if-eqz v9, :cond_6f

    goto :goto_7c

    :cond_6f
    invoke-virtual {v7}, Lcom/github/catvod/spider/merge/m0/c;->b()Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge/m0/c;->e(Lcom/github/catvod/spider/merge/l0/b;)V

    goto :goto_7c

    :cond_79
    invoke-static {v8}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :goto_7c
    add-int/lit8 v7, v0, 0x1

    if-nez v0, :cond_d2

    .line 6
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/l0/c;->a()Lcom/github/catvod/spider/merge/m0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A number ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#replay"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    goto :goto_d2

    .line 8
    :cond_ae
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/l0/c;->a()Lcom/github/catvod/spider/merge/m0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/m0/c;->c()Z

    move-result v0

    if-eqz v0, :cond_b9

    goto :goto_d2

    :cond_b9
    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 9
    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "during the initialization phase. Logging calls during this"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "loggers will work as normally expected."

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    move v0, v7

    goto/16 :goto_4b

    .line 10
    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate logger cannot be null at this state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_dd
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3b

    :catchall_e2
    move-exception v1

    .line 12
    :try_start_e3
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    goto :goto_e6

    :goto_e5
    throw v1

    :goto_e6
    goto :goto_e5
.end method

.method private static h(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2a

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_2a

    const-string p0, "Actual binding is of type ["

    .line 2
    invoke-static {p0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private static i(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_3f

    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found binding in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    goto :goto_14

    :cond_3a
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {p0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private static final j()V
    .registers 6

    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    sget-object v1, Lcom/github/catvod/spider/merge/k0/c;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v2, :cond_15

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v4, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    if-nez v4, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/github/catvod/spider/merge/k0/c;->e:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v0}, Lcom/github/catvod/spider/merge/m0/f;->b(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_42} :catch_49
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    goto :goto_49

    :catchall_43
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/m0/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_49
    :cond_49
    :goto_49
    return-void
.end method
