.class public final Lcom/github/catvod/spider/merge/o/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "sun.misc.JavaLangAccess"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "sun.misc.SharedSecrets"

    .line 1
    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getJavaLangAccess"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_18} :catch_62
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-object v3, v2

    .line 2
    :goto_1a
    sput-object v3, Lcom/github/catvod/spider/merge/o/t;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez v3, :cond_20

    goto :goto_36

    :cond_20
    const-string v3, "getStackTraceElement"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 3
    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 4
    :try_start_2d
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/ThreadDeath; {:try_start_2d .. :try_end_34} :catch_60
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_36

    :catchall_35
    nop

    .line 5
    :goto_36
    sget-object v3, Lcom/github/catvod/spider/merge/o/t;->a:Ljava/lang/Object;

    if-nez v3, :cond_3b

    goto :goto_5f

    :cond_3b
    :try_start_3b
    const-string v5, "getStackTraceDepth"

    new-array v6, v4, [Ljava/lang/Class;

    .line 6
    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v1
    :try_end_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3b .. :try_end_43} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_43} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_43} :catch_5f

    .line 7
    :try_start_43
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_4b
    .catch Ljava/lang/ThreadDeath; {:try_start_43 .. :try_end_4b} :catch_5d
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4c

    goto :goto_4d

    :catchall_4c
    nop

    :goto_4d
    if-nez v2, :cond_50

    goto :goto_5f

    :cond_50
    :try_start_50
    new-array v0, v4, [Ljava/lang/Object;

    .line 8
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :catch_5d
    move-exception v0

    .line 9
    throw v0
    :try_end_5f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_50 .. :try_end_5f} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_5f} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_5f} :catch_5f

    :catch_5f
    :goto_5f
    return-void

    :catch_60
    move-exception v0

    .line 10
    throw v0

    :catch_62
    move-exception v0

    .line 11
    throw v0
.end method
