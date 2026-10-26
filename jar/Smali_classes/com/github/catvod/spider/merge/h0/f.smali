.class final Lcom/github/catvod/spider/merge/h0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/V/P;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/github/catvod/spider/merge/V/g;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/github/catvod/spider/merge/V/g;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge/h0/f;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/github/catvod/spider/merge/h0/f;->b:Lcom/github/catvod/spider/merge/V/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 3

    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge/T/s;I)V
    .registers 10

    instance-of v0, p1, Lcom/github/catvod/spider/merge/T/v;

    if-eqz v0, :cond_7c

    check-cast p1, Lcom/github/catvod/spider/merge/T/v;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/s;->z()Lcom/github/catvod/spider/merge/T/s;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/T/s;->hashCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/h0/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3b

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3b
    iget-object v2, p0, Lcom/github/catvod/spider/merge/h0/f;->a:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/github/catvod/spider/merge/T/m;

    const-string v3, "JX_TEXT"

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge/T/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/v;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/T/m;->v0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    const-string v3, "EL_DEPTH"

    .line 1
    invoke-virtual {v2, v3, p2}, Lcom/github/catvod/spider/merge/T/s;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/s;

    .line 2
    :try_start_53
    const-class p2, Lcom/github/catvod/spider/merge/T/s;

    const-string v3, "setParentNode"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lcom/github/catvod/spider/merge/T/s;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/T/s;->z()Lcom/github/catvod/spider/merge/T/s;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_70} :catch_70

    :catch_70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Lcom/github/catvod/spider/merge/n/a;->i(Lcom/github/catvod/spider/merge/T/m;I)V

    iget-object p1, p0, Lcom/github/catvod/spider/merge/h0/f;->b:Lcom/github/catvod/spider/merge/V/g;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7c
    return-void
.end method
