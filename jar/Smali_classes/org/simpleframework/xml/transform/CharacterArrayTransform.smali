.class Lorg/simpleframework/xml/transform/CharacterArrayTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# instance fields
.field private final entry:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    return-void
.end method

.method private read([CI)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p2, :cond_15

    aget-char v2, p1, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method private write(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_14

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    iget-object v1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_c

    return-object p1

    :cond_c
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->read([CI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->entry:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_12

    check-cast p1, [C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_12
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/CharacterArrayTransform;->write(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
