.class public Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_ALL:Ljava/lang/String; = "all"

.field public static final KEY_AUTHENTICATED:Ljava/lang/String; = "authenticated"

.field public static final KEY_SELF:Ljava/lang/String; = "self"

.field public static final KEY_UNAUTHENTICATED:Ljava/lang/String; = "unauthenticated"


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

.field private final property:Lcom/github/catvod/spider/merge/x/a;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Lcom/github/catvod/spider/merge/x/a;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;-><init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Ljava/lang/String;Lcom/github/catvod/spider/merge/x/a;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Ljava/lang/String;Lcom/github/catvod/spider/merge/x/a;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_12

    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    if-eq p1, v0, :cond_a

    goto :goto_12

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Principal type property can\'t have a string value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_12
    if-eqz p3, :cond_35

    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    if-ne p1, v0, :cond_19

    goto :goto_35

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Principal type "

    .line 1
    invoke-static {p3}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " property is not allowed to have a QName property"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_35
    :goto_35
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->property:Lcom/github/catvod/spider/merge/x/a;

    iput-object p4, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;-><init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Ljava/lang/String;Lcom/github/catvod/spider/merge/x/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Principal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getHref()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->HREF:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getHref()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    :goto_16
    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->property:Lcom/github/catvod/spider/merge/x/a;

    goto/16 :goto_8a

    :cond_1a
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getProperty()Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->PROPERTY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    new-instance v0, Lcom/github/catvod/spider/merge/x/a;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getProperty()Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->getProperty()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getProperty()Lcom/thegrizzlylabs/sardineandroid/model/Property;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Property;->getProperty()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lcom/github/catvod/spider/merge/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 7
    :cond_46
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getAll()Lcom/thegrizzlylabs/sardineandroid/model/All;

    move-result-object v1

    if-nez v1, :cond_64

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getAuthenticated()Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;

    move-result-object v1

    if-nez v1, :cond_64

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getUnauthenticated()Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;

    move-result-object v1

    if-nez v1, :cond_64

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getSelf()Lcom/thegrizzlylabs/sardineandroid/model/Self;

    move-result-object v1

    if-eqz v1, :cond_5f

    goto :goto_64

    :cond_5f
    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    goto :goto_16

    :cond_64
    :goto_64
    sget-object v1, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->KEY:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->property:Lcom/github/catvod/spider/merge/x/a;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getAll()Lcom/thegrizzlylabs/sardineandroid/model/All;

    move-result-object v0

    if-eqz v0, :cond_75

    const-string p1, "all"

    :goto_72
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    goto :goto_8a

    :cond_75
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getAuthenticated()Lcom/thegrizzlylabs/sardineandroid/model/Authenticated;

    move-result-object v0

    if-eqz v0, :cond_7e

    const-string p1, "authenticated"

    goto :goto_72

    :cond_7e
    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Principal;->getUnauthenticated()Lcom/thegrizzlylabs/sardineandroid/model/Unauthenticated;

    move-result-object p1

    if-eqz p1, :cond_87

    const-string p1, "unauthenticated"

    goto :goto_72

    :cond_87
    const-string p1, "self"

    goto :goto_72

    :goto_8a
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalType()Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    return-object v0
.end method

.method public getProperty()Lcom/github/catvod/spider/merge/x/a;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->property:Lcom/github/catvod/spider/merge/x/a;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[principalType="

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->principalType:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->property:Lcom/github/catvod/spider/merge/x/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
