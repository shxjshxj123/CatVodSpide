.class public Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/convert/Converter<",
        "Lcom/thegrizzlylabs/sardineandroid/model/Property;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/Property;
    .registers 3

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Property;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {p1}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->setProperty(Lorg/w3c/dom/Element;)V

    :cond_12
    return-object v0
.end method

.method public bridge synthetic read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;->read(Lorg/simpleframework/xml/stream/InputNode;)Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/Property;)V
    .registers 3

    # getter for: Lcom/thegrizzlylabs/sardineandroid/model/Property;->property:Lorg/w3c/dom/Element;
    invoke-static {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->access$000(Lcom/thegrizzlylabs/sardineandroid/model/Property;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/util/ElementConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public bridge synthetic write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;->write(Lorg/simpleframework/xml/stream/OutputNode;Lcom/thegrizzlylabs/sardineandroid/model/Property;)V

    return-void
.end method
