.class public Lcom/thegrizzlylabs/sardineandroid/DavAce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final denied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final granted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inherited:Ljava/lang/String;

.field private final isprotected:Z

.field private final principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->inherited:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->isprotected:Z

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Ace;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;->getPrivilege()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/SimplePrivilege;

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/simpleframework/xml/Root;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/Root;

    invoke-interface {v2}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_64
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;->getPrivilege()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/SimplePrivilege;

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/simpleframework/xml/Root;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/Root;

    invoke-interface {v2}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_ac
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getInherited()Lcom/thegrizzlylabs/sardineandroid/model/Inherited;

    move-result-object v0

    if-eqz v0, :cond_bb

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getInherited()Lcom/thegrizzlylabs/sardineandroid/model/Inherited;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Inherited;->getHref()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->inherited:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getProtected()Lcom/thegrizzlylabs/sardineandroid/model/Protected;

    move-result-object p1

    if-eqz p1, :cond_c6

    const/4 p1, 0x1

    goto :goto_c7

    :cond_c6
    const/4 p1, 0x0

    :goto_c7
    iput-boolean p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->isprotected:Z

    return-void
.end method

.method private toPrivilege(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Privilege;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;-><init>()V

    const-string v3, "all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/All;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/All;-><init>()V

    :goto_2b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d5

    :cond_30
    const-string v3, "bind"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/Bind;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Bind;-><init>()V

    goto :goto_2b

    :cond_42
    const-string v3, "read"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/Read;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Read;-><init>()V

    goto :goto_2b

    :cond_54
    const-string v3, "read-acl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/ReadAcl;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/ReadAcl;-><init>()V

    goto :goto_2b

    :cond_66
    const-string v3, "read-current-user-privilege-set"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/ReadCurrentUserPrivilegeSet;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/ReadCurrentUserPrivilegeSet;-><init>()V

    goto :goto_2b

    :cond_78
    const-string v3, "unbind"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/UnBind;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/UnBind;-><init>()V

    goto :goto_2b

    :cond_8a
    const-string v3, "unlock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/Unlock;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Unlock;-><init>()V

    goto :goto_2b

    :cond_9c
    const-string v3, "write"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/Write;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Write;-><init>()V

    goto/16 :goto_2b

    :cond_af
    const-string v3, "write-content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/WriteContent;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/WriteContent;-><init>()V

    goto/16 :goto_2b

    :cond_c2
    const-string v3, "write-properties"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Privilege;->getContent()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/model/WriteProperties;

    invoke-direct {v3}, Lcom/thegrizzlylabs/sardineandroid/model/WriteProperties;-><init>()V

    goto/16 :goto_2b

    :goto_d5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_da
    return-object v0
.end method


# virtual methods
.method public getDenied()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    return-object v0
.end method

.method public getGranted()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    return-object v0
.end method

.method public getInherited()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->inherited:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipal()Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    return-object v0
.end method

.method public isProtected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->isprotected:Z

    return v0
.end method

.method public toModel()Lcom/thegrizzlylabs/sardineandroid/model/Ace;
    .registers 5

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Ace;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;-><init>()V

    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/DavAce$1;->$SwitchMap$com$thegrizzlylabs$sardineandroid$DavPrincipal$PrincipalType:[I

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getPrincipalType()Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_99

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7f

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    goto/16 :goto_a2

    :cond_23
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/All;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/All;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setAll(Lcom/thegrizzlylabs/sardineandroid/model/All;)V

    goto :goto_a2

    :cond_3a
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authenticated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setAuthenticated(Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;)V

    goto :goto_a2

    :cond_51
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unauthenticated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setUnauthenticated(Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;)V

    goto :goto_a2

    :cond_68
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "self"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Self;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Self;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setSelf(Lcom/thegrizzlylabs/sardineandroid/model/Self;)V

    goto :goto_a2

    :cond_7f
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Property;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setProperty(Lcom/thegrizzlylabs/sardineandroid/model/Property;)V

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getProperty()Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object v2

    iget-object v3, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getProperty()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v3

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->setProperty(Lorg/w3c/dom/Element;)V

    goto :goto_a2

    :cond_99
    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->principal:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->setHref(Ljava/lang/String;)V

    :cond_a2
    :goto_a2
    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setPrincipal(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    if-eqz v1, :cond_c4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c4

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setGrant(Lcom/thegrizzlylabs/sardineandroid/model/Grant;)V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getGrant()Lcom/thegrizzlylabs/sardineandroid/model/Grant;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->granted:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->toPrivilege(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Grant;->setPrivilege(Ljava/util/List;)V

    :cond_c4
    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    if-eqz v1, :cond_e3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e3

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->setDeny(Lcom/thegrizzlylabs/sardineandroid/model/Deny;)V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Ace;->getDeny()Lcom/thegrizzlylabs/sardineandroid/model/Deny;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/DavAce;->denied:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->toPrivilege(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Deny;->setPrivilege(Ljava/util/List;)V

    :cond_e3
    return-object v0
.end method
