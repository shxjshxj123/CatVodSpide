.class public Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/convert/Converter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private entityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Serializer;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/Serializer;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    return-void
.end method

.method private getEntityFields()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    const-class v5, Lorg/simpleframework/xml/Element;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/Element;

    if-eqz v5, :cond_33

    invoke-interface {v5}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    :cond_2c
    invoke-interface {v5}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v5

    :goto_30
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_36
    return-object v0
.end method

.method private getGetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    const-string v2, "get"

    .line 1
    invoke-static {v2, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private getSetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    const-string v4, "set"

    .line 1
    invoke-static {v4, v0}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method private skipChildrenOfNode(Lorg/simpleframework/xml/stream/InputNode;)V
    .registers 3

    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getEntityFields()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->entityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    invoke-interface {v1}, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;->getAny()Ljava/util/List;

    move-result-object v2

    :goto_10
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-direct {p0, v4}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getSetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v8, v4, v3}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_42
    invoke-interface {v3}, Lorg/simpleframework/xml/stream/InputNode;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/InputNode;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_5a
    invoke-direct {p0, v3}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->skipChildrenOfNode(Lorg/simpleframework/xml/stream/InputNode;)V

    goto :goto_10

    :cond_5e
    return-object v1
.end method

.method public bridge synthetic read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            "TT;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;->getAny()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-static {p1, v1}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lorg/w3c/dom/Element;)V

    goto :goto_8

    :cond_18
    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getEntityFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-direct {p0, v3}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->getGetterForField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    goto :goto_24

    :cond_44
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_57

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    const-string v4, "DAV:"

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    goto :goto_24

    :cond_57
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v2, v3, p1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_24

    :cond_5d
    return-void
.end method

.method public bridge synthetic write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/util/EntityWithAnyElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;)V

    return-void
.end method
