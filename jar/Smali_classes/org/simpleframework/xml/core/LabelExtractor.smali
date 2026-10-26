.class Lorg/simpleframework/xml/core/LabelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/LabelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method private getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .registers 5

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_19

    aget-object v0, v0, v2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/annotation/Annotation;

    check-cast p1, [Ljava/lang/annotation/Annotation;

    return-object p1

    :cond_19
    new-array p1, v2, [Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method private getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    .registers 5

    instance-of v0, p1, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_e

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementLabel;

    const-class v1, Lorg/simpleframework/xml/Element;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_e
    instance-of v0, p1, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1c

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementListLabel;

    const-class v1, Lorg/simpleframework/xml/ElementList;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_1c
    instance-of v0, p1, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementArrayLabel;

    const-class v1, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_2a
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_38

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementMapLabel;

    const-class v1, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_38
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_48

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementUnionLabel;

    const-class v1, Lorg/simpleframework/xml/ElementUnion;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {p1, v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_48
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_58

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementListUnionLabel;

    const-class v1, Lorg/simpleframework/xml/ElementListUnion;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {p1, v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_58
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_68

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    const-class v1, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {p1, v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_68
    instance-of v0, p1, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_76

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/AttributeLabel;

    const-class v1, Lorg/simpleframework/xml/Attribute;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_76
    instance-of v0, p1, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_84

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/VersionLabel;

    const-class v1, Lorg/simpleframework/xml/Version;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_84
    instance-of v0, p1, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_92

    new-instance p1, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v0, Lorg/simpleframework/xml/core/TextLabel;

    const-class v1, Lorg/simpleframework/xml/Text;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    :cond_92
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Annotation %s not supported"

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .registers 3

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/LabelExtractor;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_12
    return-object p1
.end method

.method private getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/LabelGroup;

    if-nez v0, :cond_16

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {p2, p3, p1}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-object p1

    :cond_16
    return-object v0
.end method

.method private getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelKey;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method private getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 10

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p3, :cond_1e

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    iget-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object p1, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1b
    check-cast p1, Lorg/simpleframework/xml/core/Label;

    return-object p1

    :cond_1e
    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    aput-object p2, p3, v2

    iget-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object p1, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1b
.end method

.method private getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .registers 4

    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    return-object p1

    :cond_12
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    return-object p1
.end method

.method private getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance p2, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {p2, p1}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object p1, p2

    :cond_d
    new-instance p2, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {p2, p1}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Lorg/simpleframework/xml/core/Label;)V

    return-object p2
.end method

.method private getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .registers 9

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2a

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    invoke-direct {p0, p1, p2, v4}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v4

    if-eqz v4, :cond_1e

    new-instance v5, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v5, v4}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object v4, v5

    :cond_1e
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    new-instance p1, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {p1, v1}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelGroup;->getPrimary()Lorg/simpleframework/xml/core/Label;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getList(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Contact;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelGroup;->getList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
