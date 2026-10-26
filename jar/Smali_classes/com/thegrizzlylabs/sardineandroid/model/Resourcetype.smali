.class public Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/model/EntityWithAnyElement;


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field private any:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field

.field private collection:Lcom/thegrizzlylabs/sardineandroid/model/Collection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private principal:Lcom/thegrizzlylabs/sardineandroid/model/Principal;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAny()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->any:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->any:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->any:Ljava/util/List;

    return-object v0
.end method

.method public getCollection()Lcom/thegrizzlylabs/sardineandroid/model/Collection;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->collection:Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    return-object v0
.end method

.method public getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->principal:Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    return-object v0
.end method

.method public setCollection(Lcom/thegrizzlylabs/sardineandroid/model/Collection;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->collection:Lcom/thegrizzlylabs/sardineandroid/model/Collection;

    return-void
.end method

.method public setPrincipal(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->principal:Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    return-void
.end method
