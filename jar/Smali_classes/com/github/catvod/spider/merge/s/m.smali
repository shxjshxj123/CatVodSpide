.class final Lcom/github/catvod/spider/merge/s/m;
.super Lcom/github/catvod/spider/merge/s/a;
.source "SourceFile"


# static fields
.field static final a:Lsun/misc/Unsafe;

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field static final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/github/catvod/spider/merge/s/n;

    :try_start_2
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    :try_start_7
    new-instance v1, Lcom/github/catvod/spider/merge/s/l;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/s/l;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_12
    .catch Ljava/security/PrivilegedActionException; {:try_start_7 .. :try_end_12} :catch_6a

    :goto_12
    :try_start_12
    const-class v2, Lcom/github/catvod/spider/merge/s/o;

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/github/catvod/spider/merge/s/m;->c:J

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/github/catvod/spider/merge/s/m;->b:J

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/github/catvod/spider/merge/s/m;->d:J

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/github/catvod/spider/merge/s/m;->e:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/github/catvod/spider/merge/s/m;->f:J

    sput-object v1, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    sget v1, Lcom/github/catvod/spider/merge/o/t;->b:I

    .line 1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_67

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_64

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_64
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_67
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_6a
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/s/a;-><init>(Lcom/github/catvod/spider/merge/s/W;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/e;Lcom/github/catvod/spider/merge/s/e;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/e;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/github/catvod/spider/merge/s/m;->b:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge/s/k;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final b(Lcom/github/catvod/spider/merge/s/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/github/catvod/spider/merge/s/m;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge/s/k;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/n;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/github/catvod/spider/merge/s/m;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge/s/k;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/e;",
            ")",
            "Lcom/github/catvod/spider/merge/s/e;"
        }
    .end annotation

    sget-object v6, Lcom/github/catvod/spider/merge/s/e;->d:Lcom/github/catvod/spider/merge/s/e;

    :cond_2
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->f(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/e;

    move-result-object v7

    if-ne v6, v7, :cond_9

    return-object v7

    :cond_9
    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/github/catvod/spider/merge/s/m;->b:J

    move-object v1, p1

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge/s/k;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v7
.end method

.method final g(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/s/o<",
            "*>;",
            "Lcom/github/catvod/spider/merge/s/n;",
            ")",
            "Lcom/github/catvod/spider/merge/s/n;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge/s/n;->c:Lcom/github/catvod/spider/merge/s/n;

    :cond_2
    invoke-static {p1}, Lcom/github/catvod/spider/merge/s/o;->h(Lcom/github/catvod/spider/merge/s/o;)Lcom/github/catvod/spider/merge/s/n;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0, p1, v1, v0}, Lcom/github/catvod/spider/merge/s/m;->c(Lcom/github/catvod/spider/merge/s/o;Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1
.end method

.method final h(Lcom/github/catvod/spider/merge/s/n;Lcom/github/catvod/spider/merge/s/n;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/github/catvod/spider/merge/s/m;->f:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final i(Lcom/github/catvod/spider/merge/s/n;Ljava/lang/Thread;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge/s/m;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/github/catvod/spider/merge/s/m;->e:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
