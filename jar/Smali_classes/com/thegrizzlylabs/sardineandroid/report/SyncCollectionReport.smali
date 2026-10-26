.class public Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;
.super Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/report/SardineReport<",
        "Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final limit:Ljava/lang/Integer;

.field private final properties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;"
        }
    .end annotation
.end field

.field private final syncLevel:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

.field private final syncToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;Ljava/util/Set;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->syncToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->syncLevel:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->properties:Ljava/util/Set;

    iput-object p4, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->limit:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;
    .registers 8

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    :try_start_1d
    new-instance v3, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {v3, v2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/net/URISyntaxException; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_11

    :catch_26
    sget-object v3, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->log:Ljava/util/logging/Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Ignore resource with invalid URI %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_11

    :cond_3c
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getSyncToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$Result;

    move-result-object p1

    return-object p1
.end method

.method public toJaxb()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->properties:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/x/a;

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;-><init>()V

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->syncToken:Ljava/lang/String;

    if-nez v2, :cond_2e

    const-string v2, ""

    :cond_2e
    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setSyncToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->syncLevel:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setSyncLevel(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->limit:Ljava/lang/Integer;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5d

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Limit;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Limit;-><init>()V

    iget-object v2, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Limit;->setNresults(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/model/SyncCollection;->setLimit(Lcom/thegrizzlylabs/sardineandroid/model/Limit;)V

    :cond_5d
    return-object v1
.end method
