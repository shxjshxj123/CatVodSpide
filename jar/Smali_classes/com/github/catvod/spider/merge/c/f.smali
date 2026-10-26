.class public final Lcom/github/catvod/spider/merge/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format"
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parse"
    .end annotation
.end field

.field private i:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jx"
    .end annotation
.end field

.field private j:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private k:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pagecount"
    .end annotation
.end field

.field private l:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/catvod/spider/merge/c/i;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/c;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->a:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/c/f;->c:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->a:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/List;Ljava/util/List;Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->a:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    if-nez p2, :cond_c

    goto :goto_26

    .line 4
    :cond_c
    new-instance p0, Lcom/github/catvod/spider/merge/c/e;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/c/e;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->c:Ljava/util/LinkedHashMap;

    .line 5
    :goto_26
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/List;Ljava/util/List;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/c;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->a:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    .line 4
    iput-object p2, v0, Lcom/github/catvod/spider/merge/c/f;->c:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->a:Ljava/util/List;

    .line 3
    iput-object p1, v0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    if-nez p2, :cond_c

    goto :goto_26

    .line 4
    :cond_c
    new-instance p0, Lcom/github/catvod/spider/merge/c/d;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/c/d;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    iput-object p0, v0, Lcom/github/catvod/spider/merge/c/f;->c:Ljava/util/LinkedHashMap;

    .line 5
    :goto_26
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    const-string v0, "application/dash+xml"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/c/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/catvod/spider/merge/c/f;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/c/f;->i:I

    return-object p0
.end method

.method public final e()Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    const-string v0, "application/x-mpegURL"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/c/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/github/catvod/spider/merge/c/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final g(IIII)Lcom/github/catvod/spider/merge/c/f;
    .registers 6

    const v0, 0x7fffffff

    if-lez p1, :cond_6

    goto :goto_9

    :cond_6
    const p1, 0x7fffffff

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->j:Ljava/lang/Integer;

    if-lez p3, :cond_12

    goto :goto_15

    :cond_12
    const p3, 0x7fffffff

    :goto_15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->l:Ljava/lang/Integer;

    if-lez p4, :cond_1e

    goto :goto_21

    :cond_1e
    const p4, 0x7fffffff

    :goto_21
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->m:Ljava/lang/Integer;

    if-lez p2, :cond_2a

    goto :goto_2d

    :cond_2a
    const p2, 0x7fffffff

    :goto_2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h()Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/c/f;->h:I

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/g;",
            ">;)",
            "Lcom/github/catvod/spider/merge/c/f;"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->g:Ljava/util/List;

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final r(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/catvod/spider/merge/c/f;"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;)",
            "Lcom/github/catvod/spider/merge/c/f;"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/catvod/spider/merge/c/f;->b:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
