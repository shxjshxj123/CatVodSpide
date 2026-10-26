.class public Lorg/simpleframework/xml/util/Dictionary;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/simpleframework/xml/util/Entry;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final map:Lorg/simpleframework/xml/util/Dictionary$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Dictionary$Table<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary;->add(Lorg/simpleframework/xml/util/Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/simpleframework/xml/util/Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-interface {p1}, Lorg/simpleframework/xml/util/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
