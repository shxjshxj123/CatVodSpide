.class final Lcom/github/catvod/spider/merge/B/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "throwableMethods"

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    const-string v5, "it"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_42

    aget-object v7, v1, v4

    invoke-static {v7, v5}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "addSuppressed"

    invoke-static {v8, v9}, Lcom/github/catvod/spider/merge/D/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3a

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const-string v10, "it.parameterTypes"

    invoke-static {v8, v10}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v10, v8

    if-ne v10, v9, :cond_33

    aget-object v6, v8, v3

    .line 2
    :cond_33
    invoke-static {v6, v0}, Lcom/github/catvod/spider/merge/D/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v9, 0x0

    :goto_3b
    if-eqz v9, :cond_3f

    move-object v6, v7

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_42
    :goto_42
    sput-object v6, Lcom/github/catvod/spider/merge/B/a;->a:Ljava/lang/reflect/Method;

    array-length v0, v1

    :goto_45
    if-ge v3, v0, :cond_5c

    aget-object v2, v1, v3

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getSuppressed"

    invoke-static {v2, v4}, Lcom/github/catvod/spider/merge/D/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_5c

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_5c
    :goto_5c
    return-void
.end method
