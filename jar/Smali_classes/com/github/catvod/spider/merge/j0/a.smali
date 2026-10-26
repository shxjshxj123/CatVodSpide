.class public final Lcom/github/catvod/spider/merge/j0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/e0/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/e0/d;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge/e0/c;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/github/catvod/spider/merge/k0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/j0/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/j0/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/j0/a;->c:Ljava/util/HashMap;

    const-class v0, Lcom/github/catvod/spider/merge/j0/a;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/k0/c;->d(Ljava/lang/Class;)Lcom/github/catvod/spider/merge/k0/b;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge/j0/a;->d:Lcom/github/catvod/spider/merge/k0/b;

    const/16 v1, 0xe

    new-array v2, v1, [Ljava/lang/Class;

    const-class v0, Lcom/github/catvod/spider/merge/f0/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-class v0, Lcom/github/catvod/spider/merge/f0/b;

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-class v0, Lcom/github/catvod/spider/merge/f0/c;

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const-class v0, Lcom/github/catvod/spider/merge/f0/d;

    const/4 v6, 0x3

    aput-object v0, v2, v6

    const-class v0, Lcom/github/catvod/spider/merge/f0/e;

    const/4 v7, 0x4

    aput-object v0, v2, v7

    const-class v0, Lcom/github/catvod/spider/merge/f0/f;

    const/4 v8, 0x5

    aput-object v0, v2, v8

    const-class v0, Lcom/github/catvod/spider/merge/f0/g;

    const/4 v9, 0x6

    aput-object v0, v2, v9

    const-class v0, Lcom/github/catvod/spider/merge/f0/h;

    const/4 v10, 0x7

    aput-object v0, v2, v10

    const-class v0, Lcom/github/catvod/spider/merge/f0/i;

    const/16 v11, 0x8

    aput-object v0, v2, v11

    const-class v0, Lcom/github/catvod/spider/merge/f0/j;

    const/16 v12, 0x9

    aput-object v0, v2, v12

    const-class v0, Lcom/github/catvod/spider/merge/f0/k;

    const/16 v13, 0xa

    aput-object v0, v2, v13

    const-class v0, Lcom/github/catvod/spider/merge/f0/l;

    const/16 v14, 0xb

    aput-object v0, v2, v14

    const-class v0, Lcom/github/catvod/spider/merge/f0/m;

    const/16 v15, 0xc

    aput-object v0, v2, v15

    const-class v0, Lcom/github/catvod/spider/merge/f0/n;

    const/16 v16, 0xd

    aput-object v0, v2, v16

    const/4 v15, 0x0

    :goto_6e
    if-ge v15, v1, :cond_93

    .line 1
    aget-object v0, v2, v15

    .line 2
    :try_start_72
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/a;

    sget-object v1, Lcom/github/catvod/spider/merge/j0/a;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/e0/a;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_82

    goto :goto_8c

    :catch_82
    move-exception v0

    sget-object v1, Lcom/github/catvod/spider/merge/j0/a;->d:Lcom/github/catvod/spider/merge/k0/b;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/N/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14, v0}, Lcom/github/catvod/spider/merge/k0/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8c
    add-int/lit8 v15, v15, 0x1

    const/16 v1, 0xe

    const/16 v14, 0xb

    goto :goto_6e

    :cond_93
    const/16 v1, 0x11

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    const-class v0, Lcom/github/catvod/spider/merge/g0/a;

    aput-object v0, v2, v3

    const-class v0, Lcom/github/catvod/spider/merge/g0/b;

    aput-object v0, v2, v4

    const-class v0, Lcom/github/catvod/spider/merge/g0/c;

    aput-object v0, v2, v5

    const-class v0, Lcom/github/catvod/spider/merge/g0/d;

    aput-object v0, v2, v6

    const-class v0, Lcom/github/catvod/spider/merge/g0/f;

    aput-object v0, v2, v7

    const-class v0, Lcom/github/catvod/spider/merge/g0/g;

    aput-object v0, v2, v8

    const-class v0, Lcom/github/catvod/spider/merge/g0/h;

    aput-object v0, v2, v9

    const-class v0, Lcom/github/catvod/spider/merge/g0/i;

    aput-object v0, v2, v10

    const-class v0, Lcom/github/catvod/spider/merge/g0/j;

    aput-object v0, v2, v11

    const-class v0, Lcom/github/catvod/spider/merge/g0/k;

    aput-object v0, v2, v12

    const-class v0, Lcom/github/catvod/spider/merge/g0/l;

    aput-object v0, v2, v13

    const-class v0, Lcom/github/catvod/spider/merge/g0/n;

    const/16 v10, 0xb

    aput-object v0, v2, v10

    const-class v0, Lcom/github/catvod/spider/merge/g0/p;

    const/16 v10, 0xc

    aput-object v0, v2, v10

    const-class v0, Lcom/github/catvod/spider/merge/g0/e;

    aput-object v0, v2, v16

    const-class v0, Lcom/github/catvod/spider/merge/g0/m;

    const/16 v10, 0xe

    aput-object v0, v2, v10

    const/16 v0, 0xf

    const-class v10, Lcom/github/catvod/spider/merge/g0/o;

    aput-object v10, v2, v0

    const/16 v0, 0x10

    const-class v10, Lcom/github/catvod/spider/merge/g0/r;

    aput-object v10, v2, v0

    const/4 v10, 0x0

    :goto_e6
    if-ge v10, v1, :cond_107

    .line 4
    aget-object v0, v2, v10

    .line 5
    :try_start_ea
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/c;

    sget-object v11, Lcom/github/catvod/spider/merge/j0/a;->c:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/e0/c;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f9} :catch_fa

    goto :goto_104

    :catch_fa
    move-exception v0

    sget-object v11, Lcom/github/catvod/spider/merge/j0/a;->d:Lcom/github/catvod/spider/merge/k0/b;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/N/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Lcom/github/catvod/spider/merge/k0/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_104
    add-int/lit8 v10, v10, 0x1

    goto :goto_e6

    :cond_107
    new-array v1, v9, [Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/github/catvod/spider/merge/h0/a;

    aput-object v0, v1, v3

    const-class v0, Lcom/github/catvod/spider/merge/h0/b;

    aput-object v0, v1, v4

    const-class v0, Lcom/github/catvod/spider/merge/h0/c;

    aput-object v0, v1, v5

    const-class v0, Lcom/github/catvod/spider/merge/h0/d;

    aput-object v0, v1, v6

    const-class v0, Lcom/github/catvod/spider/merge/h0/e;

    aput-object v0, v1, v7

    const-class v0, Lcom/github/catvod/spider/merge/h0/g;

    aput-object v0, v1, v8

    :goto_121
    if-ge v3, v9, :cond_142

    .line 7
    aget-object v0, v1, v3

    .line 8
    :try_start_125
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/d;

    sget-object v2, Lcom/github/catvod/spider/merge/j0/a;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/e0/d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_134} :catch_135

    goto :goto_13f

    :catch_135
    move-exception v0

    sget-object v2, Lcom/github/catvod/spider/merge/j0/a;->d:Lcom/github/catvod/spider/merge/k0/b;

    invoke-static {v0}, Lcom/github/catvod/spider/merge/N/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lcom/github/catvod/spider/merge/k0/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13f
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    :cond_142
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/c;
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge/j0/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/c;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lcom/github/catvod/spider/merge/i0/c;

    const-string v1, "not support function: "

    .line 1
    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/i0/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/d;
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge/j0/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/d;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lcom/github/catvod/spider/merge/i0/c;

    const-string v1, "not support nodeTest: "

    .line 1
    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/i0/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/github/catvod/spider/merge/e0/a;
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge/j0/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/e0/a;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lcom/github/catvod/spider/merge/i0/b;

    const-string v1, "not support axis: "

    .line 1
    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/i0/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
