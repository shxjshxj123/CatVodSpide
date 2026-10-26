.class public Lcom/thegrizzlylabs/sardineandroid/DavAcl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavAce;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Ljava/lang/String;

.field private final owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->getOwner(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->owner:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->getGroup(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->group:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->getAces(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->aces:Ljava/util/List;

    return-void
.end method

.method private getAces(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Response;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavAce;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAcl()Lcom/thegrizzlylabs/sardineandroid/model/Acl;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;->getAce()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;->getAce()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/Ace;

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/DavAce;

    invoke-direct {v3, v2}, Lcom/thegrizzlylabs/sardineandroid/DavAce;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Ace;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4e
    return-object v0
.end method

.method private getGroup(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getGroup()Lcom/thegrizzlylabs/sardineandroid/model/Group;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Group;->getHref()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Group;->getHref()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    return-object v1
.end method

.method private getOwner(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getOwner()Lcom/thegrizzlylabs/sardineandroid/model/Owner;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Owner;->getUnauthenticated()Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;

    move-result-object v2

    if-eqz v2, :cond_2f

    const-string p1, "unauthenticated"

    return-object p1

    :cond_2f
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Owner;->getHref()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Owner;->getHref()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    return-object v1
.end method


# virtual methods
.method public getAces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavAce;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->aces:Ljava/util/List;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;->owner:Ljava/lang/String;

    return-object v0
.end method
