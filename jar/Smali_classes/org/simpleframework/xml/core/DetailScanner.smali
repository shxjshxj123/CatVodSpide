.class Lorg/simpleframework/xml/core/DetailScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Detail;


# instance fields
.field private access:Lorg/simpleframework/xml/DefaultType;

.field private declaration:Lorg/simpleframework/xml/NamespaceList;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation
.end field

.field private labels:[Ljava/lang/annotation/Annotation;

.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private namespace:Lorg/simpleframework/xml/Namespace;

.field private order:Lorg/simpleframework/xml/Order;

.field private override:Lorg/simpleframework/xml/DefaultType;

.field private required:Z

.field private root:Lorg/simpleframework/xml/Root;

.field private strict:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private access(Ljava/lang/annotation/Annotation;)V
    .registers 3

    if-eqz p1, :cond_10

    check-cast p1, Lorg/simpleframework/xml/Default;

    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->value()Lorg/simpleframework/xml/DefaultType;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    :cond_10
    return-void
.end method

.method private extract(Ljava/lang/Class;)V
    .registers 6

    iget-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/simpleframework/xml/Namespace;

    if-eqz v3, :cond_f

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->namespace(Ljava/lang/annotation/Annotation;)V

    :cond_f
    instance-of v3, v2, Lorg/simpleframework/xml/NamespaceList;

    if-eqz v3, :cond_16

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->scope(Ljava/lang/annotation/Annotation;)V

    :cond_16
    instance-of v3, v2, Lorg/simpleframework/xml/Root;

    if-eqz v3, :cond_1d

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->root(Ljava/lang/annotation/Annotation;)V

    :cond_1d
    instance-of v3, v2, Lorg/simpleframework/xml/Order;

    if-eqz v3, :cond_24

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->order(Ljava/lang/annotation/Annotation;)V

    :cond_24
    instance-of v3, v2, Lorg/simpleframework/xml/Default;

    if-eqz v3, :cond_2b

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/DetailScanner;->access(Ljava/lang/annotation/Annotation;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2e
    return-void
.end method

.method private fields(Ljava/lang/Class;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    new-instance v3, Lorg/simpleframework/xml/core/FieldDetail;

    invoke-direct {v3, v2}, Lorg/simpleframework/xml/core/FieldDetail;-><init>(Ljava/lang/reflect/Field;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private methods(Ljava/lang/Class;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    new-instance v3, Lorg/simpleframework/xml/core/MethodDetail;

    invoke-direct {v3, v2}, Lorg/simpleframework/xml/core/MethodDetail;-><init>(Ljava/lang/reflect/Method;)V

    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method private namespace(Ljava/lang/annotation/Annotation;)V
    .registers 2

    if-eqz p1, :cond_6

    check-cast p1, Lorg/simpleframework/xml/Namespace;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    :cond_6
    return-void
.end method

.method private order(Ljava/lang/annotation/Annotation;)V
    .registers 2

    if-eqz p1, :cond_6

    check-cast p1, Lorg/simpleframework/xml/Order;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    :cond_6
    return-void
.end method

.method private root(Ljava/lang/annotation/Annotation;)V
    .registers 5

    if-eqz p1, :cond_22

    check-cast p1, Lorg/simpleframework/xml/Root;

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/DetailScanner;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18
    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->strict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    iput-object v1, p0, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    :cond_22
    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->methods(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->fields(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->extract(Ljava/lang/Class;)V

    return-void
.end method

.method private scope(Ljava/lang/annotation/Annotation;)V
    .registers 2

    if-eqz p1, :cond_6

    check-cast p1, Lorg/simpleframework/xml/NamespaceList;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    :cond_6
    return-void
.end method


# virtual methods
.method public getAccess()Lorg/simpleframework/xml/DefaultType;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/simpleframework/xml/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    return-object v0
.end method

.method public getNamespaceList()Lorg/simpleframework/xml/NamespaceList;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    return-object v0
.end method

.method public getOverride()Lorg/simpleframework/xml/DefaultType;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public getRoot()Lorg/simpleframework/xml/Root;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    return-object v0
.end method

.method public getSuper()Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isInstantiable()Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isPrimitive()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    return v0
.end method

.method public isStrict()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
