.class Lorg/simpleframework/xml/core/ConstructorScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private primary:Lorg/simpleframework/xml/core/Signature;

.field private registry:Lorg/simpleframework/xml/core/ParameterMap;

.field private signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    return-void
.end method

.method private scan(Ljava/lang/reflect/Constructor;)V
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->isValid()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->getSignatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v1

    if-nez v1, :cond_2b

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    :cond_2b
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_31
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .registers 7

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    array-length v1, v0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/reflect/Constructor;)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return-void

    :cond_1d
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Can not construct inner %s"

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b

    :goto_2a
    throw v0

    :goto_2b
    goto :goto_2a
.end method


# virtual methods
.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
