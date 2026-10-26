.class public final Lcom/github/catvod/spider/merge/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/k0/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Lcom/github/catvod/spider/merge/k0/b;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/reflect/Method;

.field private e:Lcom/github/catvod/spider/merge/l0/a;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/github/catvod/spider/merge/l0/c;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/m0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/m0/c;->f:Ljava/util/Queue;

    iput-boolean p3, p0, Lcom/github/catvod/spider/merge/m0/c;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    goto :goto_1d

    :cond_7
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge/m0/c;->g:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/github/catvod/spider/merge/m0/b;->a:Lcom/github/catvod/spider/merge/m0/b;

    goto :goto_1d

    .line 2
    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->e:Lcom/github/catvod/spider/merge/l0/a;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/github/catvod/spider/merge/l0/a;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/m0/c;->f:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge/l0/a;-><init>(Lcom/github/catvod/spider/merge/m0/c;Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->e:Lcom/github/catvod/spider/merge/l0/a;

    :cond_1b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->e:Lcom/github/catvod/spider/merge/l0/a;

    .line 3
    :goto_1d
    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge/k0/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Z
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/github/catvod/spider/merge/l0/b;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->d:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->c:Ljava/lang/Boolean;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->c:Ljava/lang/Boolean;

    :goto_28
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    instance-of v0, v0, Lcom/github/catvod/spider/merge/m0/b;

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final e(Lcom/github/catvod/spider/merge/l0/b;)V
    .registers 6

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/m0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_6
    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_13} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    const-class v2, Lcom/github/catvod/spider/merge/m0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_1e

    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge/m0/c;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/m0/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/m0/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final f(Lcom/github/catvod/spider/merge/k0/b;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/m0/c;->b:Lcom/github/catvod/spider/merge/k0/b;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/m0/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
