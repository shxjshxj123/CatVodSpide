.class public Lcom/thegrizzlylabs/sardineandroid/model/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field protected error:Lcom/thegrizzlylabs/sardineandroid/model/Error;

.field protected href:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field protected location:Lcom/thegrizzlylabs/sardineandroid/model/Location;

.field protected propstat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Propstat;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field

.field protected responsedescription:Ljava/lang/String;

.field protected status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/thegrizzlylabs/sardineandroid/model/Error;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->error:Lcom/thegrizzlylabs/sardineandroid/model/Error;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/thegrizzlylabs/sardineandroid/model/Location;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->location:Lcom/thegrizzlylabs/sardineandroid/model/Location;

    return-object v0
.end method

.method public getPropstat()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Propstat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->propstat:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->propstat:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->propstat:Ljava/util/List;

    return-object v0
.end method

.method public getResponsedescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->responsedescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Lcom/thegrizzlylabs/sardineandroid/model/Error;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->error:Lcom/thegrizzlylabs/sardineandroid/model/Error;

    return-void
.end method

.method public setLocation(Lcom/thegrizzlylabs/sardineandroid/model/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->location:Lcom/thegrizzlylabs/sardineandroid/model/Location;

    return-void
.end method

.method public setResponsedescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->responsedescription:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Response;->status:Ljava/lang/String;

    return-void
.end method
