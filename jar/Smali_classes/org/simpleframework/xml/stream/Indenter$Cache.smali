.class Lorg/simpleframework/xml/stream/Indenter$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private list:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void
.end method

.method private resize(I)V
    .registers 5

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_8

    aget-object p1, v0, p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public set(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_a

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->resize(I)V

    :cond_a
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-le p1, v0, :cond_10

    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    return v0
.end method
