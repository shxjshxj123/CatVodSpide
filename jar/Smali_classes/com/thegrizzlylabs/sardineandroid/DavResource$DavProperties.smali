.class Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final contentLanguage:Ljava/lang/String;

.field final contentLength:Ljava/lang/Long;

.field final contentType:Ljava/lang/String;

.field final creation:Ljava/util/Date;

.field final customProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/github/catvod/spider/merge/x/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final displayName:Ljava/lang/String;

.field final etag:Ljava/lang/String;

.field final lockDiscovery:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

.field final modified:Ljava/util/Date;

.field final resourceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;"
        }
    .end annotation
.end field

.field final supportedLock:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

.field final synthetic this$0:Lcom/thegrizzlylabs/sardineandroid/DavResource;


# direct methods
.method constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .registers 5

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->this$0:Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getCreationDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$000(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->creation:Ljava/util/Date;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getModifiedDate(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$100(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->modified:Ljava/util/Date;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentType(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$200(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentType:Ljava/lang/String;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLength(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$300(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentLength:Ljava/lang/Long;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getEtag(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$400(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->etag:Ljava/lang/String;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getDisplayName(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$500(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->displayName:Ljava/lang/String;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getResourceTypes(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$600(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->resourceTypes:Ljava/util/List;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getContentLanguage(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$700(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentLanguage:Ljava/lang/String;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getCustomProps(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$800(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->customProps:Ljava/util/Map;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getLockDiscovery(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$900(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->lockDiscovery:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    # invokes: Lcom/thegrizzlylabs/sardineandroid/DavResource;->getSupportedLock(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->access$1000(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->supportedLock:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    return-void
.end method

.method constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/github/catvod/spider/merge/x/a;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->this$0:Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->creation:Ljava/util/Date;

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->modified:Ljava/util/Date;

    iput-object p4, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentType:Ljava/lang/String;

    iput-object p5, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentLength:Ljava/lang/Long;

    iput-object p6, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->etag:Ljava/lang/String;

    iput-object p7, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->displayName:Ljava/lang/String;

    iput-object p8, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->resourceTypes:Ljava/util/List;

    iput-object p9, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->contentLanguage:Ljava/lang/String;

    iput-object p11, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->customProps:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->lockDiscovery:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$DavProperties;->supportedLock:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    return-void
.end method
