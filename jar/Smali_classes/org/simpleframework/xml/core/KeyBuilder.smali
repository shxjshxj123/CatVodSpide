.class Lorg/simpleframework/xml/core/KeyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final label:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method

.method private getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_d

    return-object v0

    :cond_d
    new-instance v1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/KeyBuilder$Key;-><init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V

    return-object v1
.end method

.method private getKey([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    if-lez v1, :cond_1c

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ATTRIBUTE:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    :goto_a
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ELEMENT:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    goto :goto_a
.end method
